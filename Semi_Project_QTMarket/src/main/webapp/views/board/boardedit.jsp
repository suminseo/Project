 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }" />

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
    <meta name="description" content="큐티마켓" />
    <meta name="author" content="Dapalzo" />
    <link rel="icon" type="image/png" sizes="152x152" href="${ path }/resources/imgs/favicon/favicon.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/91b5983e4b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${ path }/resources/css/market/style.css" />
    <script src="${ path }/resources/js/market/isotope.pkgd.min.js"></script>
    <script src="${ path }/resources/js/market/main.js" defer></script>
    <style>
    	body {
      		background: url(${ path }/resources/imgs/backgorund/background2.png) center/cover no-repeat;
      	}	
    </style>
</head>
<body>

   <!-- navbar -->
     <nav id="navbar">
       <div class="navbar__logo">
         <img src="${ path }/resources/imgs/favicon/favicon.png" alt="logo">
         <a href="${ path }">큐티마켓</a>
       </div>
       <ul class="navbar__menu">
         <li class="navbar__menu__item">
           <a href="${ path }">메인</a>
         </li>
         <li class="navbar__menu__item">
           <a href="${ path }/QT/market" class="active">마켓</a>
         </li>
         <li class="navbar__menu__item">
           <a href="${ path }/QT/community">커뮤니티</a>
         </li>
         <c:if test="${ empty loginMember }">
         	<li class="navbar__menu__item">
          	 	<a href="${ path }/QT/login">로그인</a>
        	</li>
         </c:if>
         <c:if test="${ !empty loginMember }">
         	<li class="navbar__menu__item">
           	<a href="${ path }/QT/mypage">마이페이지</a>
        	</li>
         	<li class="navbar__menu__item">
         	  <a href="${ path }/logout">로그아웃</a>
        	</li>
         </c:if>
        </ul>
     </nav>
     <!-- main -->
    <div class="board_wrap">
        <div class="board_title">
            <h1><b>큐티 게시판</b></h1>
            <p>큐티님을 위한 공간입니다.</p>
        </div>
    	<form action="${ pageContext.request.contextPath }/board/boardedit" method="post" enctype="multipart/form-data">
        <div class="board_write_wrap">
				<input type="hidden" name="no" value="${ board.no }">
				<input type="hidden" name="originalFileName" value="${ board.originalFileName }">
				<input type="hidden" name="renamedFileName" value="${ board.renamedFileName }">		
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="title" value="${ board.title }"></dd>
                    </dl>
                </div>
                <div class="info">
                	<dl>
                        <dt>카테고리</dt>
                        <dd>
                            <select name="category" id="category">
                                <option value="공지 사항">공지 사항</option>
                                <option value="오늘의 이야기">오늘의 이야기</option>
                                <option value="우리 동네 소식">우리 동네 소식</option>
                                <option value="지역 홍보">지역 홍보</option>
                            </select>
                        </dd>
	                </dl>
                    <dl>
                        <dt>작성자</dt>
                        <dd><input type="text" name="writerId" value="${ board.writerId }" readonly></dd>
                    </dl>
                    <div class="file">
                        <dl>
                            <dt>첨부파일</dt>
                            <dd><input type="file" name="upfile"></dd>
                            	<c:if test="${ !empty board.originalFileName }">
								<c:out value="${ board.originalFileName }"></c:out>
								</c:if>
                        </dl>
                    </div>
                </div>
                <div class="content">
                    <textarea name="content">${ board.content }</textarea>
                </div>

            </div>
            <div class="btn_wrap_nv">
                <button type="submit" value="수정">수정</button>
                <button type="reset" value="취소" class="on" 
	                		id="btn-cancel" onclick="location.href='${ pageContext.request.contextPath }/QT/community'">취소</button>
            </div>
        </div>
        </form>

    </div>
</body>
</html>