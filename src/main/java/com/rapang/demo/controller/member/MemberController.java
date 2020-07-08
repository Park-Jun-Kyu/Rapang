package com.rapang.demo.controller.member;

import com.rapang.demo.dto.member.Memberdto;
import com.rapang.demo.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;

@Controller
public class MemberController {

    @Autowired
    MemberService memberService;

    @RequestMapping("join")
    public String join(Memberdto memberdto){


        return "member/join";

    }

    @RequestMapping("joinNow")
    public String joinNow(Memberdto memberdto) throws ParseException {

        memberService.join(memberdto);

        System.out.println(memberdto.getTel());
        System.out.println(memberdto.getBirth());

        return "member/login";



    }

}
