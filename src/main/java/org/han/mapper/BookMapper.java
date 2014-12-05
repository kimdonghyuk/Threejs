package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.han.vo.BookVO;

public interface BookMapper {

	@Select("select rownum rn, bno, userid, title, contfile, regdate, ceil(cnt/3) cnt "
			+ " from("
			+ " select  /*+INDEX_DESC(tbl_book pk_book) */ "
			+ " rownum rn, bno, userid, title, contfile, regdate, count(bno) over() cnt"
			+ " from tbl_book"
			+ " where bno > 0"
			+ " )"
			+ " where rn > (#{page}-1)*3 and rn <= (#{page}*3)")
	public List<BookVO> read(String page);	
	
	@Select("select * from tbl_book where bno = #{bno}")
	public BookVO showdata(int bno);
	
	@Insert("insert into tbl_book(bno, userid, title, contfile)"
			+ " values(seq_book.nextval, #{userid}, #{title}, #{contfile})")
	public void create(BookVO vo);
	
	@Update("update tbl_book"
			+ " set title = #{title}, contfile = #{contfile}"
			+ " where bno = #{bno}")
	public void update(BookVO vo);
	
	@Delete("delete from tbl_book where bno = #{bno}")
	public void delete(int bno);
}
