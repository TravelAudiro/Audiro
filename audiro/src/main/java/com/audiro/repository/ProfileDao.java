package com.audiro.repository;

public interface ProfileDao {

	//profile insert 하는 메서드. 회원 가입시에 예진이가 쓰면 됨.
	/**
	 * 
	 * @param usersId users 테이블의 pk.
	 * @return insert 성공시 1리턴
	 * 회원 가입 시 호출하여 profile 테이블에 insert 하는 메서드. 
	 * 회원 가입시에 프로필도 생성하기로 함 -> 디폴트 기본프로필
	 */
	int insertProfileByUsersId(Integer usersId);
	
	
}
