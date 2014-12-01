package org.han.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.han.VO.UserVO;

public interface UserMapper {
	
	
	@Select
	("select * from tbl_user where userid=#{userid}")
	public UserVO readInfo(UserVO userid);
	
	@Insert
	("insert into tbl_user (userid,pw,email) values(#{userid},#{userpw},#{email}")
	public void createUser();
	
	@Update
	("update tbl_user set pw=#{pw},email=#{email} where userid=#{userid}")
	public void updateUser();
	
	@Delete
	("delete from tbl_user where userid=#{userid}")
	public void deleteUser();
	

}
