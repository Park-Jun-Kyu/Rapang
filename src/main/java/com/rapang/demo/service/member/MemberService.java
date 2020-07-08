package com.rapang.demo.service.member;

import com.rapang.demo.dto.member.Memberdto;

import java.text.ParseException;

public interface MemberService {

    public void join(Memberdto memberdto) throws ParseException;

}
