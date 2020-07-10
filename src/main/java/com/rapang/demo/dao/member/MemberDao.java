package com.rapang.demo.dao.member;

import com.rapang.demo.dto.member.LoginDto;
import com.rapang.demo.dto.member.Memberdto;

import javax.servlet.http.HttpSession;

public interface MemberDao {

    public void join(Memberdto memberdto);

    public int idOverlapChk(String r_id);

    public LoginDto loginOk(LoginDto loginDto);
}
