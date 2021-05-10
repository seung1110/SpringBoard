package org.psy.mapper;

import java.util.List;

import org.psy.domain.BoardVO;

public interface BoardMapper {
	public BoardVO getBoard(int bno);
	public List<BoardVO> getBoardList();
}
