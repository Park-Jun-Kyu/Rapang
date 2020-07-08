package com.rapang.demo.dao.event;

import com.rapang.demo.dto.event.EventDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EventDaoimpl implements EventDao {

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<EventDTO> event() {
        return sqlSession.selectList("event.test");
    }
}
