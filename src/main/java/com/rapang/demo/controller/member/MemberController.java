package com.rapang.demo.controller.member;

import com.rapang.demo.dto.member.LoginDto;
import com.rapang.demo.dto.member.Memberdto;
import com.rapang.demo.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.ParseException;

@Controller
public class MemberController {

    @Autowired
    MemberService memberService;
    //회원 가입
    @RequestMapping("join")
    public String join(Memberdto memberdto){


        return "member/join";

    }
    //회원가입 완료 페이지
    @RequestMapping("joinComplete")
    public String joinComplete(){


        return "member/joinComplete";
    }


    //로그인 페이지 뷰
    @RequestMapping("login")
    public String login(){


        return "member/login";

    }



    //로그인
    @RequestMapping("joinNow")
    public String joinNow(Memberdto memberdto) throws ParseException {

        memberService.join(memberdto);

        System.out.println(memberdto.getTel());
        System.out.println(memberdto.getBirth());

        return "member/joinComplete";

    }

    //아이디 중복 체크
    @RequestMapping("idOverlapChk")
    @ResponseBody
    public int idOverlapChk(String r_id){



        return memberService.idOverlapChk(r_id);
    }
    //로그인 ajax
    @RequestMapping("loginOk")
    @ResponseBody
    public int loginOk(HttpSession session, LoginDto loginDto){
        int count=memberService.loginOk(loginDto).getCount();
        if(count==1){
            session.setAttribute("r_id",loginDto.getR_id());
        }
        return count;
    }



}
