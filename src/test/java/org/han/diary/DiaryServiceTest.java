package org.han.diary;

import javax.inject.Inject;

import org.han.service.DiaryService;
import org.han.util.PageMaker;
import org.han.vo.DiaryVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class DiaryServiceTest {

	@Inject
	DiaryService service;
	
	@Test
	public void createTest() {
		DiaryVO vo = new DiaryVO();
		vo.setTitle("������ �����");
		vo.setCont("�� �ӿ� ���� ������� �λ����̴�.");
		vo.setUserid("han07");
		vo.setContfile("�ܿﵿ���.jpg");
		vo.setTag("�����");
		service.createDiary(vo);
	}

	@Test
	public void readTest(){
		PageMaker pm = new PageMaker();
		System.out.println(service.readDiary(pm).toString());
	}
	
	@Test
	public void updateTest(){
		DiaryVO vo = new DiaryVO();
		vo.setTitle("������ ������Դϴ�.");
		vo.setCont("�� �ӿ� ���� ������� �λ����̴�.");
		vo.setUserid("han07");
		vo.setContfile("�ܿﵿ���.jpg");
		vo.setTag("�ܿﵿ���");
		vo.setDno(8);
		service.updateDiary(vo);
	}
	
	@Test
	public void deleteTest(){
		service.deleteDiary(8);
	}

}
