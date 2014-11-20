package org.han.web;

import java.util.List;

import javax.inject.Inject;

import org.han.VO.ThreeVO;
import org.han.service.ThreeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/**/*-context.xml"})
public class ThreeMapperTest {

	@Inject
	ThreeService service;
	
	
	@Test
	public void test() {
		List<ThreeVO> list = service.list(2);
		System.out.println(list);
	}

}
