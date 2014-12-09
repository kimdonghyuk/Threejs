package org.han.book;

import java.util.List;

import javax.inject.Inject;

import org.han.mapper.BookMapper;
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
	BookMapper mapper;
	
	@Inject
	BookService service;
	
	@Inject
	BookVO vo;
	
	@Test
	public void ReadTest() {
		//List<BookVO> list = service.read("1");
		//System.out.println(list);
	}
	
	@Test
	public void CreateTest() {
		vo.setUserid("han03");
		vo.setTitle("테스트2입니다.");
		vo.setContfile("aaa.jpg");
		service.create(vo);
	}
	
	@Test
	public void showdataTest() {
		BookVO var = service.showdata(2);
		System.out.println(var.toString());
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
	
	@Test
	public void SelectMapper(){
		
		vo.setUserid("han03");
		//vo.setPage(1);
		List<BookVO> bvo = service.read(vo);
		System.out.println(bvo.toString());
		
	}

}
