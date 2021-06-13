package com.hpark3.mcdelivery.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hpark3.mcdelivery.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	//회원가입
	public boolean signup(MemberVO vo) {
		try {
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			if(mapper.signup(vo) != 0) return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// 로그인
	public boolean login(MemberVO vo, HttpSession session) {
		try {
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			if(mapper.login(vo) != null) {
				session.setAttribute("userid", vo.getUserid());
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// 로그아웃
	public boolean logout(HttpSession session) {
		session.invalidate();
		return true;
	}
	
	// ID 중복확인
	public int checkid(String userid) {
		int result = 0;
		try {
			MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
			result = mapper.checkid(userid);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
}
