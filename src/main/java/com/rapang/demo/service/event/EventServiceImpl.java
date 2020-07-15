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

 //이벤트 출력 리스트 출력
 @Override
 public List<EventDTO> event() {
  return eventDao.event();
 }
 //이벤트 상세내용 보기
 @Override
 public EventDTO event_view(EventDTO eventDTO) {
  return eventDao.event_view(eventDTO);
 }
 //이벤트 상세내용 댓글 리스트 출력
 @Override
 public List<RapangCommentDTO> commentList(int event_no) {
  return eventDao.commentList(event_no);
 }
 //이벤트 상세내용 댓글 작성
 @Override
 public void commentWrite(RapangCommentDTO commentDTO) {

  eventDao.commentWrite(commentDTO);


 }
 //이벤트 상세내용 댓글 삭제
 @Override
 public void commet_delete(int comment_no) {

  eventDao.commet_delete(comment_no);

 }
 //이벤트 상세내용 댓글 수정
 @Override
 public void comment_modify(RapangCommentDTO commentDTO) {

  eventDao.comment_modify(commentDTO);
 }


}
