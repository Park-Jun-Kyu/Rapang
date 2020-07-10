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

    @Override
    public List<EventDTO> event() {
        return sqlSession.selectList("event.test");
    }

    @Override
    public EventDTO event_view(EventDTO eventDTO) {
        return sqlSession.selectOne("event.event_view",eventDTO);
    }

    @Override
    public List<RapangCommentDTO> commentList(int event_no) {
        return sqlSession.selectList("event.commentList",event_no);
    }

    @Override
    public void commentWrite(RapangCommentDTO commentDTO) {

        sqlSession.insert("event.commentWrite",commentDTO);
    }

    @Override
    public void commet_delete(int comment_no) {

        sqlSession.delete("event.commentDelete",comment_no);

    }

    @Override
    public void comment_modify(RapangCommentDTO commentDTO) {

        sqlSession.update("event.commentModify",commentDTO);
    }


}
