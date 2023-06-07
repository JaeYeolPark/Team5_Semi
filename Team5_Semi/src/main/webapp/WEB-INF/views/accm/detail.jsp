<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">

<body style="padding-top: 72px; overflow-x: hidden">

	<section class="container">
		<h3 style="color: gray; padding-top: 40px;">강릉</h3>
		<h1 style="padding-bottom: 20px;">${accm.title }</h1>
	</section>
	<section class="position-relative py-6 container-fluid">
		<c:choose>
			<c:when test="${not empty accm.firstimage }">
				<img class="bg-image h-100" src="${accm.firstimage }" alt="">
			</c:when>
			<c:otherwise>
				<img class="bg-image h-100" src="${path }/resources/img/preparing2.png" alt="">
			</c:otherwise>
		</c:choose>
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
						<p class="mb-4 " style="font: bolder; font-size: 30px;">숙소 설명</p>
						<p class="text-muted font-weight-light">
							<c:out value="${accm.overview }" />
						</p>
					</div>
					<div class="text-block">
					<p class="mb-4 " style="font: bolder; font-size: 30px;">기본 정보</p>
						<div class="row">
							<div class="col-md-6">
								<ul class="list-unstyled text-muted">

									<li class="mb-2"><i
										class="fa  fa-clock text-secondary w-1rem mr-3 text-center"></i>
										<c:if test="${not empty accm.checkintime }">
											<span class="text-sm ms-4"> <c:out
													value="체크인 시간 : ${accm.checkintime }" />
											</span>
										</c:if> 
										<c:if test="${empty accm.checkintime }">
											<span class="text-sm ms-4"> <c:out
													value="체크인 시간 : 정보가 없습니다" />
											</span>
										</c:if>
									</li>
									<li class="mb-2"><i
										class="fa  fa-clock text-secondary w-1rem mr-3 text-center"></i>
										<c:if test="${not empty accm.checkouttime }">
											<span class="text-sm ms-4"> <c:out
													value="체크아웃 시간 : ${accm.checkouttime }" />
											</span>
										</c:if> <c:if test="${empty accm.checkintime }">
											<span class="text-sm ms-4"> <c:out
													value="체크아웃 시간 : 정보가 없습니다" />
											</span>
										</c:if></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="text-block">
						<p class="mb-4 " style="font: bolder; font-size: 30px;">시설</p>
						<p class="subtitle text-sm text-primary mb-4">시설정보</p>

						<ul class="list-inline">
							<c:if test="${accm.karaoke != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="노래방" />
								</span></li>
							</c:if>
							<c:if test="${accm.publicpc != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="컴퓨터" />
								</span></li>
							</c:if>
							<c:if test="${accm.publicbath != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="샤워실" />
								</span></li>
							</c:if>
							<c:if test="${accm.seminar != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="세미나실" />
								</span></li>
							</c:if>
							<c:if test="${accm.sports != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="스포츠시설" />
								</span></li>
							</c:if>
							<c:if test="${accm.barbecue != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="바비큐장" />
								</span></li>
							</c:if>
							<c:if test="${accm.beauty != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="뷰티시설" />
								</span></li>
							</c:if>
							<c:if test="${accm.beverage != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="식음료장" />
								</span></li>
							</c:if>
							<c:if test="${accm.bicycle != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="자전거대여" />
								</span></li>
							</c:if>
							<c:if test="${accm.campfire != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="캠프파이어" />
								</span></li>
							</c:if>
							<c:if test="${accm.fitness != '0' }">
								<li class="list-inline-item mb-2"><span
									class="badge badge-pill badge-light p-3 text-muted font-weight-normal">
										<c:out value="피트니스센터" />
								</span></li>
							</c:if>
						</ul>
					</div>
					<div class="text-block">
						<p class="mb-4 " style="font: bolder; font-size: 30px;">위치</p>
						<div class="map-wrapper-300">
							<div class="h-100" id="detailMap"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="p-4 shadow ms-lg-4 rounded"
						style="top: 100px;">
						<p class="text-muted">
							<span class="text-primary h2">68,000 원</span> x 1박
						</p>
						<hr class="my-4">
						<form class="form" id="bookingForm" method="get" action="${path }/accm/booking"
							autocomplete="off">
							<div class="mb-4">
								<label class="form-label" for="bookingDate">여행 일정 *</label>
								<input class="form-control" id="startDate" name="startDate" type="date" required/>
								<input class="form-control" id="endDate" name="endDate" type="date" required/>
								
								<fmt:parseDate var="startDate_D"  value="${startDate }" pattern="yyyy-MM-dd"/>
								<fmt:parseDate var="endDate_D" value="${endDate }"  pattern="yyyy-MM-dd"/>
								<fmt:parseNumber var="startDate_N" value="${startDate_D.time / (1000*60*60*24)}" integerOnly="true" />
								<fmt:parseNumber var="endDate_N" value="${endDate_D.time / (1000*60*60*24)}" integerOnly="true" /> 
								
								<input type="hidden" name="price" value="68000"/>
								<input type="hidden" name="days" value="${startDate_N - endDate_N}">
								<input type="hidden" name="checkin" value="${accm.checkintime}">
								<input type="hidden" name="checkout" value="${accm.checkouttime}">
								<input type="hidden" name="bkAddr" value="${accm.addr1 } ${accm.addr2}">
								<input type="hidden" name="bkImg" value="${accm.firstimage }">
								<input type="hidden" name="bkContentId" value="${accm.contentid }">
								<input type="hidden" name="bkTitle" value="${accm.title }">
								<input type="hidden" name="refund" value="${accm.refundregulation }">
							</div>
							<div class="mb-4">
								<label class="form-label" for="guests">인원 *</label>
								<select class="form-control" name="headCount" id="headCount">
									<option value="1">1명</option>
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
									<option value="5">5명</option>
								</select>
							</div>
							<div class="d-grid mb-4">
								<c:if test="${not empty loginMember }">
									<button class="btn btn-primary" type="submit" >예약하기</button>
								</c:if>
								<c:if test="${empty loginMember }">
									<button class="btn" style="gray;" type="submit" disabled >로그인해주세요</button>
								</c:if>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
	</section>


	<section class="pt-1 mt-2 container-fluid mb-4">
		<div class="container-fluid">
			<!-- Slider main container-->
			<div class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-1">
				<!-- Additional required wrapper-->
				<div class="swiper-wrapper">
					<c:forEach var="item" items="${dAccmList }">
						<!-- Slides-->
						<div class="swiper-slide h-auto px-2 mb-4">
							<!-- venue item-->
							<div class="w-100 h-100 hover-animate"
								data-marker-id="59c0c8e33b1527bfe2abaf92">
								<div class="card h-100 border-0 shadow">
									<div class="card-img-top overflow-hidden dark-overlay bg-cover"
										style="background-image: url(${item.firstimage}); min-height: 200px;">
										<a class="tile-link" href="${path }/accm/detail?contentid=${item.contentid}"></a>
										<div class="card-img-overlay-bottom z-index-20">
											<h5 class="text-white text-shadow">${item.title }</h5>
										</div>
									</div>
									<div class="card-body" >
										<p class="text-sm text-muted mb-3">${fn:substring(item.overview,0,99) }
										<c:if test="${item.overview.length() > 100 }">...</c:if></p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
