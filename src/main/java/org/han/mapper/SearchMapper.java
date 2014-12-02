package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.han.vo.SearchVO;

public interface SearchMapper {
	
	@Select("select sno,contfile from tbl_search where root like '%'||#{rootSet}||'%'")
	public List<SearchVO> setResult(String rootSet);
	
	@Select("select * from tbl_search where sno = #{sno}")
	public SearchVO result(int sno);
}