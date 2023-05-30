<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<body style="padding-top: 72px; overflow-x: hidden">

	<section class="container">
		<h3 style="color: gray; padding-top: 15px;">강릉</h3>
		<h1>${accm.title }</h1>
	</section>
	<section class="position-relative py-6 container-fluid">
		<img class="bg-image h-100" src="${accm.firstimage }" alt="">
		<div style="height: 300px;"></div>
	</section>
	<section>
		<div class="container py-5">
			<div class="row" style="font-size: 20px; font-weight: bolder;">
				<div class="col-lg-8">
					<div class="text-block">
						<p class="text-muted text-uppercase mb-4">
							<c:out value="${accm.title }" />
						</p>
						<ul class="list-inline text-sm mb-4">
							<c:if test="${not empty accm.accomcountlodging }">
								<li class="list-inline-item mr-3"><i
									class="fa fa-users mr-1 text-secondary"></i> <c:out
										value="수용가능인원 : ${accm.accomcountlodging }" /></li>
							</c:if>
							<c:if test="${not empty accm.roomcount }">
								<li class="list-inline-item mr-3"><i
									class="fa fa-door-open mr-1 text-secondary"></i> <c:out
										value="총 객실수 : ${accm.roomcount }" /></li>
							</c:if>
							<c:if test="${not empty accm.roomtype }">
								<li class="list-inline-item mr-3"><i
									class="fa fa-bed mr-1 text-secondary"></i> <c:out
										value="객실유형 : ${accm.roomtype }" /></li>
							</c:if>
							<li class="list-inline-item mr-3"><i
								class="fa fa-bath mr-1 text-secondary"></i> <c:out
									value="공용샤워실여부 : ${accm.publicbath }" /></li>
						</ul>
						<h6 class="mb-3">숙소설명</h6>
						<p class="text-muted font-weight-light">
							<c:out value="${accm.overview }" />
						</p>
					</div>
					<div class="text-block">
						<h4 class="mb-4">기본 정보</h4>
						<div class="row">
							<div class="col-md-6">
								<ul class="list-unstyled text-muted">
									
									<li class="mb-2">
										<i class="fa  fa-clock text-secondary w-1rem mr-3 text-center"></i>
										<c:if test="${not empty accm.checkintime }">
											<span class="text-sm ms-4">
												<c:out value="체크인 시간 : ${accm.checkintime }"/>
											</span>
										</c:if>
										<c:if test="${empty accm.checkintime }">
											<span class="text-sm ms-4">
												<c:out value="체크인 시간 : 정보가 없습니다"/>
											</span>
										</c:if>
									</li>
									<li class="mb-2">
										<i class="fa  fa-clock text-secondary w-1rem mr-3 text-center"></i>
										<c:if test="${not empty accm.checkouttime }">
											<span class="text-sm ms-4">
												<c:out value="체크아웃 시간 : ${accm.checkouttime }"/>
											</span>
										</c:if>
										<c:if test="${empty accm.checkintime }">
											<span class="text-sm ms-4">
												<c:out value="체크아웃 시간 : 정보가 없습니다"/>
											</span>
										</c:if>
									</li>
									
								</ul>
							</div>
						</div>
					</div>
					<div class="text-block">
						<h4 class="mb-0">시설</h4>
						<p class="subtitle text-sm text-primary mb-4">시설정보</p>
						<ul class="list-inline">
							<li class="list-inline-item mb-2"><span
								class="badge badge-pill badge-light p-3 text-muted font-weight-normal">Wifi</span>
							</li>
							<li class="list-inline-item mb-2"><span
								class="badge badge-pill badge-light p-3 text-muted font-weight-normal">Cable
									TV</span></li>
							<li class="list-inline-item mb-2"><span
								class="badge badge-pill badge-light p-3 text-muted font-weight-normal">Air
									conditioning</span></li>
							<li class="list-inline-item mb-2"><span
								class="badge badge-pill badge-light p-3 text-muted font-weight-normal">Heating</span>
							</li>
							<li class="list-inline-item mb-2"><span
								class="badge badge-pill badge-light p-3 text-muted font-weight-normal">Toiletteries</span>
							</li>
							<li class="list-inline-item mb-2"><span
								class="badge badge-pill badge-light p-3 text-muted font-weight-normal">Equipped
									Kitchen</span></li>
							<li class="list-inline-item mb-2"><span
								class="badge badge-pill badge-light p-3 text-muted font-weight-normal">Desk
									for work</span></li>
							<li class="list-inline-item mb-2"><span
								class="badge badge-pill badge-light p-3 text-muted font-weight-normal">Washing
									machine</span></li>
						</ul>
					</div>
					<div class="text-block">
						<h5 class="mb-4">Listing location</h5>
						<div class="map-wrapper-300 mb-3">
							<div class="h-100" id="detailMap"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="p-4 shadow ml-lg-4 rounded " style="top: 100px;">
						<p class="text-muted">
							<span class="text-primary h2">$120</span> per night
						</p>
						<hr class="my-4">
						<form class="form" id="booking-form" method="get" action="#"
							autocomplete="off">
							<div class="form-group">
								<label class="form-label" for="bookingDate">Your stay *</label>
								<div class="datepicker-container datepicker-container-right">
									<input class="form-control" type="text" name="bookingDate"
										id="bookingDate" placeholder="Choose your dates"
										required="required">
								</div>
							</div>
							<div class="form-group mb-4">
								<label class="form-label" for="guests">Guests *</label> <select
									class="form-control" name="guests" id="guests">
									<option value="1">1 Guest</option>
									<option value="2">2 Guests</option>
									<option value="3">3 Guests</option>
									<option value="4">4 Guests</option>
									<option value="5">5 Guests</option>
								</select>
							</div>
							<div class="form-group">
								<button class="btn btn-primary btn-block" type="submit">Book
									your stay</button>
							</div>
						</form>
						<p class="text-muted text-sm text-center">Some additional text
							can be also placed here.</p>
						<hr class="my-4">
						<div class="text-center">
							<p>
								<a class="text-secondary text-sm" href="#"> <i
									class="fa fa-heart"></i> Bookmark This Listing
								</a>
							</p>
							<p class="text-muted text-sm">79 people bookmarked this place
							</p>
						</div>
					</div>
					<div class="p-2 shadow ml-lg-4 rounded mt-4" style="top: 100px;">
						<img src="img\photo\fez.jpg" class="img-fluid" alt="">
					</div>
					<div class="p-2 shadow ml-lg-4 rounded mt-4" style="top: 100px;">
						<img src="img\photo\fez.jpg" class="img-fluid" alt="">
					</div>
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
	</section>

	<section class="pt-2 mt-5 container-fluid">
		<div class="container-fluid">
			<!-- Slider main container-->
			<div
				class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-1">
				<!-- Additional required wrapper-->
				<div class="swiper-wrapper">
					<!-- Slides-->
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e33b1527bfe2abaf92">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Blue Hill</h4>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cupidatat excepteur non
										dolore laborum etquisnostrud veniam dolore deserunt. Pariatur
										dolore ut in elit id nulla. Irur...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e33b1527bfe2abaf92">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Blue Hill</h4>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cupidatat excepteur non
										dolore laborum etquisnostrud veniam dolore deserunt. Pariatur
										dolore ut in elit id nulla. Irur...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e33b1527bfe2abaf92">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Blue Hill</h4>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cupidatat excepteur non
										dolore laborum etquisnostrud veniam dolore deserunt. Pariatur
										dolore ut in elit id nulla. Irur...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e33b1527bfe2abaf92">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Blue Hill</h4>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cupidatat excepteur non
										dolore laborum etquisnostrud veniam dolore deserunt. Pariatur
										dolore ut in elit id nulla. Irur...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide h-auto px-2">
						<!-- venue item-->
						<div class="w-100 h-100 hover-animate"
							data-marker-id="59c0c8e33b1527bfe2abaf92">
							<div class="card h-100 border-0 shadow">
								<div class="card-img-top overflow-hidden dark-overlay bg-cover"
									style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
									<a class="tile-link" href="detail.html"></a>
									<div class="card-img-overlay-bottom z-index-20">
										<h4 class="text-white text-shadow">Blue Hill</h4>
									</div>
								</div>
								<div class="card-body">
									<p class="text-sm text-muted mb-3">Cupidatat excepteur non
										dolore laborum et quisnostrud veniam dolore deserunt. Pariatur
										dolore ut in elit id nulla. Irur...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
</body>
















<jsp:include page="/WEB-INF/views/common/footer.jsp" />