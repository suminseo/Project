<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/community/boardstyle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">

</head>
<body>
    <div class="board_wrap">
	    <form action="${ pageContext.request.contextPath }/board/boardwrite" method="post" 
				enctype="multipart/form-data">
	        <div class="board_title">
	            <h1><b>큐티 게시판</b></h1>
	            <p>큐티님을 위한 공간입니다.</p>
	        </div>
	        <div class="board_write_wrap">
	            <div class="board_write">
	                <div class="title">
	                    <dl>
	                        <dt>제목</dt>
	                        <dd><input type="text" placeholder="제목 입력" required></dd>
	                    </dl>
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>카테고리</dt>
	                        <dd>
	                            <select name="board_category" id="board_category">
	                                <option selected>----</option>
	                                <option value="bfree">자유 게시판</option>
	                                <option value="bregion">우리 동네 소식</option>
	                                <option value="bpromo">지역 홍보 게시판</option>
	                            </select>
	                        </dd>
	                    </dl>
	                
	                    <dl>
	                        <dt>작성자</dt>
	                        <dd><input type="text" placeholder="작성자 입력" required></dd>
	                    </dl>
	                    <div class="file">
	                        <dl>
	                            <dt>첨부파일</dt>
	                            <dd><input type="file"></dd>
	                        </dl>
	                    </div>
	                </div>
	                <div class="content">
	
	                    <textarea placeholder="내용을 입력해주세요."></textarea>
	                </div>
	
	            </div>
	            <div class="btn_wrap">
	                <button type="submit" value="등록">등록</button>
	                <button type="reset" value="취소" class="on">취소</button>
	            </div>
	        </div>
		</form>
    </div>
</body>
</html>