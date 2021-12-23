<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<<<<<<< HEAD
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>큐티마켓_커뮤니티</title>
		<meta name="description" content="큐티마켓" />
		<meta name="author" content="Dapalzo" />
		<link rel="icon" type="image/png" sizes="152x152"href="${ path }/resources/imgs/favicon/favicon.png" />
		<link rel="preconnect" href="https://fonts.googleapis.com" />
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
		<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"rel="stylesheet" />
		<script src="https://kit.fontawesome.com/91b5983e4b.js"crossorigin="anonymous"></script>
		<link rel="stylesheet"href="${ path }/resources/css/community/style.css" />
		<script src="${ path }/resources/js/community/main.js" defer></script>
	</head>
<body>
	<!-- navbar -->
	<nav id="navbar">
		<div class="navbar__logo">
			<img src="${ path }/resources/imgs/favicon/favicon.png" alt="logo">
			<a href="${ path }">큐티마켓</a>
		</div>
		<ul class="navbar__menu">
			<li class="navbar__menu__item"><a href="${ path }">메인</a></li>
			<li class="navbar__menu__item"><a href="${ path }/QT/market">마켓</a>
			</li>
			<li class="navbar__menu__item"><a href="${ path }/QT/community" class="active">커뮤니티</a>
			</li>
			<c:if test="${ empty loginMember }">
				<li class="navbar__menu__item"><a href="${ path }/QT/signinup">로그인</a>
				</li>
			</c:if>
          <c:if test="${ !empty loginMember }">
          	<li class="navbar__menu__item">
            	<a href="${ path }/QT/mypage">마이페이지</a>
         	</li>
         	<c:if test="${ loginMember.role == 'ROLE_ADMIN' }">
         	<li class="navbar__menu__item">
         		<a href="${ path }/QT/admin/member">관리자페이지</a>
         	</li>
         	</c:if>
          	<li class="navbar__menu__item">
          	  <a href="${ path }/logout">로그아웃</a>
         	</li>
          </c:if>
		</ul>
	</nav>
	<!-- main -->
	<!-- Grid 형식 알아보기 왼쪽상단또는 왼쪽 전체에 사이드바 형식의 카테고리 메뉴 설정. 옵션으로 베스트 게시글 등 (조회수순)으로 또 댓글 도 필요. -->
	  <main id="main">
    <header class="main__header">
      <div class="main__header__categories box">
        <p>카테고리</p>
        <div>
          <ul>
            <li><a href=""></a>전체게시판</li>
            <li><a href=""></a>자유게시판</li>
            <li><a href=""></a>질문게시판</li>
            <li><a href=""></a>지역게시판</li>
            <li><a href=""></a>신고게시판</li>
          </ul>
        </div>
      </div>
      <div class="main__header__best box">
        <p>실시간 베스트</p>
        <div>
          <p>갑자기 너무 추워요 안그럼?</p>
          <span>32 댓글</span>
        </div>
        <div>
          <p>흠좀무..</p>
          <span>32 댓글</span>
=======
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
>>>>>>> origin/borad
        </div>
        <div class="board_list_wrap">
            <div class="function_wrap">
                <div class="b_function">
                    <form class="search_wrap">
                        <input type="text" name="keyword" placeholder="검색어를 입력하세요." class="fuzzy-search" id="b_search">
                        <button type="submit" id="search_btn" value="검색">검색</button>
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
            <c:if test="${ !empty list }">
            <c:forEach var="board" items="${ list }">
                <div>
                    <div class="no">${ board.no }</div>
                    <div class="category">${ board.category }</div>
                    <div class="title"><a href="${ pageContext.request.contextPath }/board/boardview?no=${ board.no }">${ board.title }</a></div>
                    <div class="writer">${ board.writerId }</div>
                    <div class="date">${ board.createDate }</div>
                    <div class="count">${ board.hits }</div>
                </div>
            </c:forEach>
          
            </c:if>
            </div>
            <div class="board_page">
                <a href="${ path }/QT/community?page=1" class="btn first"><<</a>
                <a href="${ path }/QT/community?page=${ pageInfo.prevPage }" class="btn prev"><</a>
                
                <c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
					<a class="num" href="${ path }/QT/community?page=${ status.current }">${ status.current }</a>
                </c:forEach>
                 
                <a href="${ path }/QT/community?page=${ pageInfo.nextPage }" class="btn next">></a>
                <a href="${ path }/QT/community?page=${ pageInfo.maxPage }" class="btn last">>></a>
            </div>
            <div class="btn_wrap">
	            <c:if test="${ !empty loginMember }">
					<button type="button" id="btn-add" onclick="location.href='${ pageContext.request.contextPath }/board/boardwrite'">글쓰기</button>
	            </c:if>
            </div>
            
            
        </div>

<<<<<<< HEAD
      </div>
    </header>
    <home class="main__home">
      <div class="main__home__categories box">
        <p>전체게시판</p>
        <span>총 84 게시글</span>
      </div>
      <div class="main__home__board box">
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
        <article>
          <div class="article__one">
            <img class="imgbox" src="${ path }/resources/imgs/ex4.jpg" alt="">
          </div>
          <div class="article__two">
            <div class="two__div">
              <div class="two__div__one">
                <img class="imgbox"src="${ path }/resources/imgs/profile/4.png" alt="">
                <span>Aloofelicidad</span>
              </div>
              <div class="two__div__two">
                <span>1일전</span>
              </div>
            </div>
            <div class="two__div__description">
              <p>제목이 어쩌고 저쩌고...</p>
              <span>내용이 어쩌고.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam doloribus autem quo quia nam suscipit libero, culpa at non nihil animi quis aut sapiente optio soluta odio neque ipsa sint!</span>
            </div>
            <div class="two__div__footer">
              <span>5 댓글</span>
              <span>60 조회</span>
            </div>
          </div>
        </article>
      </div>
    </home>
  </main>
	<footer class="menu">
		<input type="checkbox" href="#" class="menu-open" name="menu-open"
			id="menu-open" /> <label class="menu-open-button" for="menu-open">
			<span class="lines line-1"></span> <span class="lines line-2"></span>
			<span class="lines line-3"></span>
		</label> <a href="#" class="menu-item orange"> <i class="fas fa-plus"></i>
		</a> <a href="#" class="menu-item red"> <i class="fa fa-heart"></i>
		</a> <a href="#" class="menu-item green"> <i class="fas fa-comments"></i>
		</a> <a href="main.html" class="menu-item purple"> <i
			class="fas fa-home"></i>
		</a> <a href="#" class="menu-item blue"> <i class="fas fa-question"></i>
		</a>
		<!-- <a href="#" class="menu-item lightblue"> <i class="fas fa-question"></i> </a> -->
	</footer>
=======
    </div>
    

    
>>>>>>> origin/borad
</body>
</html>