package org.han.book;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.han.mapper.PageMapper;
import org.han.vo.PageVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class PageMapperTest {

	static Logger logger = Logger.getLogger("TEST");
	
	@Inject
	PageMapper mapper;
	
	@Test
	public void insertTest() {		
		PageVO vo = new PageVO();
		vo.setBno(2);
		vo.setCont("꽃이 모양이 마치 치마처럼 생겨서 이런 이름인가보다.");
		vo.setContfile("처녀치마.jpg");
		vo.setTitle("처녀치마");
		vo.setUserid("han07");
		mapper.createPicture(vo);
	}
	
	@Test
	public void readTest(){
		logger.info(mapper.readPage(2));
	}
	
	@Test
	public void deleteTest(){
		mapper.deletePage(23);
	}
	
	@Test
	public void updateTest(){
		PageVO vo = new PageVO();
		vo.setPno(22);
		vo.setTitle("튤립");
		vo.setCont("봉오리가 이쁘다이쁘다.");
		vo.setContfile("튤립.jpg");
		
		mapper.updatePage(vo);
		
	}

}
