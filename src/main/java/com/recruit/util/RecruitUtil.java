package com.recruit.util;

import org.apache.commons.lang3.StringUtils;
import org.springframework.util.DigestUtils;

import java.util.Random;
import java.util.UUID;

public class RecruitUtil {

    //生成随机字符串salt,与密码组合使用
    public static String generateUUID(){
        return UUID.randomUUID().toString().replaceAll("-","");
    }

    //MD5加密
    //密码+一个随机字符串
    public static String md5(String key){
        if(StringUtils.isBlank(key)){
            return null;
        }
        return DigestUtils.md5DigestAsHex(key.getBytes());
    }

    //随机生成四位验证码，用于激活账号
    public static String generateCode(){
        String str = "0123456789";
        StringBuilder stringBuilder = new StringBuilder(4);
        for (int i = 0 ; i < 4 ; i++){
            char ch = str.charAt(new Random().nextInt(str.length()));
            stringBuilder.append(ch);
        }
        return stringBuilder.toString();
    }
}
