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

    @RequestMapping("join")
    public String join(Memberdto memberdto){


        return "member/join";

    }

    @RequestMapping("login")
    public String login(){


        return "member/login";

    }

    @RequestMapping("joinNow")
    public String joinNow(Memberdto memberdto) throws ParseException {

        memberService.join(memberdto);

        System.out.println(memberdto.getTel());
        System.out.println(memberdto.getBirth());

        return "member/login";

    }


    @RequestMapping("idOverlapChk")
    @ResponseBody
    public int idOverlapChk(String r_id){



        return memberService.idOverlapChk(r_id);
    }

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
