package org.han.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.han.vo.UserVO;

public interface UserMapper {

	@Select("select * from tbl_user where userid=#{userid} and pw=#{pw}")
	public UserVO login(UserVO vo);

	@Select("select userid, pw, email, exp"
			+ " from (select u.userid, u.pw, u.email, page.exp+diary.exp exp"
			+ " from"
			+ " (select userid, pw, email from tbl_user where userid=#{userid}) u,"
			+ " (select count(userid) exp from tbl_page where userid=#{userid}) page,"
			+ " (select count(userid) exp from tbl_diary where userid=#{userid}) diary)")
	public UserVO readInfo(UserVO vo);

	@Insert("insert into tbl_user (userid,pw,email) values(#{userid},#{pw},#{email})")
	public void createUser(UserVO vo);

	@Update("update tbl_user set pw=#{pw},email=#{email} where userid=#{userid}")
	public void updateUser(UserVO vo);

	@Delete("delete from tbl_user where userid=#{userid}")
	public void deleteUser(UserVO vo);

}
