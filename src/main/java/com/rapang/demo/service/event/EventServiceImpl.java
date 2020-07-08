package com.rapang.demo.service.event;

import com.rapang.demo.dao.event.EventDao;
import com.rapang.demo.dto.event.EventDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventServiceImpl implements EventService {

 @Autowired
 EventDao eventDao;


 @Override
 public List<EventDTO> event() {
  return eventDao.event();
 }



}
