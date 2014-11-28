package org.han.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/favor/*")
public class favorController {

	
	@RequestMapping("/main")
	public void main(){}
	
}
