<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>title</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
	
	
	
	<style>
        .profile-image {
            width: 100px; /* 프로필 이미지의 크기 설정 */
            height: 100px;
            border-radius: 50%; /* 동그라미 형태를 만들기 위한 설정 */
            object-fit: cover; /* 이미지가 잘리지 않고 비율을 유지하도록 설정 */
        }
    </style>
	
	
	
	
</head>
<body>
	<div class="container-fluid">
		<c:set var="pageTitle" value="Post Details" />
		<%-- scope의 기본값은 page --%>
		<%@ include file="../../fragments/header.jspf"%>

		<main>
			<div class="mt-2 card">
				<div class="card-header">
					<h2>여행후기</h2>
					<div style="text-align: right;">
					<button class="btn like-btn" data-review-id="${list.postId}"
						style="text-align: right;">
						<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50"  right
							 fill="currentColor" class="bi bi-suit-heart-fill"
							 viewBox="0 0 16 16">
  						<path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1" />
						</svg>
					</button>
					</div>
				</div>
				<div class="card-body">
					<form>

						<div class="mt-2">
							<label for="title" class="form-label">제목</label> <input
								id="title" class="form-control" type="text"
								value="${post.title}" readonly />
						</div>
						<div class="mt-2">
							<label for="content" class="form-label">내용</label>
							<textarea id="content" class="form-control" rows="5" readonly>${post.content}</textarea>
						</div>

						<div class="mt-2">
							<label for="author" class="form-label">닉네임</label> <input
								id="author" class="form-control" type="text"
								value="${post.usersId}" readonly />
						</div>

						<div class="mt-2">
							<label for="createdTime" class="form-label">작성 시간</label> <input
								id="createdTime" class="form-control" type="text"
								value="${post.createdTime}" readonly />
						</div>
						<div class="mt-2">
							<label for="modifiedTime" class="form-label">최종 수정 시간</label> <input
								id="modifiedTime" class="form-control" type="text"
								value="${post.modifiedTime}" readonly />
						</div>
					</form>
				</div>

				<div class="card-footer">
					<button id="btnDelete" class="btn btn-outline-danger">삭제</button>
					<button id="btnUpdate" class="btn btn-outline-success">업데이트</button>
				</div>


			
				<div class="card-header bg-light">
					<i class="fa fa-comment fa"></i> 댓글
				</div>
				<div class="card-body">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<div class="form-inline mb-2">
								<label for="replyId">
									<i class="fa fa-user-circle-o fa-2x"></i>
								</label> 
								<input type="text" class="form-control ml-2" placeholder="회원닉네임 띄울예정" id="replyId"> 
									<label for="replyPassword" class="ml-4">
										<i class="fa fa-unlock-alt fa-2x"></i>
									</label> 
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
										<label class="form-check-label" for="flexSwitchCheckDefault">비밀댓글</label>
									</div>
							</div>



							<div style="display: flex; align-items: flex-start;">
								<img
									src="https://file.notion.so/f/f/4d0dc4f1-02f9-46f4-91a0-9f52ce6ffae4/27deb1aa-b6ac-4d0b-810b-301c037c4969/defaultprofile5.png?id=91b36b7b-6527-4967-8d97-d525381995b0&table=block&spaceId=4d0dc4f1-02f9-46f4-91a0-9f52ce6ffae4&expirationTimestamp=1719468000000&signature=qNSlT7SBTNOSVupm1FZs4R9xu_5gAScBN3S_LdUOf14&downloadName=defaultprofile5.png"
									alt="프로필 이미지" class="profile-image" style="margin-right: 10px;">
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3" style="flex: 1;"></textarea>
							</div>
							<button type="button" class="btn btn-dark mt-3"
								onClick="javascript:addReply();">댓글 등록</button>




						</li>
					</ul>
				</div>
			</div></div>







			<!-- Bootstrap의 JS 라이브러리 -->
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
				crossorigin="anonymous"></script>

			<!-- Axio JS 라이브러리 -->
			<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</body>
</html>