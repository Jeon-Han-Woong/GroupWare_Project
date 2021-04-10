package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface MydocuMapper {


	public BoardVO read(Long bno);
	

	public List<BoardVO> docuList(Integer mno);


	public int update(BoardVO board);


	public boolean delete(Long bno);
	
	public List<BoardVO> docuListPage(@Param("mno") Integer mno, @Param("cri") Criteria cri);
	
	public int countPageNum(Integer mno);
	
	public List<BoardVO> docuListPageSearch(@Param("mno") Integer mno, @Param("cri") Criteria cri, @Param("search") SearchCriteria search);
	
	public int countPageNumSearch(@Param("mno") Integer mno, @Param("search") SearchCriteria search);

}
