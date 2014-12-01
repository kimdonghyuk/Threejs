package org.han.user;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.han.VO.UserVO;
import org.han.service.UserService;
import org.junit.Test;

public class UserServiceTest {

	@Inject
	UserService service;

	@Test
	public void resadTest() {
		
		UserVO resutl =service.readInfo("han00");
		System.out.println(resutl);
		
	}

}
