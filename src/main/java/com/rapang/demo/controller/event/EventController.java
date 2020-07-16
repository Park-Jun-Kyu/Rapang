package com.rapang.demo.controller.event;

import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogOutputStream;
import com.rapang.demo.dto.event.EventDTO;
import com.rapang.demo.dto.event.RapangCommentDTO;
import com.rapang.demo.dto.member.Memberdto;
import com.rapang.demo.service.event.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class EventController {

    @Autowired
    EventService eventService;
    //이벤트 페이지 출력
    @RequestMapping("event")
    public String event(Model model){


        model.addAttribute("event",eventService.event());
        return "event/event";
    }

    //이벤트 상새내용 출력
    @RequestMapping("event_view")
    public String event_view(Model model, HttpSession session, EventDTO eventDTO, RapangCommentDTO commentDTO,int event_no){

        model.addAttribute("r_id",((String)session.getAttribute("r_id")));
        model.addAttribute("event_view",eventService.event_view(eventDTO));
        model.addAttribute("commentList",eventService.commentList(event_no));
        model.addAttribute("comment_date",commentDTO.getComment_date());

        return "event/event_view";
    }
    //댓글 리스트 ajax 출력
    @RequestMapping("getCommentList")
    @ResponseBody
    public List<RapangCommentDTO> getCommentList(int event_no){

        
        return eventService.commentList(event_no);
    }



    //댓글 작성 ajax
    @RequestMapping("comment_write")
    @ResponseBody
    public String comment_write(Model model,RapangCommentDTO commentDTO,HttpSession session){
        commentDTO.setR_id((String) session.getAttribute("r_id"));
        model.addAttribute("r_id",((String)session.getAttribute("r_id")));
        eventService.commentWrite(commentDTO);
        System.out.println("내용 :"+commentDTO.getContent());
        System.out.println("아디 :"+commentDTO.getR_id());
        System.out.println("이벤트번호 :"+commentDTO.getEvent_no());

        return "success";
    }
    //댓글 삭제 ajax
    @RequestMapping("comment_delete")
    @ResponseBody
    public String comment_delete(int comment_no,HttpSession session,RapangCommentDTO commentDTO){
        commentDTO.setR_id((String) session.getAttribute("r_id"));
        eventService.commet_delete(comment_no);
        System.out.println("삭제 글번호 :"+ comment_no);
        return "success";
    }
    //댓글 수정 ajax
    @RequestMapping("comment_modify")
    @ResponseBody
    public String comment_modify(RapangCommentDTO commentDTO){
        eventService.comment_modify(commentDTO);
        System.out.println("수정 글번호 : "+commentDTO.getComment_no());
        System.out.println("수정 이벤번호 : " +commentDTO.getEvent_no());
        System.out.println("수정 내용 :" +commentDTO.getContent());
        return "success";
    }




}
