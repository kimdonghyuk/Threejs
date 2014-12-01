package org.han.web;

import javax.inject.Inject;

import org.han.service.UserService;
import org.han.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user/*")
public class UserController {
	@Inject
	
	UserService service;
	
	@RequestMapping("/create")
	public void createUser(@ModelAttribute UserVO vo, Model model){
		
		service.createUser(vo);
		model.addAttribute("user" , vo);
		
	}
	
	@RequestMapping("/read")
	public void readUser(@ModelAttribute UserVO vo, Model model){
		
		model.addAttribute("read", service.readInfo(vo));	
	}
	
	@RequestMapping("/update")
	public void updateUser(@ModelAttribute UserVO vo, Model model){
		
		service.updateUser(vo);
		model.addAttribute("update", vo);
	}
	
	@RequestMapping("/delete")
	public void deleteUser(@ModelAttribute UserVO vo, Model model){
		service.deleteUser(vo);
		model.addAttribute("delete", vo);
	}
}
