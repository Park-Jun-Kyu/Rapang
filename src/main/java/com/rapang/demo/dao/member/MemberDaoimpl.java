package com.rapang.demo.dao.member;

import com.rapang.demo.dto.member.Memberdto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoimpl implements MemberDao {

    @Autowired
    SqlSession sqlSession;

    @Override
    public void join(Memberdto memberdto) {

        sqlSession.insert("member.join",memberdto);
    }
}
