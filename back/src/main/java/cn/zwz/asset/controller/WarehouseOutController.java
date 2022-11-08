package cn.zwz.asset.controller;

import cn.hutool.core.date.DateUtil;
import cn.zwz.asset.entity.AssetsType;
import cn.zwz.asset.entity.WarehouseOut;
import cn.zwz.asset.service.IAssetsTypeService;
import cn.zwz.asset.service.IWarehouseOutService;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.log.LogType;
import cn.zwz.basics.log.SystemLog;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.utils.SecurityUtil;
import cn.zwz.data.entity.User;
import cn.zwz.data.utils.ZwzNullUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Objects;

/**
 * @author 郑为中
 */
@RestController
@Api(tags = "资产出库单")
@RequestMapping("/zwz/warehouseOut")
@Transactional
public class WarehouseOutController {

    @Autowired
    private IWarehouseOutService iWarehouseOutService;

    @Autowired
    private IAssetsTypeService iAssetsTypeService;

    @Autowired
    private SecurityUtil securityUtil;

    @SystemLog(about = "查询资产出库单", type = LogType.DATA_CENTER,doType = "ASSET-OUT-01")
    @ApiOperation(value = "查询资产出库单")
    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    public Result<IPage<WarehouseOut>> getByPage(@ModelAttribute WarehouseOut warehouseOut, @ModelAttribute PageVo page){
        QueryWrapper<WarehouseOut> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(warehouseOut.getNature())) {
            qw.eq("nature", warehouseOut.getNature());
        }
        if(!ZwzNullUtils.isNull(warehouseOut.getAssetName())) {
            qw.like("asset_name", warehouseOut.getAssetName());
        }
        if(!ZwzNullUtils.isNull(warehouseOut.getRecipients())) {
            qw.like("recipients", warehouseOut.getRecipients());
        }
        IPage<WarehouseOut> data = iWarehouseOutService.page(PageUtil.initMpPage(page),qw);
        for (WarehouseOut wh : data.getRecords()) {
            AssetsType assetsType = iAssetsTypeService.getById(wh.getAssetId());
            if(assetsType != null) {
                wh.setExistNumber(assetsType.getExistingNumber().add(wh.getNumber()));
            } else {
                wh.setExistNumber(BigDecimal.ZERO);
            }

        }
        return new ResultUtil<IPage<WarehouseOut>>().setData(data);
    }

    @SystemLog(about = "查询我的资产出库单", type = LogType.DATA_CENTER,doType = "ASSET-OUT-02")
    @ApiOperation(value = "查询我的资产出库单")
    @RequestMapping(value = "/getByMyPage", method = RequestMethod.GET)
    public Result<IPage<WarehouseOut>> getByMyPage(@ModelAttribute WarehouseOut warehouseOut, @ModelAttribute PageVo page){
        QueryWrapper<WarehouseOut> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(warehouseOut.getNature())) {
            qw.eq("nature", warehouseOut.getNature());
        }
        if(!ZwzNullUtils.isNull(warehouseOut.getAssetName())) {
            qw.like("asset_name", warehouseOut.getAssetName());
        }
        if(!ZwzNullUtils.isNull(warehouseOut.getRecipients())) {
            qw.like("recipients", warehouseOut.getRecipients());
        }
        qw.eq("recipients_id",securityUtil.getCurrUser().getId());
        IPage<WarehouseOut> data = iWarehouseOutService.page(PageUtil.initMpPage(page),qw);
        for (WarehouseOut wh : data.getRecords()) {
            AssetsType assetsType = iAssetsTypeService.getById(wh.getAssetId());
            wh.setExistNumber(assetsType.getExistingNumber().add(wh.getNumber()));
        }
        return new ResultUtil<IPage<WarehouseOut>>().setData(data);
    }

    @SystemLog(about = "新增资产出库单", type = LogType.DATA_CENTER,doType = "ASSET-OUT-03")
    @ApiOperation(value = "新增资产出库单")
    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public Result<WarehouseOut> insert(WarehouseOut warehouseOut){
        warehouseOut.setAuditStatus(0);
        warehouseOut.setAuditTime("");
        boolean saveFlag = saveAssetNumber(warehouseOut, false);
        if(!saveFlag) {
            return ResultUtil.error("手慢啦!库存不足!");
        }
        if(ZwzNullUtils.isNull(warehouseOut.getRecipientsId())) {
            User currUser = securityUtil.getCurrUser();
            warehouseOut.setRecipientsId(currUser.getId());
            warehouseOut.setRecipients(currUser.getNickname());
        }
        if(iWarehouseOutService.saveOrUpdate(warehouseOut)){
            return new ResultUtil<WarehouseOut>().setData(warehouseOut);
        }
        return ResultUtil.error();
    }

    @SystemLog(about = "删除资产出库单", type = LogType.DATA_CENTER,doType = "ASSET-OUT-04")
    @ApiOperation(value = "删除资产出库单")
    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            WarehouseOut warehouseOut = iWarehouseOutService.getById(id);
            if(warehouseOut != null){
                AssetsType assetsType = iAssetsTypeService.getById(warehouseOut.getAssetId());
                // 出库单删除之后的库存 = 现有库存 + 出库单的资产数量
                assetsType.setExistingNumber(assetsType.getExistingNumber().add(warehouseOut.getNumber()));
                iAssetsTypeService.saveOrUpdate(assetsType);
            }
            iWarehouseOutService.removeById(id);
        }
        return ResultUtil.success();
    }

    @ApiOperation(value = "审核资产出库单")
    @RequestMapping(value = "/returnFx", method = RequestMethod.GET)
    public Result<Object> returnFx(@RequestParam String id,@RequestParam Integer message){
        WarehouseOut wo = iWarehouseOutService.getById(id);
        if(wo == null) {
            return ResultUtil.error("出库单不存在");
        }
        if(Objects.equals(1,message)) {
            boolean saveFlag = saveAssetNumber(wo,true);
            if(!saveFlag) {
                return ResultUtil.error("手慢啦!库存不足!");
            }
        }
        wo.setAuditStatus(message);
        wo.setAuditTime(DateUtil.now());
        iWarehouseOutService.saveOrUpdate(wo);
        return ResultUtil.success();
    }

    @ApiOperation(value = "资产出库出库处理")
    private boolean saveAssetNumber(WarehouseOut warehouseOut,Boolean saveFlag) {
        WarehouseOut oldWarehouseOut = iWarehouseOutService.getById(warehouseOut.getId());
        BigDecimal oldNumber = BigDecimal.ZERO;
        if(oldWarehouseOut != null){
            oldNumber = oldWarehouseOut.getNumber();
        }
        // outNumber 要出库的数量
        BigDecimal outNumber = warehouseOut.getNumber();
        AssetsType oldAssetsType = iAssetsTypeService.getById(warehouseOut.getAssetId());
        if(oldAssetsType != null){
            // newNumber 出库后还有的数量 = 仓库原本还有的数量 - 出库单的出库数量
            BigDecimal newNumber = oldAssetsType.getExistingNumber().subtract(outNumber);
            if(newNumber.compareTo(BigDecimal.ZERO) > -1){
                if(saveFlag) {
                    oldAssetsType.setExistingNumber(newNumber);
                    iAssetsTypeService.saveOrUpdate(oldAssetsType);
                }
            }else{
                return false;
            }
        }
        return true;
    }
}
