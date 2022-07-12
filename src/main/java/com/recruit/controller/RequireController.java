package com.recruit.controller;

import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recruit.po.Job;
import com.recruit.po.Resume;
import com.recruit.po.User;
import com.recruit.service.JobService;
import com.recruit.util.MailUtil;

@Controller
public class RequireController {
	
	@Autowired
	private JobService jobService;
		
	//添加
	@RequestMapping(path="/toAddRequire",method = RequestMethod.GET)
	public String toAddRequire() {
		return "require_add";
	}
	@RequestMapping(path = "/addRequire",method = RequestMethod.POST)	
    public String addRequire(Job job,Model model){  
		jobService.addRequire(job);  
        return "redirect:/findAllRequire";  
    }
	
	//修改
	@RequestMapping("/findRequireById")
	public String findRequireById(int id,HttpServletRequest request,Model model) {
		request.setAttribute("job", jobService.findJobById(id)); 
        model.addAttribute("job", jobService.findJobById(id));
		return "require_update";
	}
	@RequestMapping(value="/modifyRequire")  
    public String updateRequire(Job job,HttpServletRequest request,Model model){  	
        if(jobService.updateRequire(job)){   
        	job = jobService.findJobById(job.getId());
            request.setAttribute("job", job);  
            model.addAttribute("job", job);  
            return "redirect:/findAllRequire";
        }else{  
            return "error";  
        }  
    }
//	@RequestMapping("/findJobById_v")
//	public String findJobById_v(int id,HttpServletRequest request,Model model) {
//		request.setAttribute("job", jobService.findJobById(id));  
//        model.addAttribute("job", jobService.findJobById(id));
//		return "job_view1";
//	}

	
	//查询
	@RequestMapping("/findRequireByName")
	public String findJobByName(String jobName,HttpServletRequest request,Model model) {
		List<Job> job = jobService.findJobByName(jobName);
		model.addAttribute("jobList", job);  
        request.setAttribute("jobList", job); 
		return "require_list";
	}
//	
//	@RequestMapping("/displayJobTitle")
//	public String displayJobTitle(HttpServletRequest request,Model model) {
//		List<Job> job = jobService.displayJobTitle();
//		request.setAttribute("jobList", job);
//        model.addAttribute("jobList", job);
//		return "index";
//	}
//	@RequestMapping("/findJobByTitle")
//	public String findJobByTitle(String title,HttpServletRequest request,Model model) {
//		request.setAttribute("job", jobService.findJobByTitle(title));  
//        model.addAttribute("job", jobService.findJobByTitle(title));
//		return "job_view";
//	}
	@RequestMapping(value="/findAllRequire")
	public String findAllRequire(HttpServletRequest request,Model model) {
		List<Job> job = jobService.findAllRequire();  
		model.addAttribute("jobList", job); 
        request.setAttribute("jobList", job); 
         
		return "require_list";
	}
	
	
}
