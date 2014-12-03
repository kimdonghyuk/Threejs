package org.han.book;

import java.util.List;

import javax.inject.Inject;

import org.han.service.BookService;
import org.han.vo.BookVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class BookMapperTest {

	@Inject
	BookService service;
	
	@Inject
	BookVO vo;
	
	@Test
	public void ReadTest() {
		List<BookVO> list = service.read("1");
		System.out.println(list);
	}
	
	@Test
	public void CreateTest() {
		vo.setUserid("han03");
		vo.setTitle("테스트2입니다.");
		vo.setContfile("aaa.jpg");
		service.create(vo);
	}
	
	@Test
	public void UpdateTest() {
		vo.setBno(2);
		vo.setTitle("Update Junit Test");
		service.update(vo);
	}
	//Delete no Test
	@Test
	public void DeleteTest() {
		service.delete(2);
	}

}
