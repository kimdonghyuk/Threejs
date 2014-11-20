package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.han.VO.ThreeVO;

public interface ThreeMapper {
	
	
	
	@Select("select * from tbl_three order by tno")
	public List<ThreeVO> list();

}
