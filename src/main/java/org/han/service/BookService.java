package org.han.service;

import java.util.List;

import javax.inject.Inject;

import org.han.mapper.BookMapper;
import org.han.vo.BookVO;
import org.springframework.stereotype.Service;

@Service
public class BookService {

	@Inject
	BookMapper mapper;
	
	@Inject
	BookVO vo;
	
	public List<BookVO> read(String page){
		return mapper.read(page);
	}
	
	public void create(BookVO vo){
		mapper.create(vo);
	}
	
	public void update(BookVO vo){
		mapper.update(vo);
	}
	
	public void delete(int bno){
		mapper.delete(bno);
	}
}
