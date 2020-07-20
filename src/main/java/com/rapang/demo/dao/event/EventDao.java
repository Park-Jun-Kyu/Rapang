package com.rapang.demo.dao.event;

import com.rapang.demo.dto.event.EventDTO;
import com.rapang.demo.dto.event.RapangCommentDTO;

import java.util.List;

public interface EventDao {

    //이벤트 출력 리스트 출력
    public List<EventDTO> event();
    //이벤트 상세내용 보기
    public EventDTO event_view(EventDTO eventDTO);
    //이벤트 상세내용 댓글 리스트 출력
    public List<RapangCommentDTO> commentList(int event_no);
    //이벤트 상세내용 댓글 작성
    public void commentWrite(RapangCommentDTO commentDTO);
    //이벤트 상세내용 댓글 삭제
    public void commet_delete(int comment_no);
    //이벤트 상세내용 댓글 수정
    public void comment_modify(RapangCommentDTO commentDTO);
    //이벤트 댓글 갯수 표시
    public RapangCommentDTO comment_count(RapangCommentDTO commentDTO);
}
