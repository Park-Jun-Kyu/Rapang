package com.rapang.demo.dao.member;

import com.rapang.demo.dto.member.LoginDto;
import com.rapang.demo.dto.member.Memberdto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpSession;

@Repository
public class MemberDaoimpl implements MemberDao {

    @Autowired
    SqlSession sqlSession;

    @Override
    public void join(Memberdto memberdto) {

        sqlSession.insert("member.join",memberdto);
    }

    @Override
    public int idOverlapChk(String r_id) {
        return sqlSession.selectOne("member.idChk",r_id);
    }

    @Override
    public LoginDto loginOk(LoginDto loginDto) {

       return sqlSession.selectOne("member.loginOk",loginDto);

    }
}
