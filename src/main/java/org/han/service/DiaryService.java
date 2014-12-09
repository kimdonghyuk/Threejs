package org.han.service;

import java.util.List;

import javax.inject.Inject;

import org.han.mapper.DiaryMapper;
import org.han.util.PageMaker;
import org.han.vo.DiaryVO;
import org.springframework.stereotype.Service;

@Service
public class DiaryService {

	@Inject
	DiaryMapper mapper;
	
	public void createDiary(DiaryVO vo){
		mapper.createDiary(vo);
	}

	public List<DiaryVO> readDiary(PageMaker pm){
		List<DiaryVO> list = mapper.readDiary(pm);
		pm.setCnt(list.get(0).getCnt());
		return list;
	}
	
	public void updateDiary(DiaryVO vo){
		mapper.updateDiary(vo);
	}
	
	public void updateRcount(int dno){
		mapper.updateRcount(dno);
	}
	
	public void deleteDiary(int dno){
		mapper.deleteDiary(dno);
	}
	
}
