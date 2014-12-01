package org.han.mapper;

import org.apache.ibatis.annotations.Select;
import org.han.VO.UserVO;

public interface UserMapper {
	
	
	@Select("select * from tbl_user where userid=#{userid}")
	public UserVO readInfo(String userid);
	

}
