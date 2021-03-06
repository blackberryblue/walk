package com.project.walk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.walk.vo.CommentUserVO;

@Mapper
public interface CommentUserMapper {
	
	public List<CommentUserVO> list(int bnum);// 댓글리스트
	public void insert(CommentUserVO CommentUserVO);// 댓글쓰기
	public void delete(int id);// 댓글삭제	
	
}
