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
            <h3 style="color: gray; padding-top: 40px;">${tourspot.addr1 }</h3>
            <h1 style="padding-bottom: 20px;">${tourspot.title }</h1>
        </section>
        <section class="position-relative py-6 container-fluid">
            <img class="bg-image h-100" src="${tourspot.firstimage }" alt="">
            <div style="height: 300px;"></div>
        </section>

        <section>
            <div class="container py-5">
                <div class="row" style="font-size: 20px; font-weight: bolder;">
                    <div>
                        <div class="container">
                            <div class="text-block">
                                <p class="mb-4 " style="font: bolder; font-size: 30px;">관광지 설명</p>
                                <p class="text-muted font-weight-light">
                                    ${tourspot.overview }
                                </p>
                            </div>
                            <div class="text-block">
                            	<p class="mb-4 " style="font: bolder; font-size: 30px;">기본 정보</p>
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <ul class="list-unstyled text-muted">
                                            <li class="mb-3"> <i class="fas fa-baby-carriage" style="color: #9dc3e6; font-size: 3rem;"></i>
                                                <span class="ms-4">${tourspot.chkbabycarriage }</span>
                                            </li>
                                            <li class="mb-3"> <i class="fas fa-paw" style="color: #9dc3e6; font-size: 3rem;"></i>
                                                <span class="ms-4">${tourspot.chkpet }</span>
                                            </li>
                                            <li class="mb-3"> <i class="fas fa-car" style="color: #9dc3e6; font-size: 3rem;"></i>
                                                <span class="ms-4">${tourspot.parking }</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <ul class="list-unstyled text-muted">
                                            <li class="mb-3"> <i class="far fa-calendar-alt" style="color: #9dc3e6; font-size: 3rem;"></i></i>
                                                <span class="ms-4">${tourspot.opendate }</span>
                                            </li>
                                            <li class="mb-3"> <i class="far fa-calendar-times" style="color: #9dc3e6; font-size: 3rem;"></i></i>
                                                <span class="ms-4">${tourspot.restdate }</span>
                                            </li>
                                            <li class="mb-3"> <i class="far fa-clock" style="color: #9dc3e6; font-size: 3rem;"></i>
                                                <span class="ms-4">${tourspot.usetime }</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="text-block"> <!-- 카카오 지도 들어가는 자리 -->
                            	<p class="mb-4 " style="font: bolder; font-size: 30px;">위치</p>
                                <div class="map-wrapper-300 mb-3">
                                    <div class="h-100" id="detailMap"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <section class="container">
            <div class="text-block">
                <!-- Gallery-->
                <h3 class="mb-4">사진</h3>
                <div class="row gallery ms-n1 me-n1">
                    <div class="col-lg-4 col-6 px-1 mb-2"><a
                            href="#"><img
                                class="img-fluid"
                                src="${tourspot.firstimage }" alt="..."></a>
                    </div>
                    <div class="col-lg-4 col-6 px-1 mb-2"><a
                            href="#"><img
                                class="img-fluid"
                                src="${tourspot.firstimage2 }" alt="..."></a>
                    </div>
                    
                </div>
            </div>
        </section>
    </body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />