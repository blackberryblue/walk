package com.project.walk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.walk.dao.CommentUserMapper;
import com.project.walk.vo.CommentUserVO;

@Service
public class CommentUserServiceImpl implements CommentUserService {

	@Autowired
	private CommentUserMapper commentusermapper;
	
	
	@Override
	public List<CommentUserVO> list(int bnum) {
		return commentusermapper.list(bnum);
	}

	@Override
	public void insert(CommentUserVO commentuserVO) {
		commentusermapper.insert(commentuserVO);
		
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}
	


}