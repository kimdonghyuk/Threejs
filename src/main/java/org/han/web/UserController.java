package org.han.web;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.han.service.UserService;
import org.han.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/*")
public class UserController {
	@Inject
	
	UserService service;
		
	@RequestMapping("/userprint")
	public void print(){
		
	}
	
	
	@RequestMapping("/create")
	public String createUser(@ModelAttribute UserVO vo, Model model){
		
		service.createUser(vo);
		model.addAttribute("user" , vo);
		return "/index";
		
	}
	
	@RequestMapping("/read")
	public String readUser(@ModelAttribute UserVO vo, Model model, HttpServletRequest request  , HttpServletResponse response){
		
		
		UserVO vo2 = service.readInfo(vo);
		
		
		if (vo2 == null){
			model.addAttribute("error", "ID 또는 Pw 가 일치하지 않습니다.");		
			return "/user/login";
			
		}else{
			
			model.addAttribute("read", service.readInfo(vo));
			Cookie cookie = new Cookie("login", service.readInfo(vo).getUserid());
			cookie.setMaxAge(180);
			cookie.setPath("/");
			response.addCookie(cookie);
			
			System.out.println("userController_ login 성공 : "+cookie.getName());
			
			return "redirect:/index";
		}		
		
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
	
	@RequestMapping("/login")
	public void loginpage(@ModelAttribute UserVO vo, Model model){
		
	}
	
	@RequestMapping("/logout")
	public String logout(@ModelAttribute UserVO vo, Model model, HttpServletRequest request  , HttpServletResponse response){
			
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				
				if (cookie.getName().equals("login")){
					cookie.setMaxAge(0);
					cookie.setPath("/");
					response.addCookie(cookie);
				}
			}
			System.out.println("로그아웃 성공!!!");
			return "redirect:/index";		
		
	}
	
}
