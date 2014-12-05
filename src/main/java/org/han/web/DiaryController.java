package org.han.web;

import javax.inject.Inject;

import org.han.service.DiaryService;
import org.han.util.PageMaker;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/diary/*")
public class DiaryController {
	
	@Inject
	DiaryService service;	
	
	@RequestMapping("/main")
	public void readDiary(@RequestParam(value="page", defaultValue="1")String[] types,
			@ModelAttribute PageMaker pm, Model model){
		model.addAttribute("list", service.readDiary(pm));
	}
	
	@RequestMapping("/write")
	public void wirte(){}
}
