package com.rapang.demo.dao.event;

import com.rapang.demo.dto.event.EventDTO;
import com.rapang.demo.dto.event.RapangCommentDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EventDaoimpl implements EventDao {

    @Autowired
    SqlSession sqlSession;
    //이벤트 리스트 출력
    @Override
    public List<EventDTO> event() {
        return sqlSession.selectList("event.test");
    }
    //이벤트 상세내용 보기
    @Override
    public EventDTO event_view(EventDTO eventDTO) {
        return sqlSession.selectOne("event.event_view",eventDTO);
    }
    //이벤트 상세내용 댓글 리스트 출력
    @Override
    public List<RapangCommentDTO> commentList(int event_no) {
        return sqlSession.selectList("event.commentList",event_no);
    }
    //이벤트 상세내용 댓글 작성
    @Override
    public void commentWrite(RapangCommentDTO commentDTO) {

        sqlSession.insert("event.commentWrite",commentDTO);
    }
    //이벤트 상세내용 댓글 삭제
    @Override
    public void commet_delete(int comment_no) {

        sqlSession.delete("event.commentDelete",comment_no);

    }
    //이벤트 상세내용 댓글 수정
    @Override
    public void comment_modify(RapangCommentDTO commentDTO) {

        sqlSession.update("event.commentModify",commentDTO);
    }

    //
}
