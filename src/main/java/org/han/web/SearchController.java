package org.han.web;

import java.util.List;

import javax.inject.Inject;

import org.han.service.FavorService;
import org.han.service.SearchService;
import org.han.vo.ContVO;
import org.han.vo.SearchVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/search/*")
public class SearchController {
	
	@Inject
	SearchService service;
	
	@RequestMapping("/main")
	public void search(){}
	
	@RequestMapping("/setResult")
	public @ResponseBody List<SearchVO> setResult(
			@RequestParam(value="page", defaultValue="1") int page,
			@RequestParam(value="rootSet", defaultValue="") String rootSet){
		return service.setResult(rootSet,page);
	}
	
	@RequestMapping("/result")
	public @ResponseBody SearchVO result(
			@RequestParam(value="sno", defaultValue="") int sno){
		return service.result(sno);
	}
	
	@RequestMapping("/setCont")
	public @ResponseBody List<ContVO> setCont(
			@RequestParam(value="keySet", defaultValue="") String keys){
		String[] keySet = keys.split(",");
		return service.setCont(keySet);
	}
	@RequestMapping("/contList")
	public void contList(
			@RequestParam(value="cnoSet", defaultValue="") String cnos,
			@RequestParam(value="cno", defaultValue="") int cno,
			Model model){
		String[] cnoSet = cnos.split(",");
		model.addAttribute("list",service.contList(cnoSet));
		model.addAttribute("cno",cno);
	}
	@RequestMapping("/viewCont")
	public @ResponseBody ContVO viewCont(
			@RequestParam(value="cno", defaultValue="") int cno){
		return service.viewCont(cno);
	}
}
