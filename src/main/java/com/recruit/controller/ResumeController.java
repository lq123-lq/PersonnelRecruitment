package com.recruit.controller;

import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recruit.po.Job;
import com.recruit.po.Resume;
import com.recruit.po.User;
import com.recruit.service.JobService;
import com.recruit.service.ResumeService;
import com.recruit.service.UserService;
import com.recruit.util.MailUtil;

@Controller
public class ResumeController {
	
	@Autowired
	private ResumeService resumeService;
	
	@Autowired
	private JobService jobService;
	
	@Autowired
	private UserService userService;
		
	@RequestMapping(path = "toAddResume",method = RequestMethod.GET)
	public String toAddResume(Integer jobId,User user,Model model,HttpServletRequest request) {
		request.setAttribute("job", jobService.findJobById(jobId));
		model.addAttribute("job", jobService.findJobById(jobId));
		request.setAttribute("user", userService.findUserById(user.getId()));
		model.addAttribute("user", userService.findUserById(user.getId()));
		return "resume_add";
		
	}
	@RequestMapping(path = "/addResume",method = RequestMethod.POST)	
    public String addResume(Resume resume,Integer jobId,Integer userId,Model model,HttpServletRequest request,HttpSession session){
		request.setAttribute("job", jobService.findJobById(jobId));
		model.addAttribute("job", jobService.findJobById(jobId));
		request.setAttribute("user", userService.findUserById(userId));
		model.addAttribute("user", userService.findUserById(userId));
		resumeService.addResume(resume);
		request.setAttribute("resume", resume);  
        model.addAttribute("resume", resume); 
        return "user_update_r";  
    }
	
	 //删除
    @RequestMapping(value="/delResume")  
    public String delResume(int id,HttpServletRequest request,HttpServletResponse response){  
    	resumeService.deleteResume(id);  
        return "redirect:findAllResume";  
    } 

	@RequestMapping("/viewResumeById_v")
	public String viewResumeById_v(Resume resume,Integer id,HttpServletRequest request,Model model) {
		List<Map<Object,Object>> resumeList = resumeService.viewResumeById(id);
		request.setAttribute("resumeList", resumeList);
		model.addAttribute(resumeList);
		System.out.println(resumeList);
		return "resume_view";	
	}
	@RequestMapping("/viewResumeById_v1")
	public String viewResumeById_v1(Resume resume,Integer id,HttpServletRequest request,Model model) {
		List<Map<Object,Object>> resumeList = resumeService.viewResumeById(id);
		request.setAttribute("resumeList", resumeList);
		model.addAttribute(resumeList);
		System.out.println(resumeList);
		return "resume_view1";	
	}
	@RequestMapping("/viewResumeById_u")
	public String viewResumeById_u(Resume resume,Integer id,HttpServletRequest request,Model model) {
		List<Map<Object,Object>> resumeList = resumeService.viewResumeById(id);
		request.setAttribute("resumeList", resumeList);
		model.addAttribute(resumeList);
		return "resume_view";	
	}
	@RequestMapping("/findResumeByUser")
	public String findResumeByUser(Resume resume,Integer id,HttpServletRequest request,Model model) {
		List<Map<Object,Object>> resumes = resumeService.findResumeByUser(id);
		request.setAttribute("resumes", resumes);
		model.addAttribute(resumes);
		System.out.println(resumes);
		return "user_resumes";	
	}
	
	//中介
	@RequestMapping("/findResume")
	public String findResume(HttpServletRequest request,Model model) {
		List<Resume> resumes = resumeService.findResume();
		request.setAttribute("resumes", resumes);
		model.addAttribute("resumes",resumes);
		System.out.println(resumes);
		return "operate";	
	}

	@RequestMapping(path = "/sendResume")
	public String sendResume(Resume resume,HttpServletRequest request,Model model) {
		if (resumeService.sendResume(resume)) {
			resumeService.findResumeById(resume.getId());
			request.setAttribute("resume", resume);
			model.addAttribute("resume", resume);
			model.addAttribute("sendResumeMsg", "简历投递成功！请耐心等待结果哦~~~");
			userService.updateResumeStatus(resume.getId());
			return "operate-result";
		}
		model.addAttribute("sendResumeMsg", "出错啦~~~");
		return "operate-result";
	}
	
