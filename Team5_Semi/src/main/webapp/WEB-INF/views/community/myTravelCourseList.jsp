<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

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
  <link rel="stylesheet" href="vendor/nouislider/nouislider.css">
  <!-- swiper-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
  <!-- Magnigic Popup-->
  <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  <link rel="stylesheet" href="css/features.css" id="theme-stylesheet">
  <!-- Favicon-->
  <link rel="shortcut icon" href="img/favicon.png">
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
  </style>
</head>

<body style="padding-top: 72px; overflow-x: hidden">
  <header class="header">
    <div id="header"></div>
    <script>
      var contentDiv = document.getElementById("header");

      // 임시 확인용
      loginMember = null;

      // 로그인 전
      if (loginMember == null) {
        contentDiv.innerHTML =
          '    <nav class="navbar navbar-expand-lg fixed-top shadow navbar-dark"' +
          '      style="background-color: #9dc3e6; padding: 5px 5px;">' +
          '      <div class="container-fluid">' +
          '        <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="#"><img src="img/logo.png" alt="logo"' +
          '              width="130px" height="55px"></a>' +
          '        </div>' +
          '        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"' +
          '          data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"' +
          '          aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>' +
          '        <!-- Navbar Collapse -->  '+
          '        <div class="collapse navbar-collapse" id="navbarCollapse">' +
          '           <ul class="navbar-nav" style="margin: auto;>' +
          '            <div style="display: flex; >' +
          '              <li class="nav-item"><a class="nav-link" href="#">여행정보</a></li>' +
          '              <li class="nav-item"><a class="nav-link" href="#">숙박</a></li>' +
          '              <li class="nav-item"><a class="nav-link" href="#">음식점</a></li>' +
          '              <li class="nav-item"><a class="nav-link" href="#">관광지</a></li>' +
          '              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="#"' +
          '                  data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커뮤니티 </a>' +
          '                <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="#">메인' +
          '                    페이지</a><a class="dropdown-item" href="#">여행후기</a><a class="dropdown-item" href="#">나만의 여행코스</a>' +
          '                </div>' +
          '              </li>' +
          '            </div>' +
          '            <div style="display: flex; list-style:none ">' +
          '              <li><a class="nav-link nav-color" href="#">로그인</a></li>' +
          '          </div>' +
          '          </ul>' +
          '        </div>' +
          '      </div>' +
          '    </nav>';
      } else { // 로그인 후
        contentDiv.innerHTML =
          '    <nav class="navbar navbar-expand-lg fixed-top shadow navbar-dark"' +
          '      style="background-color: #9dc3e6; padding: 5px 5px;">' +
          '      <div class="container-fluid">' +
          '        <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="#"><img src="img/logo.png" alt="logo"' +
          '              width="130px" height="55px"></a>' +
          '        </div>' +
          '        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"' +
          '          data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"' +
          '          aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>' +
          '        <!-- Navbar Collapse --> ' +
          '        <div class="collapse navbar-collapse" id="navbarCollapse" >' +
          '          <ul class="navbar-nav" style="margin: auto; >' +
          '            <div style="display: flex;" >' +
          '              <li class="nav-item"><a class="nav-link" href="#">여행정보</a></li>' +
          '              <li class="nav-item"><a class="nav-link" href="#">숙박</a></li>' +
          '              <li class="nav-item"><a class="nav-link" href="#">음식점</a></li>' +
          '              <li class="nav-item"><a class="nav-link" href="#">관광지</a></li>' +
          '              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="#"' +
          '                  data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 커뮤니티 </a>' +
          '                <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="#">메인' +
          '                    페이지</a><a class="dropdown-item" href="#">여행후기</a><a class="dropdown-item" href="#">나만의 여행코스</a>' +
          '                </div>' +
          '              </li>' +
          '            </div>' +
          '            <div style="display: flex; list-style:none">' +
          '              <li class="dropdown nav-color"><a class="nav-link dropdown-toggle" id="docsDropdownMenuLink" href="#"' +
          '                  data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">' +
          '                  마이메뉴 </a>' +
          '                <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="#">마이페이지</a><a class="dropdown-item" href="#">로그아웃</a>' +
          '                </div>' +
          '              </li>' +
          '          </div>' +
          '          </ul>' +
          '        </div>' +
          '      </div>' +
          '    </nav>';
      }
    </script>
  </header>

  <body>
    <section class="py-6">
        <div class="container">
          <div class="row mb-5">
            <div class="mb-3" style="display: flex; justify-content: left; align-items: center;">
                <img src="img/logo2.png" width="55px" height="55px">
                <h2 style="display: inline;">&nbsp;&nbsp;나만의 여행코스</h2>
            </div>
            <div style="display: flex; justify-content: right; margin-bottom: 4px;">
                <button class="btn btn-primary btn-sm mb-2" type="button" onclick="location.href='#'">&nbsp;글쓰기</button>
            </div>
            <!-- blog item-->
            <div class="container px-4 py-5" id="custom-cards">
              <div class="row row-cols- row-cols-lg-3 align-items-stretch g-4">
            
            
            <c:forEach var="item" items="${list }">
             <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">${item.title }</p></a><strong>- ${item.writerId }</strong>
              </div>
            </div>
            
            </c:forEach>
            
            
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="#"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            

            </div>
            </div>
            
            
          </div>
        </div>

        
        <!-- Pagination -->
        <nav aria-label="Page navigation example">
            <ul class="pagination pagination-template d-flex justify-content-center">
              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
            </ul>
          </nav>
      </section>
  </body>

  <!-- Footer-->
  <footer class="position-relative z-index-10 d-print-none" style="background-color: #343a40;">
    <!-- Main block - menus, subscribe form-->
    <div class="py-6 text-white-50">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="fw-bold text-uppercase text-dark mb-3">35place</div>
            <p>당신을 위한 여행정보 사이트</p>
            <ul class="list-inline">
              <li class="list-inline-item"><a class="text-white-50 text-primary-hover" href="#" target="_blank"
                  title="twitter"><i class="fab fa-twitter"></i></a></li>
              <li class="list-inline-item"><a class="text-white-50 text-primary-hover" href="#" target="_blank"
                  title="facebook"><i class="fab fa-facebook"></i></a></li>
              <li class="list-inline-item"><a class="text-white-50 text-primary-hover" href="#" target="_blank"
                  title="instagram"><i class="fab fa-instagram"></i></a></li>
              <li class="list-inline-item"><a class="text-white-50 text-primary-hover" href="#" target="_blank"
                  title="pinterest"><i class="fab fa-pinterest"></i></a></li>
              <li class="list-inline-item"><a class="text-white-50 text-primary-hover" href="#" target="_blank"
                  title="vimeo"><i class="fab fa-vimeo"></i></a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
            <h6 class="text-uppercase text-white-50 mb-3">정보찾기</h6>
            <ul class="list-unstyled">
              <li><a class="text-white-50" href="#">여행정보</a></li>
              <li><a class="text-white-50" href="#">숙박</a></li>
              <li><a class="text-white-50" href="#">음식점</a></li>
              <li><a class="text-white-50" href="#">관광지</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
            <h6 class="text-uppercase text-white-50 mb-3">커뮤니티</h6>
            <ul class="list-unstyled">
              <li><a class="text-white-50" href="#">메인 페이지</a></li>
              <li><a class="text-white-50" href="#">여행후기</a></li>
              <li><a class="text-white-50" href="#">나만의 여행코스</a></li>
            </ul>
          </div>
          <div class="col-lg-4">
            <h6 class="text-uppercase text-white-50 mb-3">구독하기</h6>
            <form action="#" id="newsletter-form">
              <div class="input-group mb-3">
                <input class="form-control bg-transparent border-white-50 border-end-0" type="email"
                  placeholder="Your Email Address" aria-label="Your Email Address">
                <button class="btn btn-outline-light border-start-0" type="submit"> <i
                    class="fa fa-paper-plane text-lg"></i></button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Copyright section of the footer-->
    <div class="py-4 fw-light bg-gray-800 text-gray-300">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6 text-center text-md-start">
            <p class="text-sm mb-md-0">&copy; 2023, 35place. All rights reserved.</p>
          </div>
          <div class="col-md-6">
            <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
              <li class="list-inline-item"><img class="w-2rem" src="img/visa.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="..."></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- JavaScript files-->
  <script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite - 
    //   see more here 
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {

      var ajax = new XMLHttpRequest();
      ajax.open("GET", path, true);
      ajax.send();
      ajax.onload = function (e) {
        var div = document.createElement("div");
        div.className = 'd-none';
        div.innerHTML = ajax.responseText;
        document.body.insertBefore(div, document.body.childNodes[0]);
      }
    }
    // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
    // use your own URL in production, please :)
    // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
    //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
    injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');

  </script>
  <!-- jQuery-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Magnific Popup - Lightbox for the gallery-->
  <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
  <!-- Smooth scroll-->
  <script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
  <!-- Bootstrap Select-->
  <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
  <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
  <script src="vendor/object-fit-images/ofi.min.js"></script>
  <!-- Swiper Carousel                       -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
  <script>var basePath = ''</script>
  <!-- Main Theme JS file    -->
  <script src="js/theme.js"></script>

</body>

</html>