package com.rapang.demo.dto.event;

import java.util.Date;
//수정완료
public class RapangCommentDTO {

    int comment_no;
    int event_no;
    String r_id;
    String content;
    Date comment_date;
    String r_pw;


    public String getR_pw() {
        return r_pw;
    }

    public void setR_pw(String r_pw) {
        this.r_pw = r_pw;
    }

    public int getComment_no() {
        return comment_no;
    }

    public void setComment_no(int comment_no) {
        this.comment_no = comment_no;
    }

    public int getEvent_no() {
        return event_no;
    }

    public void setEvent_no(int event_no) {
        this.event_no = event_no;
    }

    public String getR_id() {
        return r_id;
    }

    public void setR_id(String r_id) {
        this.r_id = r_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getComment_date() {
        return comment_date;
    }

    public void setComment_date(Date comment_date) {
        this.comment_date = comment_date;
    }
}
