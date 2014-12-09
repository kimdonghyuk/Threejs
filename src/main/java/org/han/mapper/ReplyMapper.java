package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.han.vo.ReplyVO;

public interface ReplyMapper {

	@Insert("insert into tbl_reply(dno, rno, userid, reply)"
			+ " values(#{dno}, seq_reply.nextval, #{userid}, #{reply})")
	public void createReply(ReplyVO vo);
	
	@Select(" select "
			+ " dno, rno, userid, reply, regdate "
			+ " from tbl_reply"
			+ " where dno=#{dno}"
			+ "order by rno")
	public List<ReplyVO> readReply(int dno);
	
	@Update("update tbl_reply "
			+ " set reply=#{reply}"
			+ " where rno=#{rno}")
	public void updateReply(ReplyVO vo);
	
	@Delete("delete tbl_reply"
			+ " where rno=#{rno}")
	public void deleteReply(String rno);
	
	@Update("update tbl_diary"
			+ " set rcount=rcount+1"
			+ " where dno=#{dno}")
	public void updateRcount(String dno);
	
	@Update("update tbl_diary"
			+ " set rcount=rcount-1"
			+ " where dno=#{dno}")
	public void downRcount(String dno);
	
}
