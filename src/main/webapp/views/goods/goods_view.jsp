<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>물품 등록</title>
    <meta name="description" content="큐티마켓" />
    <meta name="author" content="Dapalzo" />
    <link rel="icon" type="image/png" sizes="152x152" href="${ path }/resources/imgs/favicon/favicon.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/91b5983e4b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${ path }/resources/css/market/style.css" />
    <link rel="stylesheet" href="${ path }/resources/css/goods/goods.css">
    <script src="https://kit.fontawesome.com/91b5983e4b.js" crossorigin="anonymous"></script>
    <script src="${ path }/resources/js/login/jquery-3.6.0.js"></script>
    <script src="${ path }/resources/js/login/main.js" defer></script>
</head>
<body>
	<div class="board_wrap">
        <div class="board_title">
            <strong>물품 조회</strong>
        </div>
        <form action="${ pageContext.request.contextPath }/goods/goodsview" method="post">
	        <div class="board_view_wrap">
	            <div class="board_view">
	                <div class="title">
	                    ${ board.title }
	                    <div id="title_ex">거래대기</div>
	                </div>
	                <div class="info">
	                    <dl>
	                        <dt>번호</dt>
	                        <dd>${ board.no }</dd>
	                    </dl>
	                    <dl>
	                        <dt>작성자</dt>
	                        <dd>${ board.writerId }</dd>
	                    </dl>
	                    <dl>
	                        <dt>작성일</dt>
	                        <dd>2021</dd>
	                    </dl>
	                    <dl>
	                        <dt>조회</dt>
	                        <dd>${ board.readCount }</dd>
	                    </dl>
	                    <dl>
	                        <dt>${ board.price }원</dt>
	                    </dl>
	                </div>
	                <div class="cont">
	                    <img src="../resources/image/flower1.PNG" width="100%">
	                    ${ board.content }                
	                </div>
	            </div>
	            <div class="bt_wrap">
	                <a href="list.html" class="on">목록</a>
	                <a href="edit.html" class="buy">구매 신청</a>
	                <a href="" class="chat">실시간 채팅</a>
	            </div>
	
	            <div class="comment_main">댓글 2개</div>
	            <hr>             
	            <div class="comment" id="comment1">
	                <p><strong id="comment_strong">닉네임</strong> 1시간 전</p>
	                댓글이 들어갑니다. <br>
	                댓글이 들어갑니다.
	            </div>       
	            <div class="comment" id="comment1">
	                <p><strong id="comment_strong">닉네임</strong> 1시간 전</p>
	                댓글이 들어갑니다. <br>
	                댓글이 들어갑니다.
	            </div>             
	        </div>
        </form>
    </div>
</body>
</html>