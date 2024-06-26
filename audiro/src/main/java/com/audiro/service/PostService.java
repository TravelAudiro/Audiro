package com.audiro.service;

import org.springframework.stereotype.Service;

import com.audiro.repository.PostDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor  // final 필드들을 초기화하는 아규먼트를 갖는 생성자.
public class PostService {
	
	private final PostDao postDao;

}
