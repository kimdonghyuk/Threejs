package org.han.service;

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
	
	public List<SearchVO> setResult(String rootSet){
		return mapper.setResult(rootSet);
	}
	
	public SearchVO result(int sno){
		return mapper.result(sno);
	}
	
	public List<ContVO> setCont(int sno){
		return mapper.setCont(sno);
	}
}