	@RequestMapping("/modifyInterviewStatus")
   	public String modifyInterviewStatus(Resume resume,User user,String email,String jobName,HttpServletRequest request,Model model) {
       	if (resumeService.modifyInterviewStatus(resume)) {
       		resume = resumeService.findResumeById(resume.getId());
       		email =  resumeService.findUserEmail(resume.getId());
       		jobName = resumeService.findJobName(resume.getId());
       		try {
    			MailUtil.sendMail_interview(email,jobName);
    		} catch (MessagingException e) {
    			e.printStackTrace();
    		}
   			request.setAttribute("resume", resume);
   			model.addAttribute("resume", resume);
   			return "redirect:/findAllResume_jl";
   		}else {
   			return "error";
   		}
   	}
	
	@RequestMapping("/sendOffer")
   	public String sendOffer(Resume resume,User user,String email,String jobName,HttpServletRequest request,Model model) {
       	if (resumeService.modifyInterviewStatus(resume)) {
       		resume = resumeService.findResumeById(resume.getId());
       		email =  resumeService.findUserEmail(resume.getId());
       		jobName = resumeService.findJobName(resume.getId());
       		try {
    			MailUtil.sendOffer(email,jobName);
    		} catch (MessagingException e) {
    			e.printStackTrace();
    		}
   			request.setAttribute("resume", resume);
   			model.addAttribute("resume", resume);
   			return "redirect:/findAllResume";
   		}else {
   			return "error";
   		}
   	}
  
  //修改状态：简历通过,状态改为jl_1
    @RequestMapping("/modifyResumeStatus_jl1")
   	public String modifyResumeStatus_jl1(Resume resume,HttpServletRequest request,Model model) {
       	if (resumeService.modifyStatus_jl1(resume)) {
       		resume = resumeService.findResumeById(resume.getId());
   			request.setAttribute("resume", resume);
   			model.addAttribute("resume", resume);
   			return "redirect:/findAllResume";
   		}else {
   			return "error";
   		}
   	}
  //修改状态：简历不通过,状态改为jl_0
    @RequestMapping("/modifyResumeStatus_jl0")
   	public String modifyResumeStatus_jl0(Resume resume,HttpServletRequest request,Model model) {
       	if (resumeService.modifyStatus_jl0(resume)) {
       		resume = resumeService.findResumeById(resume.getId());
   			request.setAttribute("resume", resume);
   			model.addAttribute("resume", resume);
   			return "redirect:/findAllResume";
   		}else {
   			return "error";
   		}
   	}
  //修改状态：简历通过,状态改为ms_0
    @RequestMapping("/modifyResumeStatus_ms0")
   	public String modifyResumeStatus_ms0(Resume resume,HttpServletRequest request,Model model) {
       	if (resumeService.modifyStatus_ms0(resume)) {
       		resume = resumeService.findResumeById(resume.getId());
   			request.setAttribute("resume", resume);
   			model.addAttribute("resume", resume);
   			return "redirect:/findAllResume";
   		}else {
   			return "error";
   		}
   	}
  //修改状态：简历通过,状态改为ms_1
    @RequestMapping("/modifyResumeStatus_ms1")
   	public String modifyResumeStatus_ms1(Resume resume,HttpServletRequest request,Model model) {
       	if (resumeService.modifyStatus_ms1(resume)) {
       		resume = resumeService.findResumeById(resume.getId());
   			request.setAttribute("resume", resume);
   			model.addAttribute("resume", resume);
   			return "redirect:/findAllResume";
   		}else {
   			return "error";
   		}
   	}
    
    @RequestMapping(value="/findAllResume")
	public String findAllResume(HttpServletRequest request,Model model) {
    	List<Map<Object,Object>> resumeList = resumeService.findAllResume();  
        model.addAttribute("resumeList", resumeList);  
        request.setAttribute("resumeList", resumeList); 
        System.out.println(resumeList);
		return "apply_list";
	}
    
