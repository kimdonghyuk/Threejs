package org.han.service;

import javax.inject.Inject;

import org.han.mapper.UserMapper;
import org.han.vo.UserVO;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	@Inject
	UserMapper mapper;
	
	public UserVO readInfo(UserVO vo){
		return mapper.readInfo(vo);
	}
	
	public void createUser(UserVO vo){
		mapper.createUser(vo);
	}
	public void updateUser(UserVO vo){
		mapper.updateUser(vo);
	}
	public void deleteUser(UserVO vo){
		
		mapper.deleteUser(vo);
	}
	

}
