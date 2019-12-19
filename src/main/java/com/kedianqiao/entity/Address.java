package com.kedianqiao.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Address {
    private Integer id;
    private String visitor_name; //客人姓名
    private String phone; //预留手机
    private String team; //是否团体
    private String pay_method; //支付方式
    private Date retain_date; //保留时效
    private Date place_date; //下单时间
    private String occupancy_type; //入住类型
    private String salesman; //销售员
    private String tourists_canal; //客源渠道
    private String price_scheme; //价格方案
    private String room_type; //房间类型
    private Integer room_number; //房间号
    private Integer member_number; //会员卡号
    private Date begin_date; //抵店时间
    private Date end_date; //离店时间
    private String visitor_sex; //客人性别
    private Double date_pricel; //当日房价
    private String papers_number; //证件号码
    private Date birth_date; //出生日期
    private String plate_number; //车牌号
    private String visitor_like; //客人喜好
    private String visitor_nationality; //客人国籍
    private String visitor_nativeplace; //客人籍贯
    private String detailed_address; //详细地址
    private String receipt_raise; //发票抬头
    private String remarks; //备注信息
    private String status; //订单状态
    private String treaty_unit; //协议单位
    private Integer admin_id; //所属酒店
    private String nation; //民族
    private String papers_type; //证件类型
    private String arrears; //是否欠费
    private Double arrears_price; //欠费金额
}
