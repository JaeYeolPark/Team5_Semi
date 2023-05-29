<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>


	<c:forEach var="item" items="${list }">
		${item.title }
		${item.homepage }<br>
	</c:forEach>
	
  
  <!-- Slider main container-->
  <div>
    <div class="swiper-container home-slider multi-slider">
      <!-- Additional required wrapper-->
      <div class="swiper-wrapper">
        <!-- Slides-->
        <div class="swiper-slide bg-cover dark-overlay"
          style="background-image: url('${path}/resources/img/3820150202100066k_Seongsan Ilchulbong Tuff Cone and Hydrangea Buses.jpg');">
          <div class="container h-100" style="display:flex; justify-content:center; align-items:center;">
            <h2 class="d-flex h-100 text-white overlay-content align-items-center display-1 mb-3 title">JEJU ISLAND</h2>
          </div>
        </div>
        <div class="swiper-slide bg-cover dark-overlay"
          style="background-image: url('${path}/resources/img/3820151202200004k_Uiamho__Lake.jpg');">
          <div class="container h-100" style="display:flex; justify-content:center; align-items:center;">
            <h2 class="d-flex h-100 text-white overlay-content align-items-center display-1 mb-3 title">CHUNCHEON</h2>
          </div>
        </div>
        <div class="swiper-slide bg-cover dark-overlay bg-cover-right"
          style="background-image: url('${path}/resources/img/3820151202200007k_Wiyangji_Reservoir.jpg');">
          <div class="container h-100" style="display:flex; justify-content:center; align-items:center;">
            <h2 class="d-flex h-100 text-white overlay-content align-items-center display-1 mb-3 title">MIRYANG</h2>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20">
          <form action="#">
            <div class="row">
              <div class="col-lg-4 d-flex align-items-center form-group" style="width: 840px;">
                <input class="form-control border-0 shadow-0" type="search" name="search" placeholder="검색어를 입력하세요">
              </div>
              <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider" style="width: 200px;">
                <select class="selectpicker" title="지역" data-style="btn-form-control">
                  <option value="small">강원도</option>
                  <option value="medium">경기도</option>
                  <option value="large">경상남도</option>
                  <option value="large">경상북도</option>
                  <option value="large">전라남도</option>
                  <option value="large">전라북도</option>
                  <option value="large">충청남도</option>
                  <option value="large">충청북도</option>
                </select>
              </div>
              <div class="col-lg-2 form-group d-grid mb-0">
                <button class="btn btn-primary h-100" type="submit">Search</button>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div class="swiper-pagination swiper-pagination-white"></div>
      <div class="swiper-nav d-none d-lg-block">
        <div class="swiper-button-prev" id="homePrev"></div>
        <div class="swiper-button-next" id="homeNext"></div>
      </div>
    </div>

    <section class="pt-6">
      <div class="container-fluid">
        <div class="row">
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img
                class="bg-image" src="${path}/resources/img/3820146201800030k_Journey of Mysterious Island.jpg" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">강원도</h4>
                <p class="mb-4">새로운 강원도! 특별 자치시대!</p><a
                  class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="#">자세히 보기<i
                    class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img
                class="bg-image" src="${path}/resources/img/3820143201500066k_남한산성+일출.jpg" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">경기도</h4>
                <p class="mb-4">변화의 중심 기회의 경기</p><a
                  class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="#">자세히 보기<i
                    class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img
                class="bg-image" src="${path}/resources/img/3820150202100016k_Morning_in_Wiyangmot_Reservoir.jpg" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">경상남도</h4>
                <p class="mb-4">Bravo Gyeongnam</p><a
                  class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="#">자세히 보기<i
                    class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img
                class="bg-image" src="${path}/resources/img/3820151202200043m_HwangNyongWon.jpg" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">경상북도</h4>
                <p class="mb-4">경북의 힘으로 새로운 대한민국</p><a
                  class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="#">자세히 보기<i
                    class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img
                class="bg-image" src="${path}/resources/img/3820146201800024k_The Verdant Cheongwansan Mountain.jpg" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">전라남도</h4>
                <p class="mb-4">생명의 땅 으뜸 전남</p><a
                  class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="#">자세히 보기<i
                    class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img
                class="bg-image" src="${path}/resources/img/3820146201800016k_The Beginning of Gyehwado Island.jpg" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">전라북도</h4>
                <p class="mb-4">함께 혁신, 함께 성공, 새로운 전북</p><a
                  class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="#">자세히 보기<i
                    class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img
                class="bg-image" src="${path}/resources/img/3820146201800007k_Fallen Blossoms.jpg" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">충청남도</h4>
                <p class="mb-4">힘쎈 충남, 대한민국의 힘</p><a
                  class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="#">자세히 보기<i
                    class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <div class="col-6 col-lg-4 col-xl-3 px-0">
            <div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;"><img
                class="bg-image" src="${path}/resources/img/3820146201800100k_Autumn on Oksunbong Peak.jpg" alt="">
              <div class="p-3 p-sm-5 text-white z-index-20">
                <h4 class="h2">충청북도</h4>
                <p class="mb-4">생명과 태양의 땅 충북</p><a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none"
                  href="#">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="pt-2 mt-5">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <h1>음식점</h1>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm"
              href="category.html">
              전체보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
        </div>
      </div>
      <div class="container-fluid">
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-3">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(${path}/resources/img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Blue Hill</h4>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurants</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam
                      dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(${path}/resources/img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Plutorque</h4>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Proident irure eiusmod velit veniam consectetur id minim irure
                      et nostrud mollit magna velit. Commodo amet proident aliq...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1466978913421-dad2ebd01d17.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Junipoor</h4>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Music club</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Lorem amet ex duis in et fugiat consectetur laborum eiusmod
                      labore. Quis cupidatat et do dolor in in magna. Eu sit quis ...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Musix</h4>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Music club</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Deserunt eiusmod Lorem proident consequat elit culpa laboris ea
                      cupidatat. Consequat dolore proident ipsum qui sint enim...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1504087697492-238a6bf49ce8.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Prosure</h4>

                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cillum sunt reprehenderit ea non irure veniam dolore commodo
                      labore fugiat est consequat velit. Cupidatat nisi qui ad si...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1505275350441-83dcda8eeef5.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Take That</h4>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Café</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cillum sunt reprehenderit ea non irure veniam dolore commodo
                      labore fugiat est consequat velit. Cupidatat nisi qui ad si...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Blue Hill</h4>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurants</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam
                      dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Plutorque</h4>

                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Proident irure eiusmod velit veniam consectetur id minim irure
                      et nostrud mollit magna velit. Commodo amet proident aliq...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1466978913421-dad2ebd01d17.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Junipoor</h4>

                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Music club</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Lorem amet ex duis in et fugiat consectetur laborum eiusmod
                      labore. Quis cupidatat et do dolor in in magna. Eu sit quis ...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Musix</h4>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Music club</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Deserunt eiusmod Lorem proident consequat elit culpa laboris ea
                      cupidatat. Consequat dolore proident ipsum qui sint enim...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1504087697492-238a6bf49ce8.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Prosure</h4>

                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cillum sunt reprehenderit ea non irure veniam dolore commodo
                      labore fugiat est consequat velit. Cupidatat nisi qui ad si...</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover"
                    style="background-image: url(img/photo/restaurant-1505275350441-83dcda8eeef5.jpg); min-height: 200px;">
                    <a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Take That</h4>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Café</div>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cillum sunt reprehenderit ea non irure veniam dolore commodo
                      labore fugiat est consequat velit. Cupidatat nisi qui ad si...</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="pt-2 pb-lg-4" style="background: linear-gradient(to top, #9dc3e6 55%, #fff 45%);">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <h1>인기숙소</h1>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm"
              href="category.html">
              전체보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
        </div>
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative swiper-init pt-3"
          data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}"
          style="overflow: hidden;">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                      src="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room" /><a
                      class="tile-link" href="detail-rooms.html"></a>

                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern,
                          Well-Appointed Room</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>

                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                      src="${path}/resources/img/photo/photo-1426122402199-be02db90eb90.jpg"
                      alt="Cute Quirky Garden apt, NYC adjacent" /><a class="tile-link" href="detail-rooms.html"></a>


                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute
                          Quirky Garden apt, NYC adjacent</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                      src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!" /><a
                      class="tile-link" href="detail-rooms.html"></a>

                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern
                          Apt - Vibrant Neighborhood!</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                      src="${path}/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment" /><a
                      class="tile-link" href="detail-rooms.html"></a>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny
                          Private Studio-Apartment</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                      src="${path}/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise" /><a
                      class="tile-link" href="detail-rooms.html"></a>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark"
                          href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire house</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid"
                      src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan" /><a
                      class="tile-link" href="detail-rooms.html"></a>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Brooklyn
                          Life, Easy to Manhattan</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- If we need pagination-->
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </section>
    <!-- Divider Section-->
    <section class="pt-6 pb-lg-6">
      <div class="container" style="display: flex; flex-direction: row;">
        <div style="flex-grow: 1; width: 1600px;">
          <div class="row mb-5">
            <div class="col-md-6" style="">
              <h1>여행후기</h1>
            </div>
            <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm"
                href="category.html" style="position: relative; left:30%">
                전체보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
          </div>
          <div style="display: flex; flex-direction: column; width: 190%;">
            <div style="flex-grow: 1; width1: 50%;">
              <div class="col-md-6">
                <div
                  class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                  <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">World</strong>
                    <h3 class="mb-0">Featured post</h3>
                    <div class="mb-1 text-muted">Nov 12</div>
                    <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to
                      additional content.</p>
                    <a href="#" class="stretched-link">Continue reading</a>
                  </div>
                  <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                      role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice"
                      focusable="false">
                      <title>Placeholder</title>
                      <rect width="100%" height="100%" fill="#55595c" /><text x="50%" y="50%" fill="#eceeef"
                        dy=".3em">Thumbnail</text>
                    </svg>

                  </div>
                </div>
              </div>
            </div>
            <div style="flex-grow: 1;">
              <div class="col-md-6">
                <div
                  class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                  <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">World</strong>
                    <h3 class="mb-0">Featured post</h3>
                    <div class="mb-1 text-muted">Nov 12</div>
                    <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to
                      additional content.</p>
                    <a href="#" class="stretched-link">Continue reading</a>
                  </div>
                  <div class="col-auto d-none d-lg-block">
                    <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                      role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice"
                      focusable="false">
                      <title>Placeholder</title>
                      <rect width="100%" height="100%" fill="#55595c" /><text x="50%" y="50%" fill="#eceeef"
                        dy=".3em">Thumbnail</text>
                    </svg>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div style="flex-grow: 1;">
          <div class="row mb-5" style="position: relative; left:12%">
            <div class="col-md-5">
              <h1>나만의 여행코스</h1>
            </div>
            <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm"
                href="category.html" style="position: relative; left:50%">
                전체보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
          </div>
          <div class="text-block"
            style="width:95%; height: 530px; position: relative; left: 10%; border: 1px solid #e9ecef;">
            <div class="d-flex d-block d-sm-flex review" style="padding-bottom: 90px;">
              <div>
                <h6 class="mt-2 mb-1">Padmé Amidala</h6>
                <p class="text-muted text-sm">One morning, when Gregor Samsa woke from troubled dreams, he found himself
                  transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his
                  head a little he could see his brown belly, slightly domed and divided by arches into stiff sections
                </p>
              </div>
            </div>
            <div class="d-flex d-block d-sm-flex review">
              <div style="padding-top: 40px;">
                <h6 class="mt-2 mb-1">Luke Skywalker</h6>
                <p class="text-muted text-sm">The bedding was hardly able to cover it and seemed ready to slide off any
                  moment. His many legs, pitifully thin compared with the size of the rest of him, waved about
                  helplessly as he looked. &quot;What's happened to me?&quot; he thought. It wasn't a dream. </p>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
  </section>

  <!-- Instagram-->
  <section>
    <div class="container-fluid px-0">
      <div class="swiper-container instagram-slider" style="padding-bottom: 0;">
        <div class="swiper-wrapper">
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-1.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-2.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-3.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-4.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-5.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-6.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-7.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-8.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-9.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-10.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-11.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-12.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-13.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-14.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-10.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-11.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-12.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-13.jpg" alt=" "></div>
          <div class="swiper-slide overflow-hidden"><img class="img-fluid hover-scale"
              src="${path}/resources/img/instagram/instagram-14.jpg" alt=" "></div>
        </div>
      </div>
    </div>
  </section>
  
  
  <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
  
