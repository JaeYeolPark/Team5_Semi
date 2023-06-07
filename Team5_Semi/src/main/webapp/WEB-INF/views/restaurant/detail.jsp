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
            <h4 style="color: gray; padding-top: 40px;">${restaurant.firstmenu }</h4>
            <h1 style="padding-bottom: 20px;">${restaurant.title }</h1>
        </section>
        <section class="position-relative py-6 container-fluid">
            <img class="bg-image h-100" src="${restaurant.firstimage }" alt="">
            <div style="height: 300px;"></div>
        </section>

        <section>
            <div class="container py-5">
                <div class="row" style="font-size: 20px; font-weight: bolder;">
                    <div class="col-lg-8">
                        <div class="container">
                            <div class="text-block">
                                <p class="mb-4 " style="font: bolder; font-size: 30px;">음식점 정보</p>
                                <p class="text-muted font-weight-light">
                                    ${restaurant.overview }
                                </p>
                            </div>
                            <div class="text-block"> <!-- 카카오 지도 들어가는 자리 -->
                            	<p class="mb-4 " style="font: bolder; font-size: 30px;">위치</p>
                                <div class="map-wrapper-300 mb-3">
                                    <div class="h-100" id="detailMap"></div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="text-block">
                                <!-- Gallery-->
                                <h3 class="mb-4">사진</h3>
                                <div class="row gallery ms-n1 me-n1">
                                    <div class="col-lg-4 col-6 px-1 mb-2"><a
                                            href="#"><img
                                                class="img-fluid"
                                                src="${restaurant.firstimage }" alt="..."></a>
                                    </div>
                                    <div class="col-lg-4 col-6 px-1 mb-2"><a
                                            href="#"><img
                                                class="img-fluid"
                                                src="${restaurant.firstimage2 }" alt="..."></a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="ps-xl-4">
                            <!-- Opening Hours      -->
                            <div class="card border-0 shadow mb-5">
                                <div class="card-header bg-gray-100 py-4 border-0">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div>
                                            <p class="subtitle text-sm text-primary"></p>
                                            <h4 class="mb-0">영업 시간</h4>
                                        </div>
                                        <svg
                                            class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-muted flex-shrink-0">
                                            <use xlink:href="#wall-clock-1"> </use>
                                        </svg>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="table text-sm mb-0">
                                        <tr>
                                            <th class="ps-0 border-0">영업 시간</th>
                                            <td class="pe-0 text-end border-0">${restaurant.opentimefood }</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-0 border-0">휴무일</th>
                                            <td class="pe-0 text-end border-0">${restaurant.restdatefood }</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="card border-0 shadow mb-5">
                                <div class="card-header bg-gray-100 py-4 border-0">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div>
                                            <p class="subtitle text-sm text-primary"></p>
                                            <h4 class="mb-0">연락하기</h4>
                                        </div>
                                        <svg
                                            class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-muted flex-shrink-0">
                                            <use xlink:href="#fountain-pen-1"> </use>
                                        </svg>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <ul class="list-unstyled mb-4">
                                        <li class="mb-2"> <a class="text-gray-00 text-sm text-decoration-none"
                                                href="#"><i class="fa fa-phone me-3"></i><span class="text-muted">
                                                    ${restaurant.tel }</span></a></li>
                                        <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i
                                                    class="fa fa-globe me-3"></i><span
                                                    class="text-muted">${restaurant.homepage }</span></a></li>
                                        <li class="mb-2"> <a class="text-blue text-sm text-decoration-none" href="#"><i
                                                    class="fab fa-facebook me-3"></i><span
                                                    class="text-muted">Facebook</span></a></li>
                                        <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i
                                                    class="fab fa-instagram me-3"></i><span
                                                    class="text-muted">Instagram</span></a></li>
                                    </ul>
                                    <div class="d-grid text-center"><a class="btn btn-outline-primary" href="#"> <i
                                                class="far fa-paper-plane me-2"></i>문의하기</a></div>
                                </div>
                            </div>
                            <div class="col-lg-4">

                            </div>
                        </div>
                    </div>
        </section>

        <section class="pt-1 mt-2 container-fluid mb-4">
		<div class="container-fluid">
			<!-- Slider main container-->
			<div class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-1">
				<!-- Additional required wrapper-->
				<div class="swiper-wrapper">
					<c:forEach var="item" items="${dRestaurantList }">
						<!-- Slides-->
						<div class="swiper-slide h-auto px-2 mb-4">
							<!-- venue item-->
							<div class="w-100 h-100 hover-animate"
								data-marker-id="59c0c8e33b1527bfe2abaf92">
								<div class="card h-100 border-0 shadow">
									<div class="card-img-top overflow-hidden dark-overlay bg-cover"
										style="background-image: url(${item.firstimage}); min-height: 200px;">
										<a class="tile-link" href="${path }/restaurant/detail?contentid=${item.contentid}"></a>
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
	    center: new kakao.maps.LatLng(${restaurant.mapy}, ${restaurant.mapx}), //지도의 중심좌표.
	    level: 3 //지도의 레벨(확대, 축소 정도)
	    // disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    // 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(${restaurant.mapy}, ${restaurant.mapx}); 

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