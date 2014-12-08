package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.han.vo.ContVO;
import org.han.vo.FavorVO;

public interface FavorMapper {
	
//	즐겨찾기 목록 추가
	@Insert
	("insert into tbl_favor values(seq_favor.nextval,#{userid},#{cno})")
	public void addFavor(FavorVO vo);
	
// 즐겨찾기 삭제
	@Delete
	("DELETE FROM tbl_favor WHERE fno = #{fno}")
	public void delFavor(Integer fno);

//	userid에 해당하는 즐겨찾기 리스트
	@Select
	("select c.cno, c.sno, c.title, c.cont, c.contfile, c.cate, f.userid, f.fno" 
			+" from tbl_cont c, tbl_favor f"
			+" where userid=#{userid} and c.cno=f.cno")
	public List<FavorVO> list(String userid);
	
	@Select
	("select * from tbl_cont where cno=#{cno}")
	public ContVO contList(Integer cno);

	
}