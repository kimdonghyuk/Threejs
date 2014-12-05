package org.han.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.han.util.PageMaker;
import org.han.vo.DiaryVO;

public interface DiaryMapper {

	@Select(" select rownum rn, dno, userid, title, cont, contfile, regdate, tag, rcount, ceil(cnt/3) cnt"
			+ " from( select  /*+INDEX_desc(tbl_diary pk_diary)*/"
			+ " rownum rn, dno, userid, title, cont, contfile, regdate, tag, rcount, count(dno) over() cnt"
			+ " from tbl_diary where dno > 0)"
			+ " where rn>(#{page}-1)*3 and rn<=(#{page}*3)")
	public List<DiaryVO> readDiary(PageMaker pm);
	
	@Insert("insert into tbl_diary(dno, userid, title, cont, contfile, tag)"
			+ " values(seq_diary.nextval, #{userid}, #{title}, #{cont}, #{contfile}, #{tag})")
	public void createDiary(DiaryVO vo);
	
	@Update("update tbl_diary"
			+ " set title=#{title}, cont=#{cont}, contfile=#{contfile}, tag=#{tag}"
			+ " where dno=#{dno}")
	public void updateDiary(DiaryVO vo);
	
	@Delete("delete from tbl_diary"
			+ " where dno=#{dno}")
	public void deleteDiary(int dno);
}
