package com.kedianqiao.service;

import com.kedianqiao.entity.Room;
import com.kedianqiao.mapper.RoomMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class RoomSreverImpl implements RoomSrever {
    @Autowired
    RoomMapper roomMapper;
    //查询所有房间号
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Room> selectAllByRoom(Integer admin_id) {
        List<Room> rooms = roomMapper.selectAllByRoom(admin_id);
        return rooms;
    }
    //查询指定房间号
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Room selectOneByRoom(Integer admin_id, Integer room_number) {
        Room room = roomMapper.selectOneByRoom(admin_id, room_number);
        return room;
    }
    //筛选房间
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Room> selectStatusByRoom(Integer admin_id, String init_status) {
        List<Room> rooms = roomMapper.selecrStatusByRoom(admin_id, init_status);
        return rooms;
    }
    //筛选卫生
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Room> selectHealthByRoom(Integer admin_id, String health_status) {
        List<Room> rooms = roomMapper.selectHealthByRoom(admin_id, health_status);
        return rooms;
    }
    //筛选故障
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Room> selectRoomByRoom(Integer admin_id, String room_status) {
        List<Room> rooms = roomMapper.selectRoomByRoom(admin_id, room_status);
        return rooms;
    }
}
