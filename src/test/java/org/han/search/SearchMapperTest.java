package org.han.search;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.han.mapper.SearchMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/**/*-context.xml"})
public class SearchMapperTest {
	
	static Logger logger = Logger.getLogger(SearchMapper.class);
	
	@Inject
	SearchMapper mapper;
	
	@Test
	public void setResultTest() {
		logger.info(mapper.setResult("p1a1a1",1));
	}

}
