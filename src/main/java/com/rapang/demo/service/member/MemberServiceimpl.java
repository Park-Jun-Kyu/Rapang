package com.rapang.demo.service.member;

import com.rapang.demo.dao.member.MemberDao;
import com.rapang.demo.dto.member.LoginDto;
import com.rapang.demo.dto.member.Memberdto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.io.File;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;



@Service
public class MemberServiceimpl implements MemberService {
    private Log log = LogFactory.getLog(MemberServiceimpl.class);

    @Autowired
    private JavaMailSender javaMailSender;

    public void setJavaMailSender(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    //이메일 인증
    @Override
    public boolean send(String subject, String text, String from, String to, String filePath) {

// javax.mail.internet.MimeMessage
        MimeMessage message = javaMailSender.createMimeMessage();
        try {
// org.springframework.mail.javamail.MimeMessageHelper
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
            helper.setSubject(subject);
            helper.setText(text, true);
            helper.setFrom(from);
            helper.setTo(to);
// 첨부 파일 처리
            if (filePath != null) {
                File file = new File(filePath);
                if (file.exists()) {
                    helper.addAttachment(file.getName(), new File(filePath));
                }
            }
// 첨부 파일 처리 다른방법(이건 확인함)
// FileSystemResource file = new FileSystemResource(new File("D:/load.gif"));
// helper.addAttachment("load.gif", file);
// 메일에 이미지 심어서 보낸는 방법(한글파일은 안됨)
// String contents = text + "<br><br><img src=\"cid:emailPic.png \">";
// helper.setText(contents, true);
// FileSystemResource file = new FileSystemResource(new File("D:/emailPic.png"));
// helper.addInline("emailPic.png", file);
            javaMailSender.send(message);
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return false;
    }






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



