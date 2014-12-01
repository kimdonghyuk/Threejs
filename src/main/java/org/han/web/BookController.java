package org.han.web;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/book/*")
public class BookController {

	
	@RequestMapping("/main")
	public void search(){}
	
	@RequestMapping("/regist")
	public void regist(){}
	
	@RequestMapping("/regphoto")
	public void regPhoto(){}
	
	@RequestMapping("/sample")
	public void sample(){}
<<<<<<< HEAD

=======
	
	// 도감 전체보기 화면 smaple list ajax로 쏴주기
	@RequestMapping("/sample/list")
	public @ResponseBody List<PageVO> serviceList(
			@RequestParam(value = "page", defaultValue = "1")int page){
		return bookService.readPage(page);
	}
>>>>>>> 4b2a66f3da651da722e2be2a680bc6534355d5f9
	
}
