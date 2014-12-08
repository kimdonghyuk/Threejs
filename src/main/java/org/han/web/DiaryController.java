package org.han.web;

import javax.inject.Inject;

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
			@ModelAttribute PageMaker pm, Model model){
		model.addAttribute("list", service.readDiary(pm));
	}
	
	@RequestMapping("/write")
	public void wirte(){
	}
	
	@RequestMapping("/createDiary")
	public String createDiary(@ModelAttribute DiaryVO vo){
		vo.setUserid("han07");
		service.createDiary(vo);
		return "redirect:main";
	}
	
	@RequestMapping("/deleteDiary")
	public String deleteDiary(@RequestParam(value="dno",defaultValue="")int dno){
		System.out.println(dno);
		service.deleteDiary(dno);
		return "redirect:main";
	}
	
}
