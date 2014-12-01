package org.han.book;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.han.service.PageService;
import org.han.vo.PageVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class PageServiceTest {

	static Logger logger = Logger.getLogger("TEST");
	
	@Inject
	PageService service;
	
	@Test
	public void InsertTest() {
		
		PageVO vo = new PageVO();
		vo.setBno(2);
		vo.setCont("²ÉÀÇ ¸ð¾çÀÌ ÃÊ·ÕºÒÃ³·³ ¸Å´Þ·Á ÀÖ¾î¼­ ÃÊ·Õ²ÉÀÌ¶ó³×.");
		vo.setContfile("ÃÊ·Õ²É.jpg");
		vo.setTitle("ÃÊ·Õ²É");
		vo.setUserid("han07");
		service.createPicture(vo);
	}

	@Test
	public void readTest(){
		
		logger.info(service.readPage(2));		
		
	}
	
	@Test
	public void deleteTest(){
		service.deletePage(23);
	}
	
	@Test
	public void updateTest(){
		PageVO vo = new PageVO();
		vo.setPno(22);
		vo.setTitle("Æ«¸³");
		vo.setCont("ºÀ¿À¸®°¡ ÀÌ»Ú´ÙÀÌ»Ú´Ù.");
		vo.setContfile("Æ«¸³.jpg");
		
		service.updatePage(vo);
		
	}
	
	
}
