package org.psy.mapper;

import java.util.List;

import org.psy.domain.BoardVO;

public interface BoardMapper {
	public BoardVO getBoard(int bno);
	public List<BoardVO> getBoardList();
	public int insertBoard(BoardVO vo);
	public int deletBoard(int bno);
	public int updateBoard(BoardVO vo);
}
