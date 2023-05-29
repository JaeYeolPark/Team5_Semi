<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<div>
	<section class="d-flex align-items-center dark-overlay bg-cover"
		style="background-image: url(${path}/resources/imgPick/roomSearch.jpg);">
		<div
			class="container my-7 py-7 py-lg-7 text-white overlay-content text-center">
			<div class="row">
				<div class="col-xl-10 mx-auto">
					<h1 class="display-3 fw-bold text-shadow"></h1>
					<p class="text-lg text-shadow"></p>
				</div>
			</div>
		</div>
	</section>
	<div class="container">
		<div
			class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20">
			<form action="#">
				<div class="row">
					<div class="col-lg-4 d-flex align-items-center form-group"
						style="width: 840px;">
						<input class="form-control border-0 shadow-0" type="search"
							name="search" placeholder="검색어를 입력하세요">
					</div>
					<div
						class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider"
						style="width: 200px;">
						<select class="selectpicker" title="지역"
							data-style="btn-form-control">
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

	<!-- 중간 부분 시작 -->
	<section class="py-5">
		<div class="container">
			<section class="pt-0">
				<div class="container">
					<div class="row">
						<!-- 체크박스 시작 -->
						<aside class="col-xl-4 col-xxl-3">
							<!-- Responsive offcanvas body START -->
							<div class="offcanvas-xl offcanvas-end" tabindex="-1"
								id="offcanvasSidebar" aria-labelledby="offcanvasSidebarLabel">
								<div class="offcanvas-header">
									<h5 class="offcanvas-title" id="offcanvasSidebarLabel">Advance
										Filters</h5>
									<button type="button" class="btn-close"
										data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar"
										aria-label="Close"></button>
								</div>
								<div class="offcanvas-body flex-column p-3 p-xl-0"
									style="width: 90%;">
									<form class="rounded-3 shadow">

										<!-- Hotel type START -->
										<div class="card card-body rounded-0 rounded-top p-4">
											<!-- Title -->
											<h6 class="mb-2">숙소 유형</h6>
											<!-- Hotel Type group -->
											<div class="col-12">
												<!-- Checkbox -->
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="hotelType1"> <label class="form-check-label"
														for="hotelType1">전체</label>
												</div>
												<!-- Checkbox -->
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="hotelType2"> <label class="form-check-label"
														for="hotelType2">호텔</label>
												</div>
												<!-- Checkbox -->
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="hotelType3"> <label class="form-check-label"
														for="hotelType3">펜션</label>
												</div>
												<!-- Checkbox -->
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="hotelType4"> <label class="form-check-label"
														for="hotelType4">리조트</label>
												</div>
												<!-- Checkbox -->
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="hotelType5"> <label class="form-check-label"
														for="hotelType5">게스트하우스</label>
												</div>
												<!-- Checkbox -->
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="hotelType6"> <label class="form-check-label"
														for="hotelType6">캠핑 글램핑</label>
												</div>

											</div>
										</div>
										<!-- Hotel type END -->
										<hr class="my-0">
										<!-- Divider -->
									</form>
									<!-- Form End -->
								</div>
								<!-- 체크박스 검색 버튼 -->
								<div class="d-flex justify-content-between p-2 p-xl-0 mt-xl-4">
									<button class="btn btn-primary mb-0" style="width: 90%;">검색</button>
								</div>
							</div>
							<!-- Responsive offcanvas body END -->
						</aside>
						<!-- 체크박스 끝 -->


						<!-- 숙소 검색 결과 시작 -->
						<div class="col-xl-8 col-xxl-9">
							<div class="vstack gap-4">
								<c:if test="${!empty accmList}">
									<c:forEach var="item" items="${accmList }">
										<!-- 검색 결과 카드 시작 -->
										<div class="card shadow p-2">
											<div class="row g-0">
												<!-- 카드 이미지 -->
												<div class="col-md-4" style="width: 300px;">
													<img
														src="${item.firstimage }"
														class="card-img rounded-2" alt="Card image">
												</div>
												<!-- 카드 오른쪽 글 -->
												<div class="col-md-8" style="padding-left: 20px;">
													<div class="card-body py-md-2 d-flex flex-column h-100">
														<!-- 각 숙소 이름 주소 -->
														<h4 class="card-title mt-2 mb-3" style="color: #3f8ace;">
															<a href="hotel-detail.html">
																<c:out value="${item.title }"/>
															</a>
														</h4>
														<div><c:out value="${item.addr1 }"/></div>
														<!-- Amenities -->
														<ul class="nav nav-divider mt-2">
															<li class="nav-item">Air Conditioning</li>
															<li class="nav-item">Wifi</li>
															<li class="nav-item">Kitchen</li>
															<li class="nav-item">Pool</li>
														</ul>
														<!-- 가격정보 -->
														<div
															class="d-sm-flex justify-content-sm-between align-items-center mt-3 mt-md-auto">
															<!-- Button -->
															<div class="d-flex align-items-center">
																<h3 class="fw-bold mb-2 me-1">200,000원</h3>
																<span class="mb-0 me-2"> / 1박</span>
															</div>
															<!-- 숙소보기 버튼 -->
															<div class="mt-3">
																<a href="hotel-detail.html"
																	class="btn btn-primary h-100" type="submit">숙소보기</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:if>
								<!-- Card item END -->
							</div>
							<br> <br>

							<!-- 페이지 번호 시작 -->
							<nav aria-label="Page navigation example">
								<ul
									class="pagination pagination-template d-flex justify-content-center">
									<div class="pagination">
										<a href="#">&laquo;</a> <a href="#" class="active">1</a> <a
											href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a
											href="#">5</a> <a href="#">&raquo;</a>
									</div>
								</ul>
							</nav>
							<!-- 페이지 번호 끝 -->

						</div>
						<!-- Main content END -->
					</div>
					<!-- Row END -->
				</div>
			</section>
			<!-- =======================
        Hotel list END -->
		</div>
	</section>
</div>



<jsp:include page="/WEB-INF/views/common/footer.jsp" />