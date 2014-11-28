package org.han.web;

import java.util.List;

import javax.inject.Inject;

import org.han.VO.ThreeVO;
import org.han.service.ThreeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/book/*")
public class BookController {

	@Inject
	ThreeService service;
	
	@RequestMapping("/main")
	public void search(){}
	
	@RequestMapping("/regist")
	public void regist(){}
	
	@RequestMapping("/regphoto")
	public void regPhoto(){}
	
	@RequestMapping("/sample")
	public void sample(){}
	
	// 도감 전체보기 화면 smaple list ajax로 쏴주기
	@RequestMapping("/sample/list")
	public @ResponseBody List<ThreeVO> serviceList(
			@RequestParam(value = "page", defaultValue = "1")int page){
		return service.list(page);
	}
	
}
