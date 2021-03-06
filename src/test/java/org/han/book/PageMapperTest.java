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
		vo.setCont("���� ����� ��ġ ġ��ó�� ���ܼ� �̷� �̸��ΰ�����.");
		vo.setContfile("ó��ġ��.jpg");
		vo.setTitle("ó��ġ��");
		vo.setUserid("han07");
		mapper.createPicture(vo);
	}
	
	@Test
	public void readTest(){
		PageVO vo = new PageVO();
		vo.setBno(2);
		vo.setUserid("han07");
		vo.setPage(1);
		logger.info(mapper.readPage(vo));
	}
	
	@Test
	public void deleteTest(){
		mapper.deletePage(23);
	}
	
	@Test
	public void updateTest(){
		PageVO vo = new PageVO();
		vo.setPno(22);
		vo.setTitle("ƫ��");
		vo.setCont("�������� �̻ڴ��̻ڴ�.");
		vo.setContfile("ƫ��.jpg");
		
		mapper.updatePage(vo);
		
	}

}
