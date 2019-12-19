package com.kedianqiao.mapper;

import com.kedianqiao.entity.Room;

import java.util.List;

public interface RoomMapper {
    //查所有房号
    List<Room> selectAllByRoom(Integer admin_id);
    //查询指定房号
    Room selectOneByRoom(Integer admin_id,Integer room_number);
    //筛选房间
    List<Room> selecrStatusByRoom(Integer admin_id,String init_status);
    //筛选卫生房间
    List<Room> selectHealthByRoom(Integer admin_id,String health_status);
    //筛选故障房间
    List<Room> selectRoomByRoom(Integer admin_id,String room_status);
}
