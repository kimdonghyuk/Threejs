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

	
}
