package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.han.VO.ThreeVO;

public interface ThreeMapper {
	
	
	
	@Select("select "
			+ " rownum rn, tno, title, userid, regdate, contfile, ceil(cnt/25) cnt "
			+ " from ("
			+ " select  /*+INDEX(tbl_three pk_three) */ "
			+ " rownum rn, tno, title, userid, regdate, contfile, count(tno) over() cnt"
			+ " from tbl_three"
			+ " where tno > 0)"
			+ " where rn > (#{page}-1)*25 and rn <= (#{page}*25)")
	public List<ThreeVO> list(int page);

}