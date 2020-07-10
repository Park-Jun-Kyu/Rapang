package com.rapang.demo.service.member;

import com.rapang.demo.dto.member.LoginDto;
import com.rapang.demo.dto.member.Memberdto;

import javax.servlet.http.HttpSession;
import java.text.ParseException;

public interface MemberService {

    public void join(Memberdto memberdto) throws ParseException;

    public int idOverlapChk(String r_id);

    public LoginDto loginOk(LoginDto loginDto);

}
