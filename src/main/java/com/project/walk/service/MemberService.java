package com.project.walk.service;

import java.util.List;

import com.project.walk.vo.MemberVO;

public interface MemberService {
	// 홈 컨트롤러
	public void join(MemberVO memberVO); // 회원가입
	public MemberVO getMemberById(String username); // 로그인
	
	// 멤버 컨트롤러
	public MemberVO detail(int id);//회원 정보 상세보기
	public void update(MemberVO memberVO);//회원정보 수정
	public void delete(int id);//회원 탈퇴
	
	public List<MemberVO> list();//회원 전체리스트보기 - 관리자메뉴
	public int count(); // 회원 수

}
