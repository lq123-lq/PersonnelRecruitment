package com.recruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recruit.util.RecruitConstant;

@Controller
public class HomeController implements RecruitConstant {

	 @RequestMapping(path = "/index",method = RequestMethod.GET)
	    public  String index(Model model){
	        return "redirect:/displayJobTitle";
	    }

	    @RequestMapping(path = "/error" ,method = RequestMethod.GET)
	    public String error(){
	        return "error";
	    }
	    
	    @RequestMapping(path = "/error_404" ,method = RequestMethod.GET)
	    public String error404(){
	        return "404";
	    }
}
