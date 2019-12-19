package com.kedianqiao.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Room {
    private Integer id;
    private String room_name;
    private Integer room_number;
    private String init_status;
    private String damage;
    private Integer admin_id;
    private Date keep_begindate;
    private Date keep_enddate;
    private String remove_name;
    private String remarks;
    private String room_status;
    private String health_status;
}
