package com.audiro.service;

import org.springframework.stereotype.Service;

import com.audiro.repository.ProfileDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class ProfileService {

	private final ProfileDao profileDao; // 생성자에 의한 의존성 주입

	// profile DB에 insert 생성(회원가입시) ->users테이블의 users_id(pk)뽑아와서 insert시켜야 함.
	public int profileCreate(Integer usersId) {
		log.debug("profileCreate({})", usersId);

		int result = profileDao.insertProfileByUsersId(usersId);

		return result;
	}

}
