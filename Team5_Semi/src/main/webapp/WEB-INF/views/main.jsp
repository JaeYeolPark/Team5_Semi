<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


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
			<div class="swiper-slide bg-cover dark-overlay" style="background-image: url('${path}/resources/img/3820150202100066k_Seongsan Ilchulbong Tuff Cone and Hydrangea Buses.jpg');">
				<div class="container h-100" style="display: flex; justify-content: center; align-items: center;">
					<h2 class="d-flex h-100 text-white overlay-content align-items-center display-1 mb-3 title">JEJU ISLAND</h2>
				</div>
			</div>
			<div class="swiper-slide bg-cover dark-overlay" style="background-image: url('${path}/resources/img/3820151202200004k_Uiamho Lake.jpg');">
				<div class="container h-100" style="display: flex; justify-content: center; align-items: center;">
					<h2 class="d-flex h-100 text-white overlay-content align-items-center display-1 mb-3 title">CHUNCHEON</h2>
				</div>
			</div>
			<div class="swiper-slide bg-cover dark-overlay bg-cover-right" style="background-image: url('${path}/resources/img/3820151202200007k_Wiyangji_Reservoir.jpg');">
				<div class="container h-100" style="display: flex; justify-content: center; align-items: center;">
					<h2 class="d-flex h-100 text-white overlay-content align-items-center display-1 mb-3 title">MIRYANG</h2>
				</div>
			</div>
		</div>
		
		<form name="searchForm" action="${path }/tourspot/search" method="get">
		<c:set var="selectAreaCode" value="${param.selectAreaCode}" />
			<div class="container">
				<div class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20">
						<div class="row">
							<div class="col-lg-4 d-flex align-items-center form-group" style="width: 840px;">
								<input class="form-control border-0 shadow-0" type="text" name="searchValue" placeholder="검색어를 입력하세요" value="${param.searchValue}" />
							</div>
							<div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider" style="width: 200px;">
								<select class="selectpicker" id="selectAreaCode" name="selectAreaCode" data-style="btn-form-control form-control-lg" title="지역 선택">
									<option value="" ${selectAreaCode == '' ? 'selected' : '' }>전체</option>
									<option value="32" ${selectAreaCode == '32' ? 'selected' : '' }>강원도</option>
									<option value="31" ${selectAreaCode == '31' ? 'selected' : '' }>경기도</option>
									<option value="36" ${selectAreaCode == '36' ? 'selected' : '' }>경상남도</option>
									<option value="35" ${selectAreaCode == '35' ? 'selected' : '' }>경상북도</option>
									<option value="38" ${selectAreaCode == '38' ? 'selected' : '' }>전라남도</option>
									<option value="37" ${selectAreaCode == '37' ? 'selected' : '' }>전라북도</option>
									<option value="34" ${selectAreaCode == '34' ? 'selected' : '' }>충청남도</option>
									<option value="33" ${selectAreaCode == '33' ? 'selected' : '' }>충청북도</option>
							</select>
							</div>
							<div class="col-lg-2 form-group d-grid mb-0">
								<button class="btn btn-primary h-100" type="submit">Search</button>
							</div>
						</div>
				</div>
			</div>
		</form>
		<div class="swiper-pagination swiper-pagination-white"></div>
		<div class="swiper-nav d-none d-lg-block">
			<div class="swiper-button-prev" id="homePrev"></div>
			<div class="swiper-button-next" id="homeNext"></div>
		</div>
	</div>
	</div>

	<section class="pt-6">
		<div class="container-fluid">
			<div class="row">
				<div class="col-6 col-lg-4 col-xl-3 px-0">
					<div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;">
						<img class="bg-image" src="${path}/resources/img/3820146201800030k_Journey of Mysterious Island.jpg" alt="">
						<div class="p-3 p-sm-5 text-white z-index-20">
							<h4 class="h2">강원도</h4>
							<p class="mb-4">새로운 강원도! 특별 자치시대!</p>
							<a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path }/tourspot/search?searchValue=&selectAreaCode=32">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-4 col-xl-3 px-0">
					<div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;">
						<img class="bg-image" src="${path}/resources/img/3820143201500066k_남한산성+일출.jpg" alt="">
						<div class="p-3 p-sm-5 text-white z-index-20">
							<h4 class="h2">경기도</h4>
							<p class="mb-4">변화의 중심 기회의 경기</p>
							<a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path }/tourspot/search?searchValue=&selectAreaCode=31">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-4 col-xl-3 px-0">
					<div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;">
						<img class="bg-image" src="${path}/resources/img/3820150202100016k_Morning_in_Wiyangmot_Reservoir.jpg" alt="">
						<div class="p-3 p-sm-5 text-white z-index-20">
							<h4 class="h2">경상남도</h4>
							<p class="mb-4">Bravo Gyeongnam</p>
							<a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path }/tourspot/search?searchValue=&selectAreaCode=36">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-4 col-xl-3 px-0">
					<div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;">
						<img class="bg-image" src="${path}/resources/img/3820151202200043m_HwangNyongWon.jpg" alt="">
						<div class="p-3 p-sm-5 text-white z-index-20">
							<h4 class="h2">경상북도</h4>
							<p class="mb-4">경북의 힘으로 새로운 대한민국</p>
							<a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path }/tourspot/search?searchValue=&selectAreaCode=35">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-4 col-xl-3 px-0">
					<div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;">
						<img class="bg-image" src="${path}/resources/img/3820146201800024k_The Verdant Cheongwansan Mountain.jpg" alt="">
						<div class="p-3 p-sm-5 text-white z-index-20">
							<h4 class="h2">전라남도</h4>
							<p class="mb-4">생명의 땅 으뜸 전남</p>
							<a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path }/tourspot/search?searchValue=&selectAreaCode=38">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-4 col-xl-3 px-0">
					<div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;">
						<img class="bg-image" src="${path}/resources/img/3820146201800016k_The Beginning of Gyehwado Island.jpg" alt="">
						<div class="p-3 p-sm-5 text-white z-index-20">
							<h4 class="h2">전라북도</h4>
							<p class="mb-4">함께 혁신, 함께 성공, 새로운 전북</p>
							<a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path }/tourspot/search?searchValue=&selectAreaCode=37">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-4 col-xl-3 px-0">
					<div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;">
						<img class="bg-image" src="${path}/resources/img/3820146201800007k_Fallen Blossoms.jpg" alt="">
						<div class="p-3 p-sm-5 text-white z-index-20">
							<h4 class="h2">충청남도</h4>
							<p class="mb-4">힘쎈 충남, 대한민국의 힘</p>
							<a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path }/tourspot/search?searchValue=&selectAreaCode=34">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-4 col-xl-3 px-0">
					<div class="d-flex align-items-center dark-overlay hover-scale-bg-image" style="min-height: 400px;">
						<img class="bg-image" src="${path}/resources/img/3820146201800100k_Autumn on Oksunbong Peak.jpg" alt="">
						<div class="p-3 p-sm-5 text-white z-index-20">
							<h4 class="h2">충청북도</h4>
							<p class="mb-4">생명과 태양의 땅 충북</p>
							<a class="btn btn-link text-reset ps-0 stretched-link text-decoration-none" href="${path }/tourspot/search?searchValue=&selectAreaCode=33">자세히 보기<i class="fa fa-chevron-right ms-2"></i></a>
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
				<div class="col-md-4 d-lg-flex align-items-center justify-content-end">
					<a class="text-muted text-sm" href="${path }/restaurant/search"> 전체보기<i class="fas fa-angle-double-right ms-2"></i>
					</a>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<!-- Slider main container-->
			<div class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-3">
				<!-- Additional required wrapper-->
				<div class="swiper-wrapper pb-5">
					<!-- Slides-->
					<c:forEach var="item" items="${restList }">
						<div class="swiper-slide h-auto px-2">
							<!-- venue item-->
							<div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
								<div class="card h-100 border-0 shadow">
									<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(${item.firstimage}); min-height: 200px;">
										<a class="tile-link" href="${path }/restaurant/detail?contentid=${item.contentid}"></a>
										<div class="card-img-overlay-bottom z-index-20">
											<h4 class="text-white text-shadow">${item.title }</h4>
										</div>
										<div class="card-img-overlay-top d-flex justify-content-between align-items-center">
											<div class="badge badge-transparent badge-pill px-3 py-2">
												<c:if test="${item.cat3 == 'A05020100' }">
													한식
												</c:if>
												<c:if test="${item.cat3 == 'A05020200' }">
													서양식
												</c:if>
												<c:if test="${item.cat3 == 'A05020300' }">
													일식
												</c:if>
												<c:if test="${item.cat3 == 'A05020400' }">
													중식
												</c:if>
												<c:if test="${item.cat3 == 'A05020700' }">
													이색음식점
												</c:if>
												<c:if test="${item.cat3 == 'A05020900' }">
													카페/전통찻집
												</c:if>
												<c:if test="${item.cat3 == 'A05021000' }">
													클럽
												</c:if>

											</div>
										</div>
									</div>
									<div class="card-body">
										<p class="text-sm text-muted mb-3">${fn:substring(item.overview,0,99) }
											<c:if test="${item.overview.length() > 100 }">...</c:if>
										</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
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
				<div class="col-md-4 d-lg-flex align-items-center justify-content-end">
					<a class="text-muted text-sm" href="${path }/accm/search"> 전체보기<i class="fas fa-angle-double-right ms-2"></i></a>
				</div>
			</div>
			<!-- Slider main container-->
			<div class="swiper-container swiper-container-mx-negative swiper-init pt-3"
				data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}"
				style="overflow: hidden;">
				<!-- Additional required wrapper-->
				<div class="swiper-wrapper pb-5">
					<!-- Slides-->
					<c:forEach var="item" items="${accmList }">
						<div class="swiper-slide h-auto px-2">
							<!-- place item-->
							<div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
								<div class="card h-100 border-0 shadow">
									<div class="card-img-top overflow-hidden gradient-overlay" style="height: 200px">
										<img class="img-fluid" src="${item.firstimage}" alt="이미지가 없습니다." /> <a class="tile-link" href="${path }/accm/detail?contentid=${item.contentid}"></a>
									</div>
									<div class="card-body d-flex align-items-center">
										<div class="w-100">
											<h6 class="card-title">
												<a class="text-decoration-none text-dark" href="${path }/accm/detail?contentid=${item.contentid}">${item.title }</a>
											</h6>
											<div class="d-flex card-subtitle mb-3">
												<p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- Divider Section-->
	<section class="pt-6 pb-lg-6">
		<div class="container" style="display: flex; flex-direction: row; ">
			<div style="flex-grow: 1; width: 1600px;" class="col">
				<div class="row mb-5">
					<div class="col-md-6" style="">
						<h1>여행후기</h1>
					</div>
					<div class="col-md-4 d-lg-flex align-items-center justify-content-end">
						<a class="text-muted text-sm" href="${path }/community/review" style="position: relative; left: 30%"> 전체보기<i class="fas fa-angle-double-right ms-2"></i></a>
					</div>
				</div>
				<div style="display: flex; flex-direction: column; width: 190%;">
					<c:forEach var="item" items="${reviewList }">
						<div style="flex-grow: 1; width1: 50%;">
							<div class="col-md-6">
								<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
									<div class="col p-4 d-flex flex-column position-static">
										<h3 class="mb-0">${item.title }</h3>
										<div class="mb-1 text-muted">${item.modifyDate }</div>
										<p class="card-text mb-auto">${item.content }</p>
										<a href="#" class="stretched-link">Continue reading</a>
									</div>
									<div class="col-auto d-none d-lg-block">
										<svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" 
											aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><a href="${path}/community/view?no=${item.bno}"> 
											<c:if test="${not empty item.originalFileName and (fn:contains(item.originalFileName,'.jpg') or fn:contains(item.originalFileName,'.png') or fn:contains(item.originalFileName,'.jpeg'))}">
											<img width="200" height="250" src="${path}/resources/upload/board/${item.renamedFileName}" width="100%" height="100%" />
											</c:if> 
											<c:if test="${empty item.originalFileName}">
												<img width="200" height="250" src="${path }/resources/img/notfound.png" alt="">
											</c:if></a>
	                    				</svg>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div style="flex-grow: 1; width:50%;" class="col">
				<div class="row mb-5" style="position: relative; left: 12%">
					<div class="col-md-5">
						<h1>나만의 여행코스</h1>
					</div>
					<div class="col-md-4 d-lg-flex align-items-center justify-content-end">
						<a class="text-muted text-sm" href="${path}/community/courseList" style="position: relative; left: 50%"> 전체보기<i class="fas fa-angle-double-right ms-2"></i></a>
					</div>
				</div>
				<div class="text-block" style="width: 95%; height: 530px; position: relative; left: 10%; border: 1px solid #e9ecef;" >
					<c:forEach var="item" items="${courseList }">
						<div class="d-flex d-block d-sm-flex review" style="padding-bottom: 90px;">
							<div>
								<h6 class="mt-2 mb-1">${item.title }</h6>
								<p class="text-muted text-sm">${item.content }</p>
							</div>
						</div>
					</c:forEach>
					
				</div>
			</div>
		</div>
</section>

<!-- Instagram-->
<section>
	<div class="container-fluid px-0">
		<div class="swiper-container instagram-slider" style="padding-bottom: 0;">
			<div class="swiper-wrapper">
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-1.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-2.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-3.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-4.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-5.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-6.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-7.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-8.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-9.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-10.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-11.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-12.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-13.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-14.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-10.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-11.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-12.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-13.jpg" alt=" ">
				</div>
				<div class="swiper-slide overflow-hidden">
					<img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-14.jpg" alt=" ">
				</div>
			</div>
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