</body>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=394919af8b3f58765ba429c8f8ba8270"></script>
<script>
	var container = document.getElementById('detailMap'); //지도를 담을 영역의 DOM 레퍼런스
	
	var options = { //지도를 생성할 때 필요한 기본 옵션
	    center: new kakao.maps.LatLng(${accm.mapy}, ${accm.mapx}), //지도의 중심좌표.
	    level: 3 //지도의 레벨(확대, 축소 정도)
	    // disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    // 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(${accm.mapy}, ${accm.mapx}); 

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);

    // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
    // marker.setMap(null);

    // 지도에 클릭 이벤트를 등록합니다
    // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
    kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
        
        // 클릭한 위도, 경도 정보를 가져옵니다 
        var latlng = mouseEvent.latLng; 
        
        // 마커 위치를 클릭한 위치로 옮깁니다
        marker.setPosition(latlng);
        
        // 마우스로 클릭한 위치의 위도와 경도를 표시할 메세지
        var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
        message += '경도는 ' + latlng.getLng() + ' 입니다';

        // 'clickLatlng'라는 아이디값을 가진 <div> 태그의 innerHTML 으로 위 메세지를 설정합니다.
        var resultDiv = document.getElementById('clickLatlng'); 
        resultDiv.innerHTML = message;
        
    });

</script>

<script>
	var now_utc = Date.now() // 지금 날짜를 밀리초로
	//getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
	var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
	//new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
	var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
	document.getElementById("startDate").setAttribute("min", today);
	document.getElementById("endDate").setAttribute("min", today);
</script>

<script type="text/javascript">
	$('#datePicker').datepicker({
		format : "yyyy-mm-dd", // 달력에서 클릭시 표시할 값 형식
	});
</script>




<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />