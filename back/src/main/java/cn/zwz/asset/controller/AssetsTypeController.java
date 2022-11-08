package cn.zwz.asset.controller;

import cn.hutool.core.util.StrUtil;
import cn.zwz.asset.entity.AssetsType;
import cn.zwz.asset.service.IAssetsTypeService;
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
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

/**
 * @author 郑为中
 */
@Slf4j
@RestController
@Api(tags = "资产类型")
@RequestMapping("/zwz/assetsType")
@Transactional
public class AssetsTypeController {

    @Autowired
    private IAssetsTypeService iAssetsTypeService;

    @SystemLog(about = "查询资产类型", type = LogType.DATA_CENTER,doType = "ASSETS-01")
    @ApiOperation(value = "查询资产类型")
    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    public Result<IPage<AssetsType>> getByPage(@ModelAttribute AssetsType assetsType, @ModelAttribute PageVo page, @RequestParam(required = false) String natureType) {
        QueryWrapper<AssetsType> qw = new QueryWrapper<AssetsType>();
        if(StrUtil.isNotBlank(natureType)) {
            if(natureType.equals("1")){
                qw.eq("nature", "固定资产");
            }else{
                qw.eq("nature", "耗材");
            }
        }
        if(!ZwzNullUtils.isNull(assetsType.getNature())) {
            qw.eq("nature", assetsType.getNature());
        }
        if(!ZwzNullUtils.isNull(assetsType.getAssetName())) {
            qw.like("asset_name", assetsType.getAssetName());
        }
        return new ResultUtil<IPage<AssetsType>>().setData(iAssetsTypeService.page(PageUtil.initMpPage(page),qw));
    }

    @SystemLog(about = "增改资产类型", type = LogType.DATA_CENTER,doType = "ASSETS-02")
    @ApiOperation(value = "增改资产类型")
    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    public Result<AssetsType> insertOrUpdate(AssetsType assetsType){
        if(assetsType.getNumber() == null){
            assetsType.setNumber(BigDecimal.ZERO);
            assetsType.setTotalPrice(BigDecimal.ZERO);
        }
        if(assetsType.getExistingNumber() == null){
            assetsType.setExistingNumber(BigDecimal.ZERO);
        }
        if(iAssetsTypeService.saveOrUpdate(assetsType)){
            return new ResultUtil<AssetsType>().setData(assetsType);
        }
        return ResultUtil.error();
    }

    @SystemLog(about = "删除资产类型", type = LogType.DATA_CENTER,doType = "ASSETS-03")
    @ApiOperation(value = "删除资产类型")
    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iAssetsTypeService.removeById(id);
        }
        return ResultUtil.success();
    }
}
