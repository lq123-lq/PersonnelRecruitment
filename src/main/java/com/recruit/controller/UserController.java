package com.recruit.controller;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.recruit.po.Job;
import com.recruit.po.User;
import com.recruit.service.JobService;
import com.recruit.service.UserService;
import com.recruit.service.impl.UserServiceImpl;
import com.recruit.util.MailUtil;
import com.recruit.util.RecruitConstant;

@Controller
public class UserController implements RecruitConstant {
	@Autowired
	private UserService userService;
	
	@Autowired
	private JobService jobService;

	@RequestMapping(value="/toLogin",method = RequestMethod.GET)
	public String toLogin() {
		return "login";
	}
	@RequestMapping(value="/toRegister",method = RequestMethod.GET)
	public String toRegister() {
		return "register";
	}
	
	//用户注册
		@RequestMapping(path = "/register",method = RequestMethod.POST)
		public String register(User user,Model model) {
			Map<String ,Object> map =  userService.register(user);
			if(map == null || map.isEmpty()){
				model.addAttribute("msg","注册成功，我们已经向您的邮箱发送了一封邮件，请尽快激活");
				model.addAttribute("target","/index");
				return "operate-result";
			}else {
				model.addAttribute("usercodeMsg",map.get("usercodeMsg"));
				model.addAttribute("passwordMsg",map.get("passwordMsg"));
				model.addAttribute("emailMsg",map.get("emailMsg"));
				return "register";
			}

		}
		//激活账户
	    @RequestMapping("/activation")
	    public String activation(String activationCode) {
	        User user = userService.findUserByactivationCode(activationCode);
	        user.setStatus(1);
	        userService.updateStatus(user);
	        return "login";
	    }
		
	   
	    @RequestMapping(path = "/login",method = RequestMethod.POST)
		public String login(String usercode, String password, boolean rememberme,
							Model model,HttpServletResponse response,HttpSession session,HttpServletRequest request){
			int expiredSeconds = rememberme ? REMEBER_EXPIRED_SECONDS : DEFAULT_EXPIRED_SECONDS;
			User user = userService.login(usercode, password, expiredSeconds);
			if (user != null) {
				session.setAttribute("USER_SESSION", user);
				request.setAttribute("user", user); 
		        model.addAttribute("user", user);
		        User u = userService.selectByCode(user.getUsercode());
		        request.setAttribute("u", u); 
		        model.addAttribute("u", u);
		        System.out.println(u);
		        System.out.println(user);
		        if (u.getStatus() != 1) {
		        	UserServiceImpl.jihuo(u);
		        	model.addAttribute("msg","该账号未激活！我们已经向您的邮箱发送了一封邮件，请尽快激活");
					model.addAttribute("target","/index");
					return "operate-result";
				}
				return "redirect:/index";
			}
			model.addAttribute("msg", "账号或密码错误，请重新输入！");
			return "login";		
		}
		
		
		@RequestMapping(path ="/userCenter", method = RequestMethod.GET)
		public String userCenter(HttpSession session) {
			return "user_center";
		} 
		
		@RequestMapping(path ="/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			//清除session
			session.invalidate();
			return "login";
		} 	
		
		  @RequestMapping(value="/delUser")  
		    public String delUser(int id,HttpServletRequest request,HttpServletResponse response){  
		    	userService.deleteUser(id);
		        return "redirect:findAllUser";  
		    } 

		@RequestMapping(path ="/findAllUser", method = RequestMethod.GET)
		public String findAllUser(HttpServletRequest request,Model model) {
			List<User> user = userService.findAllUser();
			model.addAttribute("userList", user);
			request.setAttribute("userList", user);
			return "user_list";
		}
		
		@RequestMapping(path = "/findUserById")
		public String findUserById(Integer id,HttpServletRequest request,Model model) {
			request.setAttribute("user", userService.findUserById(id));  
	        model.addAttribute("user", userService.findUserById(id));
	        return "user_update";
		}
		
