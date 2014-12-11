package org.han.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;

import org.han.service.SearchService;
import org.han.vo.ContVO;
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
		System.out.println(keys);
		String[] keySet = keys.split(",");
		System.out.println(Arrays.toString(keySet));
		return service.setCont(keySet);
	}
}
