package org.han.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypages")
public class MypagesController {

	
	@RequestMapping("/main")
	public void main(){}
	
}
