package com.recruit.controller;

import java.util.List;
import java.util.Map;

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
public class CollegeUserController {
	
	@Autowired
	private CollegeUserService collegeUserService;
		
	@RequestMapping(path = "/toAddManager",method = RequestMethod.GET)
	public String addManager() {
		return "manager_add";
	}
	
	//添加
	@RequestMapping(path="/addManager",method = RequestMethod.POST)	
    public String addManager(CollegeUser collegeUser,Model model){  
		Map<String ,Object> map = collegeUserService.addManager(collegeUser);
		
		if (map == null || map.isEmpty()) {
			model.addAttribute("msg","成功添加管理员账号！");
			return "redirect:/findAllCollegeUser";
		}else {
			model.addAttribute("staffCodeMsg",map.get("staffCodeMsg"));
			model.addAttribute("passwordMsg",map.get("passwordMsg"));
			return "manager_add";
		}
    }
	
	//修改
	@RequestMapping(path = "/findCollegeUserById")
	public String findCollegeUserById(Integer id,HttpServletRequest request,Model model) {
		request.setAttribute("collegeUser", collegeUserService.findCollegeUserById(id));  
        model.addAttribute("collegeUser", collegeUserService.findCollegeUserById(id));
        return "manager_update";
	}
	@RequestMapping(path = "/findCollegeUserById_m")
	public String findCollegeUserById_m(Integer id,HttpServletRequest request,Model model) {
		request.setAttribute("collegeUser", collegeUserService.findCollegeUserById(id));  
        model.addAttribute("collegeUser", collegeUserService.findCollegeUserById(id));
        return "manager_update1";
	}
	@RequestMapping(path = "/findCollegeUserById_v")
	public String findCollegeUserById_v(Integer id,HttpServletRequest request,Model model) {
		request.setAttribute("collegeUser", collegeUserService.findCollegeUserById(id));  
        model.addAttribute("collegeUser", collegeUserService.findCollegeUserById(id));
//		return "redirect:/modifyCollegeUser";
        return "manager_view";
	}
	
	@RequestMapping(path = "/findCollegeUserById_pwd")
	public String findCollegeUserById_pwd(Integer id,HttpServletRequest request,Model model) {
		request.setAttribute("collegeUser", collegeUserService.findCollegeUserById(id));  
        model.addAttribute("collegeUser", collegeUserService.findCollegeUserById(id));
        return "change_password1";
	}
	
	@RequestMapping(path = "/findCollegeUserById0_1")
	public String findCollegeUserById0_1(Integer id,HttpServletRequest request,Model model){
		if (id == null) {
			model.addAttribute("msg","参数不能为空！");
		}
		request.setAttribute("collegeUser", collegeUserService.findCollegeUserById(id));  
        model.addAttribute("collegeUser", collegeUserService.findCollegeUserById(id));
		return "redirect:/modifyCollegeUserStatus";
	}
	
	@RequestMapping(path ="/modifyCollegeUser")  
    public String modifyCollegeUser(CollegeUser collegeUser,HttpServletRequest request,Model model){  	
        if(collegeUserService.modifyCollegeUser(collegeUser)){   
        	collegeUser = collegeUserService.findCollegeUserById(collegeUser.getId());
            request.setAttribute("collegeUser", collegeUser);  
            model.addAttribute("collegeUser", collegeUser);  
            return "manager_view";   
        }else{  
            return "error";  
        }  
    }
	
	@RequestMapping(path ="/modifyCollegeUser_m")  
    public String modifyCollegeUser_m(CollegeUser collegeUser,HttpServletRequest request,Model model){  	
        if(collegeUserService.modifyCollegeUser_m(collegeUser)){   
        	collegeUser = collegeUserService.findCollegeUserById(collegeUser.getId());
            request.setAttribute("collegeUser", collegeUser);  
            model.addAttribute("collegeUser", collegeUser);  
            return "redirect:/findAllCollegeUser";  
        }else{  
            return "error";  
        }  
    }
	
	@RequestMapping(path = "/modifyCollegeUserStatus_0")
	public String modifyCollegeUserStatus_0(CollegeUser collegeUser,HttpServletRequest request,Model model){  	
		if (collegeUserService.modifyCollegeUserStatus_0(collegeUser)) {
			collegeUser = collegeUserService.findCollegeUserById(collegeUser.getId());
			request.setAttribute("collegeUser", collegeUser);
			model.addAttribute("collegeUser", collegeUser);  
            return "redirect:findAllCollegeUser";  
		}else{  
            return "error";  
        }  		
	}
	@RequestMapping(path = "/modifyCollegeUserStatus_1")
	public String modifyCollegeUserStatus_1(CollegeUser collegeUser,HttpServletRequest request,Model model){  	
		if (collegeUserService.modifyCollegeUserStatus_1(collegeUser)) {
			collegeUser = collegeUserService.findCollegeUserById(collegeUser.getId());
			request.setAttribute("collegeUser", collegeUser);
			model.addAttribute("collegeUser", collegeUser);  
            return "redirect:findAllCollegeUser";  
		}else{  
            return "error";  
        }  		
	}
	
	@RequestMapping(path ="/changePassword_1",method = RequestMethod.POST)  
    public String changePassword_1(CollegeUser collegeUser,HttpServletRequest request,Model model,HttpSession session){  	
        if(collegeUserService.changePassword(collegeUser)){   
        	collegeUser = collegeUserService.findCollegeUserById(collegeUser.getId());
            request.setAttribute("collegeUser", collegeUser);  
            model.addAttribute("collegeUser", collegeUser); 
            model.addAttribute("changePwdMsg", "密码修改成功,请用新密码登录");
            session.invalidate();
            model.addAttribute("target_pwd1","toManagerLogin");
            return "operate-result";  
        }else{  
            model.addAttribute("changePwdMsg", "密码修改失败,您可以重新尝试");
            model.addAttribute("target_pwd0","findCollegeUserById_pwd?id=${COLLEGEUSER_SESSION.id}");
			return "operate-result";
        }  
    }
	
	//查询
	@RequestMapping(path = "/findCollegeUserByName",method = RequestMethod.GET)
	public String findCollegeUserByName(String staffName,HttpServletRequest request,Model model) {
		request.setAttribute("collegeUserList", collegeUserService.findCollegeUserByName(staffName));  
        model.addAttribute("collegeUserList", collegeUserService.findCollegeUserByName(staffName));
		return "manager0_main";
	}
	@RequestMapping(path = "/findCollegeUserByCode",method = RequestMethod.GET)
	public String findCollegeUserByCode(String staffCode,HttpServletRequest request,Model model) {
		request.setAttribute("collegeUser", collegeUserService.findCollegeUserByCode(staffCode));  
        model.addAttribute("collegeUser", collegeUserService.findCollegeUserByCode(staffCode));
		return "updateCollegeUser";
	}
	@RequestMapping(path = "/findAllCollegeUser",method = RequestMethod.GET)
	public String findAllCollegeUser(HttpServletRequest request,Model model) {
		List<CollegeUser> collegeUser = collegeUserService.findAllCollegeUser();  
        model.addAttribute("collegeUserList", collegeUser);  
        request.setAttribute("collegeUserList", collegeUser); 
		return "manager0_main";
	}
	
	@RequestMapping(path ="/manager_logout", method = RequestMethod.GET)
	public String managerLogout(HttpSession session) {
		session.invalidate();
		return "manager_login";
	} 	
}
