package com.audiro.web;

import com.audiro.service.CommentsService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RequiredArgsConstructor
@RestController // 리턴하는 값은 뷰 이름이 아니라, 클라이언트로 직접 전송(응답)되는 데이터.
@RequestMapping("/api/comment")
public class CommentsRestController {
	private final CommentsService commentsService; // 생성자에 의한 의존성 주입

}