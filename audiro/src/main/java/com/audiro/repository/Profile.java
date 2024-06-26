package com.audiro.repository;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//데이터베이스 profile 테이블의 모델 객체
@Data
@NoArgsConstructor @AllArgsConstructor @Builder
public class Profile {
	private Integer profileId; //pk
	private Integer usersId; //nn, fk : users테이블의 user_id  
	private String introduction; //자기 소개
	private String path; //프로필 경로 - 디폴트 기본 프로필
	private LocalDateTime registrationTime; //-> 프로필 등록(insert)된 시간
	

}
