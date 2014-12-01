package org.han.service;

import javax.inject.Inject;

import org.han.mapper.UserMapper;
import org.han.vo.UserVO;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	@Inject
	UserMapper mapper;
	
	@Inject
	UserVO vo;
	
	public UserVO readinfo(UserVO userid){
		return mapper.readInfo(userid);
	}

}
