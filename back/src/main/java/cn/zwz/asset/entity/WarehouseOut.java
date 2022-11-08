package cn.zwz.asset.entity;

import cn.zwz.basics.baseClass.ZwzBaseEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;

/**
 * @author 郑为中
 */
@Data
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "a_assets_out")
@TableName("a_assets_out")
@ApiModel(value = "出库管理")
public class WarehouseOut extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;
    @ApiModelProperty(value = "资产ID")
    private String assetId;

    @ApiModelProperty(value = "资产名称")
    private String assetName;

    @ApiModelProperty(value = "领用人")
    private String recipients;

    @ApiModelProperty(value = "领用人ID")
    private String recipientsId;

    @ApiModelProperty(value = "性质")
    private String nature;

    @ApiModelProperty(value = "型号")
    private String model;

    @ApiModelProperty(value = "单价")
    private BigDecimal unitPrice;

    @ApiModelProperty(value = "数量")
    private BigDecimal number;

    @ApiModelProperty(value = "备注")
    private String remarks;

    @ApiModelProperty(value = "出库审核状态",notes = "0 未审核 | 1 审核通过 | 2 审核驳回")
    private Integer auditStatus;

    @ApiModelProperty(value = "出库审核时间")
    private String auditTime;

    @TableField(exist=false)
    @ApiModelProperty(value = "现在还有的数量")
    private BigDecimal existNumber;
}