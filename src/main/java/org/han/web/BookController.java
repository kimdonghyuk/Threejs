package org.han.web;

import java.util.List;

import javax.inject.Inject;

import org.han.service.PageService;
import org.han.vo.PageVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/book/*")
public class BookController {

	@Inject
	PageService bookService;
	
	@RequestMapping("/main")
	public void search(){}
	
	@RequestMapping("/regist")
	public void regist(){}                                                                                                        
	
	@RequestMapping("/regphoto")
	public void regPhoto(){}
	
	@RequestMapping("/sample")
	public void sample(){}
	
	
	@RequestMapping("/sample/list")
	public @ResponseBody List<PageVO> serviceList(
			@RequestParam(value = "page", defaultValue = "1")int page){
		return bookService.readPage(page);
	}
	
	@RequestMapping("/createPicture")
	public String createPicture(@ModelAttribute PageVO vo){
		/*vo.setContfile("null");*/
		vo.setBno(2);
		vo.setUserid("han07");
		System.out.println(vo.toString());
		bookService.createPicture(vo);;
		return "redirect:main";
	}
	

}
