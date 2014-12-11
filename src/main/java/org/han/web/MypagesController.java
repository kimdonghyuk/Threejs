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
@RequestMapping("/mypages")
public class MypagesController {

	@Inject
	UserService service;

	@RequestMapping("/main")
	public String main(@ModelAttribute UserVO vo, Model model,
			HttpServletRequest request, HttpServletResponse response) {

		Cookie[] cookies = request.getCookies();
		String userid = null;

		for (Cookie cookie : cookies) {

			System.out.println("getName: " + cookie.getName());
			System.out.println("getValue: " + cookie.getValue());

			if (cookie.getName().equals("login")) {
				userid = cookie.getValue();
			}

		}
		try {
			vo.setUserid(userid);
			System.out.println("userid: " + userid);
			model.addAttribute("user", service.readInfo(vo));
			return "mypages/main";

		} catch (Exception e) {

			model.addAttribute("error", "로그인이 필요한 페이지 입니다.");
			return "user/login";
		}

	}

	@RequestMapping("/update")
	public String update(@ModelAttribute UserVO vo, Model model) {
		try {
			model.addAttribute("user", service.readInfo(vo));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "mypages/update";
	}

	@RequestMapping("/modify")
	public String modify(@ModelAttribute UserVO vo, Model model) {

		try {
			service.updateUser(vo);
			model.addAttribute("user", service.readInfo(vo));
			return "mypages/main";

		} catch (Exception e) {
			model.addAttribute("error", "정상적으로 업데이트되지 않았습니다.");

			return "mypages/update";
		}
	}

	@RequestMapping("/delete")
	public String delete(@ModelAttribute UserVO vo, Model model) {

		try {
			service.deleteUser(vo);
			return "index";

		} catch (Exception e) {
			model.addAttribute("error", "정상적으로 계정이 삭제되지 않았습니다.");
			return "mypages/update";
		}
	}
}
