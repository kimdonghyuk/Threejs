package org.han.service;

import javax.inject.Inject;

import org.han.mapper.UserMapper;
import org.han.vo.UserVO;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	@Inject
	UserMapper mapper;
	
	public UserVO readInfo(UserVO vo) throws Exception{
		return mapper.readInfo(vo);
	}
	
	public UserVO login(UserVO vo)  throws Exception{
		return mapper.login(vo);
	}
	
	public void createUser(UserVO vo) throws Exception{
		mapper.createUser(vo);
	}
	public void updateUser(UserVO vo) throws Exception{
		mapper.updateUser(vo);
	}
	public void deleteUser(UserVO vo) throws Exception{
		
		mapper.deleteUser(vo);
	}
	

}
