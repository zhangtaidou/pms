package com.kedianqiao.controller;

import com.kedianqiao.entity.Room;
import com.kedianqiao.service.RoomSrever;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/RoomController")
public class RoomController {
    @Autowired
    RoomSrever roomSrever;
    //查询所有房间号
    @RequestMapping("/selectAllByRoom")
    public List<Room> selectAllByRoom(Integer admin_id){
        List<Room> rooms = roomSrever.selectAllByRoom(admin_id);
        return rooms;
    }
    //查询指定房间号
    @RequestMapping("/selectOneByRoom")
    public Room selectOneByRoom(Integer admin_id,Integer room_number){
        Room room = roomSrever.selectOneByRoom(admin_id, room_number);
        return room;
    }
    //筛选房间
    @RequestMapping("/selectStatusByRoom")
    public List<Room> selectStatusByRoom(Integer admin_id,String init_status){
        List<Room> rooms = roomSrever.selectStatusByRoom(admin_id, init_status);
        return rooms;
    }
    //筛选卫生
    @RequestMapping("/selectHealthByRoom")
    public List<Room> selectHealthByRoom(Integer admin_id,String health_status){
        List<Room> rooms = roomSrever.selectHealthByRoom(admin_id, health_status);
        return rooms;
    }
    //筛选故障
    @RequestMapping("/selectRoomByRoom")
    public List<Room> selectRoomByRoom(Integer admin_id,String room_status){
        List<Room> rooms = roomSrever.selectRoomByRoom(admin_id, room_status);
        return rooms;
    }

}