		@RequestMapping(path = "/findUserById_m")
		public String findUserById_m(Integer id,HttpServletRequest request,Model model) {
			request.setAttribute("user", userService.findUserById(id));  
	        model.addAttribute("user", userService.findUserById(id));
	        return "user_update1";
		}
		@RequestMapping(path = "/findUserById_center")
		public String findUserById_center(Integer id,HttpServletRequest request,Model model) {
			request.setAttribute("user", userService.findUserById(id));  
	        model.addAttribute("user", userService.findUserById(id));
	        return "user_center";
		}
		@RequestMapping(path = "/findUserById_pwd")
		public String findUserById_pwd(Integer id,HttpServletRequest request,Model model) {
			request.setAttribute("user", userService.findUserById(id));  
	        model.addAttribute("user", userService.findUserById(id));
	        return "change_password";
		}
		@RequestMapping(path = "/findUserById_v")
		public String findUserById_v(Integer id,HttpServletRequest request,Model model) {
			request.setAttribute("user", userService.findUserById(id));  
	        model.addAttribute("user", userService.findUserById(id));
	        return "user_view1";
		}
		@RequestMapping(path ="/modifyUser",method = RequestMethod.POST)  
	    public String modifyUser(User user,HttpServletRequest request,Model model){  	
	        if(userService.updateUser(user)){   
	        	user = userService.findUserById(user.getId());
	            request.setAttribute("user", user);  
	            model.addAttribute("user", user);  
	            return "user_center";  
	        }else{  
	            return "error";  
	        }  
	    }
		@RequestMapping(path ="/modifyUser_r",method = RequestMethod.POST)  
	    public String modifyUser_r(User user,Job job,HttpServletRequest request,Model model){  	
	        if(userService.updateUser(user)){   
	        	user = userService.findUserById(user.getId());
	            request.setAttribute("user", user);  
	            model.addAttribute("user", user);  
	            job = jobService.findJobById(job.getId());
	            request.setAttribute("job", job);
	            model.addAttribute("job", job);
//	            return "redirect:/viewResumeById_v";  
	            return "redirect:/findResume";  
	        }else{  
	            return "error";  
	        }  
	    }
		
		@RequestMapping(path ="/modifyUser_m",method = RequestMethod.POST)  
	    public String modifyUser_m(User user,HttpServletRequest request,Model model){  	
	        if(userService.updateUser_m(user)){   
	        	user = userService.findUserById(user.getId());
	            request.setAttribute("user", user);  
	            model.addAttribute("user", user);  
	            return "user_view1";  
	        }else{  
	            return "error";  
	        }  
	    }

		@RequestMapping(path ="/changePassword",method = RequestMethod.POST)  
	    public String changePassword(User user,HttpServletRequest request,Model model,HttpSession session){  	
	        if(userService.changePassword(user)){   
	        	user = userService.findUserById(user.getId());
	            request.setAttribute("user", user);  
	            model.addAttribute("user", user);  
	            model.addAttribute("changePwdMsg", "密码修改成功,请用新密码登录");
	            session.invalidate();
	            model.addAttribute("target","index");
	            return "operate-result";    
	        }else{  
	        	model.addAttribute("changePwdMsg", "密码修改失败,您可以重新尝试");
	            model.addAttribute("target","index");
				return "operate-result";
	        }  
	    }
		
		@RequestMapping("/mailToSendResume")
	   	public String mailToSendResume(User user,Job job,String email,@RequestParam(value = "jobName",required = false) List<Job> jobName,HttpServletRequest request,Model model) {
	       		user = userService.findUserById(user.getId());
	       		email =  userService.findUserEmailTojl(user.getId());
	       		jobName = jobService.findJobName();
	       		List<String> jobNameList = jobName.stream().map(Job::getJobName).collect(Collectors.toList());
	       		try {
	    			MailUtil.mailToSendResume(email,jobNameList);
	    		} catch (MessagingException e) {
	    			e.printStackTrace();
	    		}
	   			return "redirect:/findAllUser";
	   		
	   		}
}
