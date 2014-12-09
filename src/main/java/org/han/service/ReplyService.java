package org.han.service;

import java.util.List;

import javax.inject.Inject;

import org.han.mapper.ReplyMapper;
import org.han.vo.ReplyVO;
import org.springframework.stereotype.Service;

@Service
public class ReplyService {

	@Inject
	ReplyMapper mapper;

	public void createReply(ReplyVO vo){
		mapper.createReply(vo);
	}
	
	public List<ReplyVO> readReply(int dno){
		return mapper.readReply(dno);
	}
	
	public void updateReply(ReplyVO vo){
		mapper.updateReply(vo);
	}
	
	public void deleteReply(int rno){
		mapper.deleteReply(rno);
	}
	
	public void updateRcount(String dno){
		mapper.updateRcount(dno);
	}
	
}