    @RequestMapping(value="/findAllResume_cs")
	public String findAllResume_cs(Resume resume,HttpServletRequest request,Model model) {
    	List<Map<Object,Object>> conditions = resumeService.findCondition_cs();
    	request.setAttribute("conditions", conditions);
    	model.addAttribute("conditions", conditions);
    	System.out.println(conditions);
    	for (Map<Object, Object> map : conditions) {
    		System.out.println(map.get("uSex"));
    		System.out.println(map.get("uDegree"));
    		System.out.println(map.get("uExperience"));
    		System.out.println(map.get("jSex"));
    		System.out.println(map.get("jDegree"));
    		System.out.println(map.get("jExperience"));
    		//不通过的
    		if (map.get("uSex").equals("男")&&map.get("jSex").equals("女") ||map.get("uSex").equals("女")&&map.get("jSex").equals("男")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs0(resume);
			}
    		if (map.get("uDegree").equals("专科以下")&&map.get("jDegree").equals("专科")||map.get("uDegree").equals("专科以下")&&map.get("jDegree").equals("本科")||map.get("uDegree").equals("专科以下")&&map.get("jDegree").equals("研究生及以上")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs0(resume);
			}
    		if (map.get("uDegree").equals("专科")&&map.get("jDegree").equals("本科")||map.get("uDegree").equals("专科")&&map.get("jDegree").equals("研究生及以上")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs0(resume);
			}
    		if (map.get("uDegree").equals("本科")&&map.get("jDegree").equals("研究生及以上")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs0(resume);
			}
    		if (map.get("uExperience").equals("无工作经验")&&map.get("jExperience").equals("1-3年")||map.get("uExperience").equals("无工作经验")&&map.get("jExperience").equals("3-5年")||map.get("uExperience").equals("无工作经验")&&map.get("jExperience").equals("5年以上")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs0(resume);
			}
    		if (map.get("uExperience").equals("1-3年")&&map.get("jExperience").equals("3-5年")||map.get("uExperience").equals("1-3年")&&map.get("jExperience").equals("5年以上")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs0(resume);
			}
    		if (map.get("uExperience").equals("3-5年")&&map.get("jExperience").equals("5年以上")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs0(resume);
			}
    		//通过
    		if (map.get("jSex").equals("不限") && map.get("jDegree").equals("不限") && map.get("jExperience").equals("不限")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs1(resume);
			}
    		if (map.get("jSex").equals("不限") && map.get("jDegree").equals(map.get("uDegree")) && map.get("jExperience").equals(map.get("uExperience"))) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs1(resume);
			}
    		if (map.get("jSex").equals("不限") && map.get("jDegree").equals("不限") && map.get("jExperience").equals(map.get("uExperience"))) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs1(resume);
			}
    		if (map.get("jSex").equals("不限") && map.get("jDegree").equals(map.get("uDegree")) && map.get("jExperience").equals("不限")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs1(resume);
			}
    		if (map.get("jSex").equals(map.get("uSex")) && map.get("jDegree").equals("不限") && map.get("jExperience").equals("不限")) {
    			Integer id = (Integer) map.get("rId");
    			resume = resumeService.findResumeById(id);
    			resumeService.modifyStatus_cs1(resume);
			}
		}
			
    	List<Map<Object,Object>> resumeList = resumeService.findAllResume_cs();  
        model.addAttribute("resumeList", resumeList);  
        request.setAttribute("resumeList", resumeList); 
        System.out.println(resumeList);
		return "apply_list";
    }
    
    @RequestMapping(value="/findAllResume_jl")
	public String findAllResume_jl(HttpServletRequest request,Model model) {
    	List<Map<Object,Object>> resumeList = resumeService.findAllResume_jl();  
        model.addAttribute("resumeList", resumeList);  
        request.setAttribute("resumeList", resumeList); 
        System.out.println(resumeList);
		return "apply_list";
	}
    
    @RequestMapping(value="/findApplyUserByJobName")
   	public String findApplyUserByJobName(String jobName,HttpServletRequest request,Model model) {
    	List<Map<Object,Object>> resumeList = resumeService.findApplyUserByJobName(jobName); 
           model.addAttribute("resumeList", resumeList);  
           request.setAttribute("resumeList", resumeList); 
           System.out.println(resumeList);
   		return "apply_list";
   	}


}
