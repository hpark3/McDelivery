package com.hpark3.mcdelivery.dao;

import com.hpark3.mcdelivery.vo.MemberVO;

public interface MemberMapper {
	public int signup(MemberVO vo);
	public MemberVO login(MemberVO vo);
	public int checkid(String userid);
}
