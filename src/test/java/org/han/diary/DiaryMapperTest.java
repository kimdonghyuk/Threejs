package org.han.diary;

import javax.inject.Inject;

import org.han.mapper.DiaryMapper;
import org.han.util.PageMaker;
import org.han.vo.DiaryVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class DiaryMapperTest {

	
	@Inject
	DiaryMapper mapper;
	
	@Test
	public void createTest() {
		DiaryVO vo = new DiaryVO();
		vo.setTitle("´«¼ÓÀÇ µ¿¹é²É");
		vo.setCont("´« ¼Ó¿¡ ¹¯Èù µ¿¹é²ÉÀÌ ÀÎ»óÀûÀÌ´Ù.");
		vo.setUserid("han07");
		vo.setContfile("°Ü¿ïµ¿¹é²É.jpg");
		vo.setTag("µ¿¹é²É");
		mapper.createDiary(vo);
	}

	@Test
	public void readTest(){
		PageMaker pm = new PageMaker();
		System.out.println(mapper.readDiary(pm).toString());
	}
	
	@Test
	public void updateTest(){
		DiaryVO vo = new DiaryVO();
		vo.setTitle("´«¼ÓÀÇ µ¿¹é²ÉÀÔ´Ï´Ù.");
		vo.setCont("´« ¼Ó¿¡ ¹¯Èù µ¿¹é²ÉÀÌ ÀÎ»óÀûÀÌ´Ù.");
		vo.setUserid("han07");
		vo.setContfile("°Ü¿ïµ¿¹é²É.jpg");
		vo.setTag("°Ü¿ïµ¿¹é²É");
		vo.setDno(8);
		mapper.updateDiary(vo);
	}
	
	@Test
	public void deleteTest(){
		mapper.deleteDiary(8);
	}
}
