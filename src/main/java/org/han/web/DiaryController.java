package org.han.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/diary/*")
public class DiaryController {

	@RequestMapping("/main")
	public void diary(){}
	
	@RequestMapping("/write")
	public void wirte(){}
}
