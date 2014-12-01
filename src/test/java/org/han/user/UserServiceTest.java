package org.han.user;

import javax.inject.Inject;

import org.han.mapper.UserMapper;
import org.han.service.UserService;
import org.han.vo.UserVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/**/*-context.xml" })
public class UserServiceTest {
	
	private static Logger logger = LoggerFactory.getLogger(UserServiceTest.class);

	@Inject
	UserService service;
	
	@Inject
	UserVO vo;
	
	@Inject
	UserMapper mapper;

	@Test
	public void resadTest() {
		
		vo.setUserid("han00");
		logger.info(service.readInfo(vo).toString());

	}
	
	@Test
	public void creaetest(){
		vo.setUserid("han06");
		vo.setPw("han06");
		vo.setEmail("han06@han.net");
		service.createUser(vo);
	}
	
	@Test
	public void updateTest(){
		vo.setUserid("han06");
		vo.setPw("han00");
		vo.setEmail("han00@han.net");
		service.updateUser(vo);
	}
	
	@Test
	public void deleteTest(){
		vo.setUserid("han06");
		service.deleteUser(vo);
	}

}
