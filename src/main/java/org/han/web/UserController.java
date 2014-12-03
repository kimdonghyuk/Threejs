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
		
		try {
			service.createUser(vo);
			return "redirect:/index";
			
		} catch (Exception e) {
			model.addAttribute("msg","이미 해당 아이디가 존재합니다");
			return "/user/regist";
		}
		
	}
	
	@RequestMapping("/read")
	public String readUser(@ModelAttribute UserVO vo, Model model, HttpServletRequest request  , HttpServletResponse response){
		
		
		UserVO vo2 = service.readInfo(vo);
		
		
		if (vo2 == null){
//			model.addAttribute("error", "<script>alert('ID또는 비밀번호가 맞지 않습니다.')</script>");
			model.addAttribute("error", "ID또는 비밀번호가 맞지 않습니다.");
			
			return "/user/login";
			
		}else{
			
			model.addAttribute("read", service.readInfo(vo));
			Cookie cookie = new Cookie("login", service.readInfo(vo).getUserid());
			cookie.setMaxAge(60*30);
			cookie.setPath("/");
			response.addCookie(cookie);
			
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
			return "redirect:/index";		
		
	}
	@RequestMapping("/regist")
	public void regist(@ModelAttribute UserVO vo, Model model){}
}
