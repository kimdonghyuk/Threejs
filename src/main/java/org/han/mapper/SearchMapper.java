package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.han.vo.ContVO;
import org.han.vo.SearchVO;

public interface SearchMapper {
	
	@Select("select rn,sno,contfile,cnt from"
			+ " (select rownum rn, sno, contfile, count(rownum) over() cnt from tbl_search where sno>0 and root like '%'||#{rootSet}||'%')"
			+ " where rn > (#{page}-1)*8 and rn<=(#{page}*8)")
	public List<SearchVO> setResult(@Param("rootSet") String rootSet, @Param("page") int page);
	
	@Select("select * from tbl_search where sno = #{sno}")
	public SearchVO result(int sno);
	
	@Select("select cno, title from tbl_cont where sno = #{sno}")
	public List<ContVO> setCont(int sno);
}