package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.han.vo.PageVO;

public interface PageMapper {	
	
	@Insert("insert into tbl_page(pno, bno, userid, title, cont, contfile)"
			+ "values(seq_page.nextval, #{bno}, #{userid}, #{title}, #{cont}, #{contfile})")
	public void createPicture(PageVO vo);
	
	@Select("select"
			+ " rownum rn, pno, bno, title, userid, regdate, cont, contfile, ceil(cnt/9) cnt "
			+ " from( "
			+ " select  /*+INDEX(tbl_three pk_page) */ "
			+ " rownum rn, pno, bno, title, userid, regdate, cont, contfile, count(pno) over() cnt "
			+ " from tbl_page "
			+ " where pno > 0) "
			+ " where rn > (#{page}-1)*9 and rn <= (#{page}*9) ")
	public List<PageVO> readPage(int page);
	
	@Delete("delete from tbl_page where pno=#{pno}")
	public void deletePage(int pno);

	@Update("update tbl_page set title=#{title}, cont=#{cont}, contfile=#{contfile} where pno=#{pno}")
	public void updatePage(PageVO vo);

}
