package org.han.search;

import java.util.ArrayList;

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
	
	@Test
	public void setCont() {
		String[] arr = new String[] {"옥수수","개나리"};
		logger.info(mapper.setCont(arr));
	}
	
	@Test
	public void viewCont() {
		String[] arr = new String[] {"150","162","190"};
		logger.info(mapper.contList(arr));
	}

}
