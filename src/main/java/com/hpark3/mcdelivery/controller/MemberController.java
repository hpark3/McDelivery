package com.hpark3.mcdelivery.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hpark3.mcdelivery.dao.MemberDAO;
import com.hpark3.mcdelivery.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO dao;

	// 회원가입 화면 이동
	@RequestMapping(value = "/member/signupForm", method = RequestMethod.GET)
	public String signupForm() {
		return "/member/signupForm";
	}

	// 회원가입
	@RequestMapping(value = "/member/signup", method = RequestMethod.POST)
	public String signup(MemberVO vo, RedirectAttributes rttr) {
		boolean result = dao.signup(vo);
		rttr.addFlashAttribute("result", result);
		return "redirect:/";
	}
	
	// 로그인 화면 이동
	@RequestMapping(value = "/member/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "/member/loginForm";
	}
	
	// 로그인
	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr) {
		boolean result = dao.login(vo, session);
		if(result) return "redirect:/";
		rttr.addFlashAttribute("result", result);
		return "redirect:/member/loginForm";
	}
	
	// 비밀번호 찾기 화면이동
	@RequestMapping(value = "/member/pwd_find", method = RequestMethod.GET)
	public String pwd_find() {
		return "/member/pwd_find";
	}
	
	// 로그아웃
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		dao.logout(session);
		return "redirect:/";
	}
	
	// 아이디 중복확인 화면 이동
	@ResponseBody
	@RequestMapping(value = "/member/idCheckForm", method = RequestMethod.GET)
	public int  idCheckForm(String userId) {
		return dao.checkid(userId);
	}
	
	// 아이디 중복확인
	@RequestMapping(value = "/member/checkid", method = RequestMethod.POST)
	public String checkid(String userid, RedirectAttributes rttr) {
		boolean checkResult = false;
		if(dao.checkid(userid) == 0) checkResult = true;
		rttr.addFlashAttribute("checkResult", checkResult);
		rttr.addFlashAttribute("userid", userid);
		return "redirect:/member/idCheckForm";
	}
}