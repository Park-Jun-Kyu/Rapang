package com.rapang.demo.service.event;

import com.rapang.demo.dao.event.EventDao;
import com.rapang.demo.dto.event.EventDTO;
import com.rapang.demo.dto.event.RapangCommentDTO;
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

 @Override
 public EventDTO event_view(EventDTO eventDTO) {
  return eventDao.event_view(eventDTO);
 }

 @Override
 public List<RapangCommentDTO> commentList(int event_no) {
  return eventDao.commentList(event_no);
 }

 @Override
 public void commentWrite(RapangCommentDTO commentDTO) {

  eventDao.commentWrite(commentDTO);


 }

 @Override
 public void commet_delete(int comment_no) {

  eventDao.commet_delete(comment_no);

 }

 @Override
 public void comment_modify(RapangCommentDTO commentDTO) {

  eventDao.comment_modify(commentDTO);
 }


}
