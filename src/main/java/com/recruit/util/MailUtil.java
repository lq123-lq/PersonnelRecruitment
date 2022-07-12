package com.recruit.util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.util.List;
import java.util.Properties;

public class MailUtil {
	
	/*
    *@param [toMail, code]收件人 激活码
    *@return void
    */
    public static void sendMail(String toMail,String activationCode) throws MessagingException {
        //设置邮件服务器
        Properties properties = new Properties();
        //可以设置邮件服务器
        properties.setProperty("mail.host","smtp.sina.com");
        properties.setProperty("mail.smtp.auth","true");
        //与邮件服务器的连接
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("zhaoxin_lq@sina.com","15128a3eedcb8356");
            }
        });
        
      //创建邮件
        Message message = new MimeMessage(session);
        //设置收件人地址
        message.setFrom(new InternetAddress("zhaoxin_lq@sina.com"));
        //抄送
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
        //设置邮件的主体
        message.setSubject("激活邮件");
        //设置内容
        String msg="<h1>点击<a href='http://localhost:8080/PersonnelRecruitment/activation?activationCode="+activationCode+"'>此处</a>激活账户<h1>";
        message.setContent(msg, "text/html;charset=utf-8");
        //发送邮件
        Transport.send(message);
    }
    
    public static void sendMail_interview(String toMail,String jobName) throws MessagingException {
        //设置邮件服务器
        Properties properties = new Properties();
        //可以设置邮件服务器
        properties.setProperty("mail.host","smtp.sina.com");
        properties.setProperty("mail.smtp.auth","true");
        //与邮件服务器的连接
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("zhaoxin_lq@sina.com","15128a3eedcb8356");
            }
        });
        
      //创建邮件
        Message message = new MimeMessage(session);
        //设置收件人地址
        message.setFrom(new InternetAddress("zhaoxin_lq@sina.com"));
        //抄送
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
        //设置邮件的主体
        message.setSubject("面试邀请");
        //设置内容
        String msg="<h2>您好，这里是河北工程技术学院人事处</h2>"
        		+ "您投递了我校的"+ jobName+"岗位。<br>"
        		+ "目前您的简历已通过层层筛选，现邀请您来我校进行面试和试讲工作。<br>"
        		+ "面试时间等相关事宜可以通过以下联系方式与我们进行进一步的商议和确认。<br>"
        		+ "13111111111（张先生）  13653227092（赵女士）";
        message.setContent(msg, "text/html;charset=utf-8");
        //发送邮件
        Transport.send(message);
    }
    
    
    public static void sendOffer(String toMail,String jobName) throws MessagingException {
        //设置邮件服务器
        Properties properties = new Properties();
        //可以设置邮件服务器
        properties.setProperty("mail.host","smtp.sina.com");
        properties.setProperty("mail.smtp.auth","true");
        //与邮件服务器的连接
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("zhaoxin_lq@sina.com","15128a3eedcb8356");
            }
        });
        
      //创建邮件
        Message message = new MimeMessage(session);
        //设置收件人地址
        message.setFrom(new InternetAddress("zhaoxin_lq@sina.com"));
        //抄送
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
        //设置邮件的主体
        message.setSubject("入职通知");
        //设置内容
        String msg="<h2>您好，这里是河北工程技术学院人事处</h2>"
        		+ "感谢您投递我校的"+ jobName+"岗位，同时也恭喜您通过了本次的面试与试讲。<br>"
        		+ "您可在下周一8：30-11：30，14：00-19：00来本校办理入职，<br>"
        		+ "若有特殊情况可通过以下联系方式与我们进行进一步的商议和确认，欢迎您的到来。<br>"
        		+ "13111111111（张先生）  13653227092（赵女生）";
        message.setContent(msg, "text/html;charset=utf-8");
        //发送邮件
        Transport.send(message);
    }
    
    
    public static void mailToSendResume(String toMail,List<String> jobNameList) throws MessagingException {
        //设置邮件服务器
        Properties properties = new Properties();
        //可以设置邮件服务器
        properties.setProperty("mail.host","smtp.sina.com");
        properties.setProperty("mail.smtp.auth","true");
        //与邮件服务器的连接
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("zhaoxin_lq@sina.com","15128a3eedcb8356");
            }
        });
        
      //创建邮件
        Message message = new MimeMessage(session);
        //设置收件人地址
        message.setFrom(new InternetAddress("zhaoxin_lq@sina.com"));
        //抄送
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
        //设置邮件的主体
        message.setSubject("简历投递邀请~");
        //设置内容
        String msg="<h2>您好，这里是河北工程技术学院人事处</h2>"
        		+ "当您收到这封邮件，说明我们对您很感兴趣~<br>"
        		+ "目前本校的招聘岗位有："+ jobNameList +"等，如果有兴趣的话 就来积极的投递简历吧~~<br>"
        		+ "可以点击<a href='http://localhost:8080/PersonnelRecruitment/displayJobTitle'>此链接</a>跳转至招聘信息哦~<br>";
        message.setContent(msg, "text/html;charset=utf-8");
        //发送邮件
        Transport.send(message);
    }

}
