package org.han.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.han.mapper.SearchMapper;
import org.han.vo.ContVO;
import org.han.vo.SearchVO;
import org.springframework.stereotype.Service;

@Service
public class SearchService {
	
	@Inject
	SearchMapper mapper;
	
	public List<SearchVO> setResult(String rootSet, int page){
		return mapper.setResult(rootSet, page);
	}
	
	public SearchVO result(int sno){
		return mapper.result(sno);
	}
	
	public List<ContVO> setCont(String[] keySet){
		return mapper.setCont(keySet);
	}
	
	public List<ContVO> contList(String[] cnoSet){
		return mapper.contList(cnoSet);
	}
	
	public ContVO viewCont(int cno){
		return mapper.viewCont(cno);
	}
}
