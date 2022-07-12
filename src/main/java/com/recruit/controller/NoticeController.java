package com.recruit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.recruit.po.Notice;
import com.recruit.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
		
	//添加	
	@RequestMapping(path="/toAddNotice",method = RequestMethod.GET)	
    public String toaddNotice(Notice notice,Model model){  
        return "notice_add";  
    }
	@RequestMapping(value="/addNotice",method = RequestMethod.POST)	
    public String addNotice(Notice notice,Model model){  
		noticeService.addNotice(notice);  
        return "redirect:/findAllNotice";  
    }
	
	 //删除
    @RequestMapping(value="/delNotice")  
    public String deleteNotice(int id,HttpServletRequest request,HttpServletResponse response){  
    	noticeService.deleteNotice(id);  
        return "redirect:findAllNotice";  
    } 
	
	//修改
	@RequestMapping("/findNoticeById")
	public String findNoticeById(int id,HttpServletRequest request,Model model) {
		request.setAttribute("notice", noticeService.findNoticeById(id));  
        model.addAttribute("notice", noticeService.findNoticeById(id));
		return "notice_update";
	}
	@RequestMapping("/findNoticeById_v")
	public String findNoticeById_v(int id,HttpServletRequest request,Model model) {
		request.setAttribute("notice", noticeService.findNoticeById(id));  
        model.addAttribute("notice", noticeService.findNoticeById(id));
		return "notice_view1";
	}

	@RequestMapping(value="/modifyNotice")  
  public String modifyNotice(Notice notice,HttpServletRequest request,Model model){  	
      if(noticeService.updateNotice(notice)){   
      	  notice = noticeService.findNoticeById(notice.getId());
          request.setAttribute("notice", notice);  
          model.addAttribute("notice", notice);  
//	          return "notice_view1";  
          return "redirect:findAllNotice";  
      }else{  
          return "error";  
      }  
  }
	
	@RequestMapping("/findNoticeByTitle")
	public String findNoticeByTitle(String title,HttpServletRequest request,Model model) {
		request.setAttribute("notice", noticeService.findNoticeByTitle(title));
		model.addAttribute("notice",noticeService.findNoticeByTitle(title));
		return "notice_view";
	}
	
	@RequestMapping(path = "/findNoticeByTitle_list",method = RequestMethod.GET)
	public String findNoticeByTitleList(String title,HttpServletRequest request,Model model) {
		request.setAttribute("noticeList", noticeService.findNoticeByTitle(title));
		model.addAttribute("noticeList",noticeService.findNoticeByTitle(title));
		return "notice_list";
	}
	
	@RequestMapping("/displayNoticeTitle")
	public String displayNoticeTitle(HttpServletRequest request,Model model) {
		List<Notice> notice = noticeService.displayNoticeTitle();
		request.setAttribute("noticeList", notice);
        model.addAttribute("noticeList", notice);
		return "index_notice";
	}
	
	@RequestMapping(value="/findAllNotice")
	public String findAllNotice(HttpServletRequest request,Model model) {
		List<Notice> notice = noticeService.findAllNotice();  
        model.addAttribute("noticeList", notice);  
        request.setAttribute("noticeList", notice); 
		return "notice_list";
	}
	
}
