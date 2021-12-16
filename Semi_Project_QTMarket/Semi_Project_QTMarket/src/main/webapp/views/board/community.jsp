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

</head>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <h1><b>큐티 게시판</b></h1>
            <p>큐티님을 위한 공간입니다.</p>
        </div>
        <div class="board_list_wrap">
            <div class="function_wrap">
                <div class="b_function">
                    <form class="search_wrap">
                        <input type="text" placeholder="검색어를 입력하세요." id="b_search">
                        <button type="submit" id="search_btn">검색</button>
                    </form>
                        <div class="sort_wrap">
                            <a href="">최신순</a>
                            <a href="">댓글순</a>
                            <a href="">조회수</a>
                    </div>
                </div>
            </div>
            
            <div class="board_list">
                <div class="top">
                    <div class="no">글번호</div>
                    <div class="category">카테고리</div>
                    <div class="title">제목</div>
                    <div class="writer">작성자</div>
                    <div class="date">작성일</div>
                    <div class="count">조회수</div>
                </div>
                <div>
                    <div class="no">10</div>
                    <div class="category">공지사항</div>
                    <div class="title"><a href="view.html">운영진 공지사항입니다</a></div>
                    <div class="writer">관리자</div>
                    <div class="date">2021-12-14</div>
                    <div class="count">10</div>
                </div>
                <div>
                    <div class="no">9</div>
                    <div class="category">공지사항</div>
                    <div class="title"><a href="view.html">운영진 공지사항입니다</a></div>
                    <div class="writer">관리자</div>
                    <div class="date">2021-11-28</div>
                    <div class="count">10</div>
                </div>
                <div>
                    <div class="no">8</div>
                    <div class="category">공지사항</div>
                    <div class="title"><a href="view.html">운영진 공지사항입니다</a></div>
                    <div class="writer">관리자</div>
                    <div class="date">2021-11-28</div>
                    <div class="count">10</div>
                </div>
                <div>
                    <div class="no">7</div>
                    <div class="category">공지사항</div>
                    <div class="title"><a href="view.html">운영진 공지사항입니다</a></div>
                    <div class="writer">관리자</div>
                    <div class="date">2021-11-28</div>
                    <div class="count">10</div>
                </div>
                <div>
                    <div class="no">6</div>
                    <div class="category">공지사항</div>
                    <div class="title"><a href="view.html">운영진 공지사항입니다</a></div>
                    <div class="writer">관리자</div>
                    <div class="date">2021-11-28</div>
                    <div class="count">10</div>
                </div>
                <div>
                    <div class="no">5</div>
                    <div class="category">공지사항</div>
                    <div class="title"><a href="view.html">운영진 공지사항입니다</a></div>
                    <div class="writer">관리자</div>
                    <div class="date">2021-11-28</div>
                    <div class="count">10</div>
                </div>
                <div>
                    <div class="no">4</div>
                    <div class="category">자유게시판</div>
                    <div class="title"><a href="view.html">벌써 겨울이네요</a></div>
                    <div class="writer">김겨울</div>
                    <div class="date">2021-11-27</div>
                    <div class="count">100</div>
                </div>
                <div>
                    <div class="no">3</div>
                    <div class="category">자유게시판</div>
                    <div class="title"><a href="view.html">코로나 조심하세요!</a></div>
                    <div class="writer">이가을</div>
                    <div class="date">2021-11-26</div>
                    <div class="count">150</div>
                </div>
                <div>
                    <div class="no">2</div>
                    <div class="category">자유게시판</div>
                    <div class="title"><a href="view.html">큐티 마켓 너무 좋아요!</a></div>
                    <div class="writer">최여름</div>
                    <div class="date">2021-11-25</div>
                    <div class="count">1000</div>
                </div>
                <div>
                    <div class="no">1</div>
                    <div class="category">자유게시판</div>
                    <div class="title"><a href="view.html">벌써 겨울이네요</a></div>
                    <div class="writer">유봄</div>
                    <div class="date">2021-11-24</div>
                    <div class="count">120</div>
                </div>
            </div>
            <div class="board_page">
                <a href="${ path }/QT/community?page=1" class="btn first"><<</a>
                <a href="" class="btn prev"><</a>
                <a href="" class="num on">1</a>
                <a href="" class="num">2</a>
                <a href="" class="num">3</a>
                <a href="" class="num">4</a>
                <a href="" class="num">5</a>
                <a href="" class="num">6</a>
                <a href="" class="num">7</a>
                <a href="" class="num">8</a>
                <a href="" class="num">9</a>
                <a href="" class="num">10</a>
                <a href="" class="btn next">></a>
                <a href="${ path }/QT/community?page=${ pageInfo.MaxPage }" class="btn last">>></a>
            </div>
            <div class="btn_wrap">
				<button type="button" id="btn-add" onclick="location.href='${ pageContext.request.contextPath }/board/boardwrite'">글쓰기</button>
            </div>
        </div>

    </div>
</body>
</html>