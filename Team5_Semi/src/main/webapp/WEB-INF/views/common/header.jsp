<%@ page language="java" contentType="text/html;
charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>35place</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="all,follow">
  <!-- Price Slider Stylesheets -->
  <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css">
  <!-- swiper-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
  <!-- Magnigic Popup-->
  <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet">
  <link rel="stylesheet" href="${path}/resources/css/features.css" id="theme-stylesheet">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${path}/resources/img/favicon.png">
  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <!-- SUITE 웹폰트 -->
  <link href="https://cdn.jsdelivr.net/gh/sunn-us/SUITE/fonts/static/woff2/SUITE.css" rel="stylesheet">
  <style>
    /* 교보문고 웹폰트 */
    @font-face {
      font-family: 'KyoboHandwriting2022khn';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/KyoboHandwriting2022khn.woff2') format('woff2');
      font-weight: normal;
      font-style: normal;
    }

    .nav-item {
      margin-right: 55px;
    }

    .nav-link {
      color: white;
    }

    .nav-color {
      --bs-nav-link-hover-color: var(--bs-navbar-hover-color);
    }

    .title {
      font-family: "KyoboHandwriting2022khn";
      font-size: 120px;
    }

    .swiper-container {
      overflow: visible;
    }

    body {
      font-family: SUITE;
    }
    h1, h2, h3, h4, h5 {
	font-family: SUITE;
	}

    /* css파일에서 직접 바꿔야 적용됨 */
    /* .navbar .nav-link {
      font-size: 1.5rem;
    } */

    .multi-slider {
      height: 80vh;
      min-height: 500px;
    }

    .btn-primary {
      --bs-btn-hover-bg: #9dc3e6;
      --bs-btn-hover-border-color: #9dc3e6;
      --bs-btn-bg: #9dc3e6;
      --bs-btn-border-color: #9dc3e6;
      --bs-btn-active-bg: #9dc3e6;
      --bs-btn-active-border-color: #9dc3e6;
    }
    .btn-link{
        --bs-btn-color: #9dc3e6;
        --bs-btn-hover-color: #9dc3e6;
        --bs-btn-active-color: #9dc3e6;
    }
    .pagination{
        --bs-pagination-color: #9dc3e6;
        --bs-pagination-hover-color: #9dc3e6;
        --bs-pagination-active-bg: #9dc3e6;
        --bs-pagination-focus-color:  #6e8ca9;
        --bs-pagination-active-border-color: #9dc3e6;
    }
    .testimonial-quote{
      color: #9dc3e6;
    }
    .testimonial-text{
      font-size: large;
    }
    .link:hover{
      text-decoration: none;
    }
    .form-check-input{
     	border: 1px solid #9dc3e6;
    }
    .form-check-input:checked {
    	background-color: #9dc3e6;
     	border-color: #9dc3e6;
    }   
  </style>
</head>

<body style="padding-top: 72px; overflow-x: hidden">
	<header class="header">
			<nav class="navbar navbar-expand-lg fixed-top shadow navbar-dark" style="background-color: #9dc3e6; padding: 5px 5px">
				<div class="container-fluid">
					<div class="d-flex align-items-center">
						<a class="navbar-brand py-1" href="${path}"><img src="${path}/resources/img/logo.png" alt="logo" width="130px" height="55px" /></a>
					</div>
					<button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
						aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
						<i class="fa fa-bars"></i>
					</button>
					<!-- Navbar Collapse -->
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<ul class="navbar-nav" style="margin: auto">
							<div style="display: flex">
								<li class="nav-item"><a class="nav-link" href="#">여행정보</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/accm/search">숙박</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/restaurant/search">음식점</a></li>
								<li class="nav-item"><a class="nav-link" href="${path}/tourspot/search">관광지</a></li>
								<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="docsDropdownMenuLink"
									href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커뮤니티 </a>
									<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
										<a class="dropdown-item" href="#">메인 페이지</a>
										<a class="dropdown-item" href="${path}/community/review">여행후기</a>
										<a class="dropdown-item" href="${path}/community/courseList">나만의 여행코스</a>
									</div>
								</li>
							</div>
						</ul>
						<c:if test="${loginMember == null}">
								<div style="display: flex; list-style: none">
									<li><a class="nav-link nav-color" href="${path}/login">로그인</a></li>
								</div>
						</c:if>
						<c:if test="${loginMember != null}">
							<div style="display: flex; list-style: none">
								<li class="dropdown nav-color"><a class="nav-link dropdown-toggle" id="docsDropdownMenuLink"
									href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 마이메뉴 </a>
									<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
										<a class="dropdown-item" href="#">마이페이지</a>
										<a class="dropdown-item" href="${path}/logout">로그아웃</a>
									</div>
								</li>
							</div>
						</c:if>
					</div>
				</div>
			</nav>
	</header>
</body>
</html>
