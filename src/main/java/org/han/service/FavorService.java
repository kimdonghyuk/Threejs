package org.han.service;


import java.util.List;

import javax.inject.Inject;

import org.han.mapper.FavorMapper;
import org.han.vo.ContVO;
import org.han.vo.FavorVO;
import org.springframework.stereotype.Service;

@Service
public class FavorService {
	
	@Inject
	FavorMapper mapper;

	
	public void add(FavorVO vo){
		mapper.addFavor(vo);
	}
	
	public void del(Integer fno){
		mapper.delFavor(fno);
	}

	public List<FavorVO> list(String userid)
	{
		return mapper.list(userid);
	}
	
	
	public ContVO contList(Integer cno)
	{
		return mapper.contList(cno);
	}
	
	
}
