package org.han.search;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.han.service.SearchService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/**/*-context.xml"})
public class SearchServiceTest {
	
	static Logger logger = Logger.getLogger(SearchService.class);
	
	@Inject
	SearchService service;
	
	@Test
	public void setResultTest() {
		logger.info(service.setResult("p1a1a1",1));
	}
	
	@Test
	public void resultTest() {
		logger.info(service.result(3));
	}
	
	@Test
	public void setContTest() {
		String[] arr = new String[] {"������","������"};
		logger.info(service.setCont(arr));
	}
	
	@Test
	public void viewContTest() {
		String[] arr = new String[] {"150","160"};
		logger.info(service.contList(arr));
	}
}