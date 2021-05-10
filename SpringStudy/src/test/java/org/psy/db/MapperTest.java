package org.psy.db;

import org.junit.Test;
import org.junit.runner.RunWith;
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
	
	@Test
	public void BoardMapperTest(){
		log.info(mapper.getBoard(1));
	}
}
