package org.han.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.han.service.FavorService;
import org.han.vo.ContVO;
import org.han.vo.FavorVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/favor/*")
public class favorController {

	@Inject
	FavorService service;
	
	@Inject
	FavorVO vo;
	
	
	@RequestMapping("/main")
	public String main(@ModelAttribute FavorVO vo, Model model,
			HttpServletRequest request) {

		Cookie[] cookies = request.getCookies();
		String userid = null;

		for (Cookie cookie : cookies) {

			System.out.println("getName: " + cookie.getName());
			System.out.println("getValue: " + cookie.getValue());

			if (cookie.getName().equals("login")) {
				userid = cookie.getValue();
			}

		}

		List<FavorVO> list=service.list(userid);
		model.addAttribute("list",list);
		
		return "favor/main";

	}
	
	@RequestMapping("list")
	public @ResponseBody List<FavorVO> list(@ModelAttribute FavorVO vo, Model model,HttpServletRequest request){
		Cookie[] cookies = request.getCookies();
		String userid = null;

		for (Cookie cookie : cookies) {

			if (cookie.getName().equals("login")) {
				userid = cookie.getValue();
			}

		}

		List<FavorVO> list=service.list(userid);
		return list;
		
	}
	
	
	@RequestMapping("/detail")
	@ResponseBody
	public ContVO contList(@ModelAttribute ContVO vo,Model model){
		ContVO vo2 = service.contList(vo.getCno());
		vo2.setFno(vo.getFno());
//		System.out.println(vo2);
		return vo2;
		
	}
	
	@RequestMapping("/delFavor")
	public String delete(@RequestParam(value="fno" , defaultValue="") Integer fno){
		
		service.del(fno);
		return "redirect:main";
	}
	
	//addFavor from search result
	@RequestMapping("/addFavor")
	public @ResponseBody void addFavor(@RequestParam(value="cno" , defaultValue="") Integer cno, HttpServletRequest request){
		
		Cookie[] cookies = request.getCookies();
		String userid = null;

		for (Cookie cookie : cookies) {

			if (cookie.getName().equals("login")) {
				userid = cookie.getValue();
			}
		}
		vo.setCno(cno);
		vo.setUserid(userid);
		
		System.out.println(vo);
		service.add(vo);
		//return "redirect:/search/contList";
	}
	


}
