package cn.zwz.asset.controller;

import cn.zwz.asset.entity.AssetsType;
import cn.zwz.asset.entity.Warehousing;
import cn.zwz.asset.service.IAssetsTypeService;
import cn.zwz.asset.service.IWarehousingService;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.log.LogType;
import cn.zwz.basics.log.SystemLog;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.data.utils.ZwzNullUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

/**
 * @author 郑为中
 */
@RestController
@Api(tags = "资产入库单")
@RequestMapping("/zwz/warehousing")
@Transactional
public class WarehousingController {

    @Autowired
    private IWarehousingService iWarehousingService;

    @Autowired
    private IAssetsTypeService iAssetsTypeServicel;

    @SystemLog(about = "查询资产入库单", type = LogType.DATA_CENTER,doType = "ASSET-IN-01")
    @ApiOperation(value = "查询资产入库单")
    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    public Result<IPage<Warehousing>> getByPage(@ModelAttribute Warehousing warehousing, @ModelAttribute PageVo page){
        QueryWrapper<Warehousing> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(warehousing.getNature())) {
            qw.eq("nature", warehousing.getNature());
        }
        if(!ZwzNullUtils.isNull(warehousing.getAssetName())) {
            qw.like("asset_name", warehousing.getAssetName());
        }
        if(!ZwzNullUtils.isNull(warehousing.getInvoice())) {
            qw.like("invoice", warehousing.getInvoice());
        }
        return new ResultUtil<IPage<Warehousing>>().setData(iWarehousingService.page(PageUtil.initMpPage(page),qw));
    }

    @SystemLog(about = "增改资产入库单", type = LogType.DATA_CENTER,doType = "ASSET-IN-02")
    @ApiOperation(value = "增改资产入库单")
    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    public Result<Warehousing> insertOrUpdate(Warehousing warehousing){
        Warehousing oldWarehousing = iWarehousingService.getById(warehousing.getId());
        BigDecimal oldNumber = BigDecimal.ZERO;
        if(oldWarehousing != null){
            oldNumber = oldWarehousing.getNumber() == null ? BigDecimal.ZERO : oldWarehousing.getNumber();
        }
        // 入库,更新库存
        AssetsType assetsType = iAssetsTypeServicel.getById(warehousing.getAssetId());
        if(assetsType != null){
            // number = 现在仓库总数量 + 该入库单现增加数量 - 该入库单原有增加数量
            BigDecimal number = assetsType.getNumber().add(warehousing.getNumber()).subtract(oldNumber);
            assetsType.setNumber(number);
            assetsType.setTotalPrice(assetsType.getUnitPrice().multiply(number));
            // existNumber = 现在仓库存在数量 + 该入库单现增加数量 - 该入库单原有增加数量
            BigDecimal existNumber = assetsType.getExistingNumber().add(warehousing.getNumber()).subtract(oldNumber);
            if(existNumber.compareTo(BigDecimal.ZERO) < 0)  {
                return ResultUtil.error("入库数量大于已出库数量!");
            }
            assetsType.setExistingNumber(existNumber);
            iAssetsTypeServicel.saveOrUpdate(assetsType);
        }
        if(iWarehousingService.saveOrUpdate(warehousing)){
            return new ResultUtil<Warehousing>().setData(warehousing);
        }
        return ResultUtil.error();
    }

    @SystemLog(about = "删除资产入库单", type = LogType.DATA_CENTER,doType = "ASSET-IN-03")
    @ApiOperation(value = "删除资产入库单")
    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            // 删除仓库内的数量
            Warehousing warehousing = iWarehousingService.getById(id);
            if(warehousing != null){
                // 获取入库单的数量
                BigDecimal number = warehousing.getNumber();
                // 获取入库单的资产ID
                String assetId = warehousing.getAssetId();
                AssetsType assetsType = iAssetsTypeServicel.getById(assetId);
                if(assetsType != null){
                    BigDecimal newNumber = assetsType.getNumber().subtract(number);
                    assetsType.setNumber(newNumber.compareTo(BigDecimal.ZERO) < 0 ? BigDecimal.ZERO : newNumber);
                    BigDecimal totalPrice = newNumber.multiply(assetsType.getUnitPrice());
                    assetsType.setTotalPrice(totalPrice.compareTo(BigDecimal.ZERO) < 0 ? BigDecimal.ZERO : totalPrice);
                    BigDecimal existNumber = assetsType.getExistingNumber().subtract(number);
                    if(existNumber.compareTo(BigDecimal.ZERO) < 0) {
                        return ResultUtil.error(assetsType.getAssetName() + "出库数量大于库存,删除失败!");
                    }
                    assetsType.setExistingNumber(existNumber);
                    iAssetsTypeServicel.saveOrUpdate(assetsType);
                }
            }
            iWarehousingService.removeById(id);
        }
        return ResultUtil.success();
    }
}
