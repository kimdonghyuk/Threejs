package org.han.service;


import java.util.List;

import javax.inject.Inject;

import org.han.mapper.FavorMapper;
import org.han.vo.FavorVO;
import org.springframework.stereotype.Service;

@Service
public class FavorService {
	
	@Inject
	FavorMapper mapper;

	
	public void add(FavorVO vo){
		mapper.addFavor(vo);
	}
	
	public void del(FavorVO vo){
		mapper.delFavor(vo);
	}

	public List<FavorVO> list(String userid)
	{
		return mapper.list(userid);
	}
	
}
