<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="path" value="${ pageContext.request.contextPath }" />
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>큐티마켓_마켓</title>
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
         	<c:if test="${ loginMember.role == 'ROLE_ADMIN' }">
         	<li class="navbar__menu__item">
         		<a href="${ path }/QT/mypage">관리자페이지</a>
         	</li>
         	</c:if>
          	<li class="navbar__menu__item">
          	  <a href="${ path }/logout">로그아웃</a>
         	</li>
          </c:if>
         </ul>
      </nav>
    <!-- main -->
    <main id="main">
      <ul class="main__order">
        <li class="on"><a href="*">전체</a></li>
        <li><a href=".clothes">의상</a></li>
        <!-- 
          1. 카테고리 대분류 소분류 나눠주기 
              href=".대분류, .소분류"
              class="대분류 소분류"
              
          2. main__order 카테고리 메뉴 바 바꿔보기
        -->
        <li><a href=".home__Appliances">가전</a></li>
      </ul>
      <section class="section">
        <article class="clothes">
          <div>
            <img src="${ path }/resources/imgs/products/1.jpg" alt="" />
            <p>난곡동</p>
            <h2>남성 여름 한벌 + 운동화</h2>
            <p>한 번에 사놓고 입지도 못하고 있어서 싸게 올려요~</p>
            <div>
              <span>가격 : 13000원</span>
              <div>
                <button class="wish__btn__0" onclick="heartEmpty()"><i class="far fa-heart"></i></button>
                <button class="chat__btn"><i class="fas fa-comments"></i></button>
              </div>
            </div>
          </div>
        </article>
        <article class="clothes a">
          <div>
            <img src="${ path }/resources/imgs/products/2.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="home__Appliances">
          <div>
            <img src="${ path }/resources/imgs/products/3.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="home__Appliances">
          <div>
            <img src="${ path }/resources/imgs/products/4.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="clothes">
          <div>
            <img src="${ path }/resources/imgs/products/2.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="clothes">
          <div>
            <img src="${ path }/resources/imgs/products/1.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="home__Appliances">
          <div>
            <img src="${ path }/resources/imgs/products/4.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="home__Appliances">
          <div>
            <img src="${ path }/resources/imgs/products/3.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="clothes">
          <div>
            <img src="${ path }/resources/imgs/products/1.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="home__Appliances">
          <div>
            <img src="${ path }/resources/imgs/products/3.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="clothes">
          <div>
            <img src="${ path }/resources/imgs/products/2.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="home__Appliances">
          <div>
            <img src="${ path }/resources/imgs/products/4.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article class="clothes">
          <div>
            <img src="${ path }/resources/imgs/products/1.jpg" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article>
          <div>
            <img src="${ path }/resources/imgs/products/no-image.png" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
        <article>
          <div>
            <img src="${ path }/resources/imgs/products/no-image.png" alt="" />
            <h2>Lorem, ipsum dolor.</h2>
            <p>lorem ipsum dolor, sitamet consectetur adipisicing</p>
          </div>
        </article>
      </section>
    </main>
    <footer class="menu">
      <input type="checkbox" href="#" class="menu-open" name="menu-open" id="menu-open" />
      <label class="menu-open-button" for="menu-open">
        <span class="lines line-1"></span>
        <span class="lines line-2"></span>
        <span class="lines line-3"></span>
      </label>

      <a href="#" class="menu-item orange"> <i class="fas fa-plus"></i> </a>
      <a href="#" class="menu-item red"> <i class="fa fa-heart"></i> </a>
      <a href="#" class="menu-item green"> <i class="fas fa-comments"></i> </a>
      <a href="main.html" class="menu-item purple"> <i class="fas fa-home"></i> </a>
      <a href="#" class="menu-item blue"> <i class="fas fa-question"></i></i> </a>
      <!-- <a href="#" class="menu-item lightblue"> <i class="fas fa-question"></i> </a> -->
    </footer>
</body>
</html>