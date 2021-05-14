package org.psy.service;

import java.util.List;

import org.psy.domain.BoardVO;
import org.psy.mapper.BoardMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service  // 비즈니스 계층을 담당하는 객체임을 표시
@Log4j
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	private BoardMapper mapper; // @AllArgsConstructor 덕분에 자동으로 주입

	@Override
	public void register(BoardVO vo) {
		log.info("register board : " + vo);
		mapper.insertBoard(vo);
	}

	@Override
	public BoardVO get(int bno) {
		return mapper.getBoard(bno);
	}

	@Override
	public boolean modify(BoardVO vo) {
		if(mapper.updateBoard(vo) == 1){
			return true;
		}
		return false;
	}

	@Override
	public boolean remove(int bno) {
		if(mapper.deletBoard(bno)==1){
			return true;
		}
		return false;
	}

	@Override
	public List<BoardVO> getList() {
		return mapper.getBoardList();
	}

}
