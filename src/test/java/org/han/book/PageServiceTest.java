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
		vo.setCont("���� ����� �ʷպ�ó�� �Ŵ޷� �־ �ʷղ��̶��.");
		vo.setContfile("�ʷղ�.jpg");
		vo.setTitle("�ʷղ�");
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
		vo.setTitle("ƫ��");
		vo.setCont("�������� �̻ڴ��̻ڴ�.");
		vo.setContfile("ƫ��.jpg");
		
		service.updatePage(vo);
		
	}
	
	
}
