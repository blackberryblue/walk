package com.project.walk.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.walk.service.MemberService;
import com.project.walk.util.Script;
import com.project.walk.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	MemberService memberservice;

	@GetMapping("/logout")
	public ResponseEntity<String> logout(HttpSession session) {
		// 세션 초기화
		session.invalidate();

		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");

		String str = Script.href("로그아웃 되었습니다.", "/");

		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}

	// 회원 리스트
	@GetMapping("list")
	public String list(Model model) {
		model.addAttribute("lists", memberservice.list());
		model.addAttribute("count", memberservice.count());

		return "/member/list";
	}

	// 회원 상세보기
	@GetMapping("detail/{id}")
	public String detail(@PathVariable int id, Model model) {
		MemberVO member = memberservice.detail(id);
		model.addAttribute("member", member);
		return "member/detail";
	}
	
	//수정폼
	@GetMapping("update/{id}")
	public String update(Model model, @PathVariable int id) {
		MemberVO memberVO = memberservice.detail(id);
		model.addAttribute("memberVO", memberVO);
		return "member/update";
	}
	
	//수정하기
	@PostMapping("update")
	public String update(MemberVO memberVO) {
		//테이블에 회원정보 수정 처리
		memberservice.update(memberVO);
		return "redirect:/member/detail/"+memberVO.getId();
	}

}
