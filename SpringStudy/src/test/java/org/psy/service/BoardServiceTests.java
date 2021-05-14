package org.psy.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.psy.domain.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes=org.psy.config.RootConfig.class)
@Log4j
public class BoardServiceTests {
	
	@Setter(onMethod_=@Autowired)
	private BoardService service;
	
//	@Test
//	public void existTest(){
//		log.info(service);
//	}
//	@Test
//	public void registerTest(){
//		BoardVO vo = new BoardVO();
//		vo.setContent("service를 통한 추가");
//		vo.setWriter("service");
//		vo.setTitle("register test");
//		service.register(vo);
//	}
//	@Test
//	public void getListTest(){
//		service.getList().forEach(vo-> {log.info(vo);});
//	}
	
//	@Test
//	public void geTest(){
//		log.info(service.get(13));
//	}
	
	/*@Test
	public void modifyTest(){
		BoardVO vo = service.get(1);
		vo.setTitle("modify test");
		log.info("modify test result : " + service.modify(vo));
	}*/
	@Test
	public void removeTest(){
		log.info("remove test result : " + service.remove(1));
	}
}
