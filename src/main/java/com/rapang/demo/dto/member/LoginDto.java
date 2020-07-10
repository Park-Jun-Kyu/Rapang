package com.rapang.demo.dto.member;

public class LoginDto {

    String r_id;
    String r_pw;
    int count;

    public String getR_id() {
        return r_id;
    }

    public void setR_id(String r_id) {
        this.r_id = r_id;
    }

    public String getR_pw() {
        return r_pw;
    }

    public void setR_pw(String r_pw) {
        this.r_pw = r_pw;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
