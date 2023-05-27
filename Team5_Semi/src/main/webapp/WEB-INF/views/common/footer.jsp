  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

  
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
              <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/visa.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/mastercard.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/paypal.svg" alt="..."></li>
              <li class="list-inline-item"><img class="w-2rem" src="${path}/resources/img/western-union.svg" alt="..."></li>
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
  <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
  <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
  <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Magnific Popup - Lightbox for the gallery-->
  <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
  <!-- Smooth scroll-->
  <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
  <!-- Bootstrap Select-->
  <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
  <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
  <script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
  <!-- Swiper Carousel                       -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
  <script>var basePath = ''</script>
  <!-- Main Theme JS file    -->
  <script src="${path}/resources/js/theme.js"></script>
</body>

</html>