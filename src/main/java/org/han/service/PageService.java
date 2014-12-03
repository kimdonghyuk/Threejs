package org.han.service;

import java.util.List;

import javax.inject.Inject;

import org.han.mapper.PageMapper;
import org.han.vo.BookVO;
import org.han.vo.PageVO;
import org.springframework.stereotype.Service;

@Service
public class PageService {

	@Inject
	PageMapper mapper;
	
	public void createPicture(PageVO vo){
		mapper.createPicture(vo);
	}
	
//	public List<PageVO> readPage(int page, int bno){
//		return mapper.readPage(page, bno);
//	}
	
	public List<PageVO> readPage(PageVO vo){
		return mapper.readPage(vo);
	}
	
	public void deletePage(int pno){
		mapper.deletePage(pno);
	}
	
	public void updatePage(PageVO vo){
		mapper.updatePage(vo);
	}

	public List<BookVO> selectBook(){
		return mapper.selectBook();
	}
	
	public PageVO read(PageVO vo){
		return mapper.read(vo);
	}
}
