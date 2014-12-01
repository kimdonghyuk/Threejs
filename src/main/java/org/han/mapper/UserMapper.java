package org.han.mapper;

import org.apache.ibatis.annotations.Select;

public interface UserMapper {
	
	
	@Select("select * from tbl_user where userid=#{userid}")
	public String[] readId();
	

}
