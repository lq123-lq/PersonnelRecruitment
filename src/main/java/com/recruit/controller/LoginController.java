package com.recruit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recruit.po.CollegeUser;
import com.recruit.service.CollegeUserService;

@Controller
public class LoginController {
	
	@Autowired
	private CollegeUserService collegeUserService;
	
	@RequestMapping(value="/manager_login",method = RequestMethod.POST)
	public String managerLogin(String staffCode,String password,int role, Model model,HttpSession session, HttpServletRequest request){	
		CollegeUser collegeUser = collegeUserService.login(staffCode, password, role);
		if (collegeUser != null) {
			session.setAttribute("COLLEGEUSER_SESSION", collegeUser);
			request.setAttribute("collegeUser", collegeUser); 
	        model.addAttribute("collegeUser", collegeUser);
			CollegeUser cu = collegeUserService.findCollegeUserByCode(collegeUser.getStaffCode());
			if (cu.getStatus() != 1) {
				model.addAttribute("msg", "该账号已被禁用！");
				return "manager_login";	
			}
			return "redirect:/findAllUser";
		}
		
		model.addAttribute("msg", "账号或密码错误，请重新输入！");
		return "manager_login";		
	}
	
	@RequestMapping(path="/toManagerLogin",method = RequestMethod.GET)
	public String toManagerLogin() {
		return "manager_login";
	}
	@RequestMapping(value="/toMain1")
	public String toMain1() {
		return "manager1_main";
	}	
	@RequestMapping(value="/toMain2")
	public String toMain2() {
		return "manager2_main";
	}
	@RequestMapping(value="/toSysMain")
	public String toSysMain() {
		return "manager0_main";
	}

	
	@RequestMapping(value="/manager_logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "manager_login";
	} 	

}
