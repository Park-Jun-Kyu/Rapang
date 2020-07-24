package com.rapang.demo.service.member;

import com.rapang.demo.dto.member.LoginDto;
import com.rapang.demo.dto.member.Memberdto;

import javax.servlet.http.HttpSession;
import java.text.ParseException;

public interface MemberService {
    //회원 가입
    public void join(Memberdto memberdto) throws ParseException;
    //아이디 중복 체크
    public int idOverlapChk(String r_id);
    //로그인
    public LoginDto loginOk(LoginDto loginDto);
    //이메일 인증
    public boolean send(String subject, String text, String from, String to, String filePath);


}
