package org.psy.db;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.psy.domain.BoardVO;
import org.psy.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration(classes={org.psy.config.RootConfig.class})
public class MapperTest {
	@Setter(onMethod_=@Autowired)
	private BoardMapper mapper;
	
//	@Test
//	public void BoardMapperTest(){
//		log.info(mapper.getBoard(11));
//	}
	
//	@Test
//	public void insertTest(){
//		BoardVO vo = new BoardVO();
//		vo.setContent("새로운 내용2");
//		vo.setWriter("테스터1");
//		vo.setTitle("insert test2");
//		mapper.insertBoard(vo);
//		log.info(vo);
//	}
	
//	@Test
//	public void deletTest(){
//		log.info(mapper.deletBoard(11));
//	}
	
	@Test
	public void updateTest(){
		BoardVO vo = new BoardVO();
		vo.setBno(10);
		vo.setContent("수정된 내용");
		vo.setTitle("update test");
		
		log.info(mapper.updateBoard(vo));
	}
	
}
