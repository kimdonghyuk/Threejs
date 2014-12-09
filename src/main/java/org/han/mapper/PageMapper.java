package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.han.vo.BookVO;
import org.han.vo.PageVO;

public interface PageMapper {	
	
	@Insert("insert into tbl_page(pno, bno, userid, title, cont, contfile)"
			+ " values(seq_page.nextval, #{bno}, #{userid}, #{title}, #{cont}, #{contfile})")
	public void createPicture(PageVO vo);
	
	@Select("select"
			+ " rownum rn, pno, bno, title, userid, regdate, cont, contfile, ceil(cnt/9) cnt "
			+ " from( "
			+ " select  /*+INDEX(tbl_page pk_page) */ "
			+ " rownum rn, pno, bno, title, userid, regdate, cont, contfile, count(pno) over() cnt "
			+ " from tbl_page "
			+ " where pno > 0 and bno = #{bno}"
			+ ") "
			+ " where rn > (#{page}-1)*9 and rn <= (#{page}*9) ")
	public List<PageVO> readPage(PageVO vo);
	
	@Delete("delete from tbl_page where pno=#{pno}")
	public void deletePage(int pno);

	@Update("update tbl_page set title=#{title}, cont=#{cont}, contfile=#{contfile} where pno=#{pno}")
	public void updatePage(PageVO vo);

	
	@Select("select * from tbl_book"
			+ " where userid = #{userid}"
			+ " order by title")
	public List<BookVO> selectBook(PageVO vo);
	
	@Select("select * from tbl_page"
			+ " where bno = #{bno}")
	public PageVO read(PageVO vo);
	
}
