package com.recruit.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.cassandra.CassandraProperties.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.recruit.po.User;
import com.recruit.service.UserService;
import com.recruit.util.RecruitUtil;

@Controller
public class FileUploadController {
	
	@Autowired
	private UserService userService;
	private String filePath="D:\\java_code\\PersonnelRecruitment\\src\\main\\webapp\\images\\header_url\\";

	@RequestMapping(path="/updateHeaderUrl", method = RequestMethod.POST)
	public String uploadHeader(User user,MultipartFile headerImage, Model model,HttpServletRequest request) {
        if (headerImage == null) {
            model.addAttribute("error", "您还没有选择图片!");
        }

        //文件名
        String fileName = headerImage.getOriginalFilename();//获取原始文件名
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
        if (StringUtils.isBlank(suffix)) {
            model.addAttribute("error", "文件的格式不正确!");
        }

        //生成随机文件名
        fileName = RecruitUtil.generateUUID() + "." + suffix;
        // 确定文件存放的路径
        File dest = new File(filePath + "/" + fileName);
        try {
            // 存储文件
            headerImage.transferTo(dest);
        } catch (IOException e) {
            System.out.println("上传文件失败: " + e.getMessage());
            throw new RuntimeException("上传文件失败,服务器发生异常!", e);
        }

		// 更新当前用户的头像的路径（web路径）
        userService.updateHeaderUrl(user.getId(), String.format("http://localhost:8080/PersonnelRecruitment/images/header_url/"+fileName));
        user = userService.findUserById(user.getId());
        model.addAttribute("user", user);
		request.setAttribute("user", user);
//        return "redirect:/findUserById_center?id={USER_SESSION.id}";
        return "redirect:/index";
    }


}
