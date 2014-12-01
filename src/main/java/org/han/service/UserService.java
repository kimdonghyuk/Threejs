package org.han.service;

import javax.inject.Inject;

import org.han.VO.UserVO;
import org.han.mapper.UserMapper;
import org.springframework.stereotype.Service;

@Service
public class UserService {

@Inject
UserVO vo;

@Inject
UserMapper mapper;

	public UserVO readInfo(String userid) {
		
		return mapper.readInfo(userid);
		
	}
	
}
