package com.audiro.repository;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

// DB 테이블 Post의 Model 담당
@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Post {

	private Integer postId;  				//Primary key.
	private Integer usersId;				//Foregin Key: users 테이블의 usres_id(pk) 컬럼을 참조.
	private Integer postTypeId;				//Foregin key: post_type 테이블의 post_type_id(pk) 컬럼을 참조.
	private String title;					//게시글 제목.
	private String content;					//게시글 내용.
	private LocalDateTime createTime;		//댓글 최초 작성 시간.
	private LocalDateTime modifiedTime;		//댓글 최종 수정 시간.
	private Integer good;					//게시글 좋아요 갯수.
	private Integer travelPlanId;			//Foregin Key: travel_plan테이블의 travel_plan_id(pk) 컬럼을 참조.
}
