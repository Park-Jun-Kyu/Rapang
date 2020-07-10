package com.rapang.demo.service.member;

import com.rapang.demo.dao.member.MemberDao;
import com.rapang.demo.dto.member.LoginDto;
import com.rapang.demo.dto.member.Memberdto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.text.ParseException;

@Service
public class MemberServiceimpl implements MemberService {

    @Autowired
    MemberDao memberDao;

    @Override
    public void join(Memberdto memberdto) throws ParseException {

        System.out.println(memberdto);
        memberdto.setEmail();
        memberdto.setPhone();
        memberdto.setTel();
        memberdto.setBirth();

        memberDao.join(memberdto);
    }

    @Override
    public int idOverlapChk(String r_id) {

        return memberDao.idOverlapChk(r_id);
    }

    @Override
    public LoginDto loginOk(LoginDto loginDto) {

        return memberDao.loginOk(loginDto);

        }

    }



