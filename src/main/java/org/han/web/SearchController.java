package org.han.web;

import java.util.List;

import javax.inject.Inject;

import org.han.service.SearchService;
import org.han.vo.SearchVO;
import org.springframework.stereotype.Controller;
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
			@RequestParam(value="root", defaultValue="") String rootSet){
		return service.setResult(rootSet);
	}
	
	@RequestMapping("/result")
	public @ResponseBody SearchVO result(
			@RequestParam(value="sno", defaultValue="") int sno){
		return service.result(sno);
	}
}
