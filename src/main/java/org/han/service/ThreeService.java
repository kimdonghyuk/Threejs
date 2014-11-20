package org.han.service;

import java.util.List;

import javax.inject.Inject;

import org.han.VO.ThreeVO;
import org.han.mapper.ThreeMapper;
import org.springframework.stereotype.Service;


@Service
public class ThreeService {

	@Inject
	ThreeMapper mapper;
	
	public List<ThreeVO> list(){
		return mapper.list();
	}
	
}
