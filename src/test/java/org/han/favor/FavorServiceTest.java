package org.han.favor;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.han.service.FavorService;
import org.han.vo.FavorVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class FavorServiceTest {
	
	static Logger logger = Logger.getLogger("FavorServiceTest");

	@Inject
	FavorService service;
	
	@Inject
	FavorVO vo;
	
	
	@Test
	public void list() {
		List<FavorVO> list=service.list("han01");
		logger.info(list.toString());
	}
	
	@Test
	public void addFavor(){
		vo.setCno(4);
		vo.setUserid("han01");
		service.add(vo);
	
	}
	
	@Test
	public void delFavor(){
		vo.setFno(4);
		service.del(vo.getFno());
	}

}
