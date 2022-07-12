package com.recruit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recruit.po.Job;
import com.recruit.service.JobService;

@Controller
public class JobController {
	
	@Autowired
	private JobService jobService;
		
	//添加
	@RequestMapping(path="/toAddJob",method = RequestMethod.GET)
	public String toAddJob() {
		return "require_add";
	}
	@RequestMapping(path = "/addJob",method = RequestMethod.POST)	
    public String addJob(Job job,Model model){  
		jobService.addJob(job);  
        return "redirect:/findAllJob";  
    }
	
	 //删除
    @RequestMapping(value="/delJob")  
    public String deleteJob(int id,HttpServletRequest request,HttpServletResponse response){  
    	jobService.deleteJob(id);  
        return "redirect:findAllJob";  
    } 
	
	//修改
	@RequestMapping("/findJobById")
	public String findJobById(int id,HttpServletRequest request,Model model) {
		request.setAttribute("job", jobService.findJobById(id)); 
        model.addAttribute("job", jobService.findJobById(id));
		return "job_update";
	}
	@RequestMapping("/findJobById_v")
	public String findJobById_v(int id,HttpServletRequest request,Model model) {
		request.setAttribute("job", jobService.findJobById(id));  
        model.addAttribute("job", jobService.findJobById(id));
		return "job_view1";
	}
	@RequestMapping(value="/modifyJob")  
    public String updateJob(Job job,HttpServletRequest request,Model model){  	
        if(jobService.updateJob(job)){   
        	job = jobService.findJobById(job.getId());
            request.setAttribute("job", job);  
            model.addAttribute("job", job);  
            return "job_view1";  
        }else{  
            return "error";  
        }  
    }
	
	//查询
	@RequestMapping("/findJobByName")
	public String findJobByName(String jobName,HttpServletRequest request,Model model) {
		List<Job> job = jobService.findJobByName(jobName);
		model.addAttribute("jobList", job);  
        request.setAttribute("jobList", job); 
		return "job_list";
	}
	
	@RequestMapping("/displayJobTitle")
	public String displayJobTitle(HttpServletRequest request,Model model) {
		List<Job> job = jobService.displayJobTitle();
		request.setAttribute("jobList", job);
        model.addAttribute("jobList", job);
		return "index";
	}
	@RequestMapping("/findJobByTitle")
	public String findJobByTitle(String title,HttpServletRequest request,Model model) {
		request.setAttribute("job", jobService.findJobByTitle(title));  
        model.addAttribute("job", jobService.findJobByTitle(title));
		return "job_view";
	}
	@RequestMapping(value="/findAllJob")
	public String findAllJob(HttpServletRequest request,Model model) {
		List<Job> job = jobService.findAllJob();  
		model.addAttribute("jobList", job); 
        request.setAttribute("jobList", job); 
         
		return "job_list";
	}
	
}
