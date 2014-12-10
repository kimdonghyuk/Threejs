package org.han.web;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.han.service.DiaryService;
import org.han.util.PageMaker;
import org.han.vo.DiaryVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/diary/*")
public class DiaryController {
	
	private static Logger logger = LoggerFactory.getLogger("DiaryLogger");
	
	@Inject
	DiaryService service;	
	
	@RequestMapping("/main")
	public void readDiary(@RequestParam(value="page", defaultValue="1")String[] types,
			HttpServletRequest request, @ModelAttribute PageMaker pm, Model model){
		   Cookie[] cookies = request.getCookies();
		   String userid = null;

		   for (Cookie cookie : cookies) {

			   System.out.println("getName: " + cookie.getName());
			   System.out.println("getValue: " + cookie.getValue());

			   if (cookie.getName().equals("login")) {
				   userid = cookie.getValue();
			   }

		   }
		   pm.setUserid(userid);
		model.addAttribute("list", service.readDiary(pm));
	}
	
	@RequestMapping("/write")
	public void wirte(){
	}
	
	@RequestMapping("/createDiary")
	public String createDiary(HttpServletRequest request, @ModelAttribute DiaryVO vo){
		   Cookie[] cookies = request.getCookies();
		   String userid = null;

		   for (Cookie cookie : cookies) {

			   System.out.println("getName: " + cookie.getName());
			   System.out.println("getValue: " + cookie.getValue());

			   if (cookie.getName().equals("login")) {
				   userid = cookie.getValue();
			   }

		   }
		   vo.setUserid(userid);
		service.createDiary(vo);
		return "redirect:main";
	}
	  
	@RequestMapping("/deleteDiary")
	public String deleteDiary(@RequestParam(value="dno",defaultValue="")int dno){
		service.deleteDiary(dno);
		return "redirect:main";
	}
	
	@RequestMapping("/update")
	public String updateDiary(@ModelAttribute DiaryVO vo){
		service.updateDiary(vo);
		return "redirect:/diary/main";
	}
	
	
	
}
