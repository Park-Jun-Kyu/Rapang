package com.rapang.demo.service.event;

import com.rapang.demo.dto.event.EventDTO;
import com.rapang.demo.dto.event.RapangCommentDTO;

import java.util.List;

public interface EventService {

    public List<EventDTO> event();

    public EventDTO event_view(EventDTO eventDTO);

    public List<RapangCommentDTO> commentList(int event_no);

    public void commentWrite(RapangCommentDTO commentDTO);

    public void commet_delete(int comment_no);

    public void comment_modify(RapangCommentDTO commentDTO);

}
