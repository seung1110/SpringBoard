package org.psy.service;

import java.util.List;

import org.psy.domain.BoardVO;

public interface BoardService {
	public void register(BoardVO vo);
	public BoardVO get(int bno);
	public boolean modify(BoardVO vo);
	public boolean remove(int bno);
	public List<BoardVO> getList();
}
