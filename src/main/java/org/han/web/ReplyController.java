package org.han.web;

import java.util.List;

import javax.inject.Inject;

import org.han.service.ReplyService;
import org.han.vo.ReplyVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/diary/reply/*")
public class ReplyController {

	@Inject
	ReplyService service;
	
	@RequestMapping("/read")
	public @ResponseBody List<ReplyVO> readReply(
			@RequestParam(value="dno", defaultValue ="")int dno){
		return service.readReply(dno);
	}
	
	@RequestMapping("/create")
	public @ResponseBody void createReply(@ModelAttribute ReplyVO vo){
		vo.setUserid("han07");
		service.createReply(vo);
	}
	
	@RequestMapping("/delete")
	public @ResponseBody void deleteReply(@RequestParam(value="rno", defaultValue="") String rno){
		service.deleteReply(rno);
	}
	
	@RequestMapping("/update")
	public @ResponseBody void updateReply(@ModelAttribute ReplyVO vo){
		service.updateReply(vo);
	}
	
	@RequestMapping("/upcount")
	public @ResponseBody void updateRcount(@RequestParam(value="dno", defaultValue ="") String dno){
		service.updateRcount(dno);
	}
	
	@RequestMapping("/downcount")
	public @ResponseBody void downcount(@RequestParam(value="dno", defaultValue="") String dno){
		service.downRcount(dno);
	}
	
}
