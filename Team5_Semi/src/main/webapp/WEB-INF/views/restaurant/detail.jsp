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
            <h3 style="color: gray; padding-top: 15px;">${restaurant.firstmenu }</h3>
            <h1>${restaurant.title }</h1>
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
                                <p class="mb-4 " style="font-weight: bolder; font-size: 30px;">About</p>
                                <p class="text-muted font-weight-light">
                                    ${restaurant.overview }
                                </p>
                            </div>
                            <div class="text-block"> <!-- 카카오 지도 들어가는 자리 -->
                                <h5 class="mb-4">Listing location</h5>
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
                                        <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i
                                                    class="fab fa-google-plus me-3"></i><span
                                                    class="text-muted">Google+</span></a></li>
                                    </ul>
                                    <div class="d-grid text-center"><a class="btn btn-outline-primary" href="#"> <i
                                                class="far fa-paper-plane me-2"></i>메시지 보내기</a></div>
                                </div>
                            </div>
                            <div class="col-lg-4">

                            </div>
                        </div>
                    </div>
        </section>

        <section class="pt-2 mt-5 container-fluid">
            <div class="container-fluid">
                <!-- Slider main container-->
                <div class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-1">
                    <!-- Additional required wrapper-->
                    <div class="swiper-wrapper">
                        <!-- Slides-->
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
                                    </div>
                                    <div class="card-body">
                                        <p class="text-sm text-muted mb-3">
                                            Cupidatat excepteur non dolore
                                            laborum etquisnostrud veniam
                                            dolore deserunt. Pariatur dolore
                                            ut in elit id nulla. Irur...</p>
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
                                    </div>
                                    <div class="card-body">
                                        <p class="text-sm text-muted mb-3">
                                            Cupidatat excepteur non dolore
                                            laborum etquisnostrud veniam
                                            dolore deserunt. Pariatur dolore
                                            ut in elit id nulla. Irur...</p>
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
                                    </div>
                                    <div class="card-body">
                                        <p class="text-sm text-muted mb-3">
                                            Cupidatat excepteur non dolore
                                            laborum etquisnostrud veniam
                                            dolore deserunt. Pariatur dolore
                                            ut in elit id nulla. Irur...</p>
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
                                    </div>
                                    <div class="card-body">
                                        <p class="text-sm text-muted mb-3">
                                            Cupidatat excepteur non dolore
                                            laborum etquisnostrud veniam
                                            dolore deserunt. Pariatur dolore
                                            ut in elit id nulla. Irur...</p>
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
                                    </div>
                                    <div class="card-body">
                                        <p class="text-sm text-muted mb-3">
                                            Cupidatat excepteur non dolore
                                            laborum et quisnostrud veniam
                                            dolore deserunt. Pariatur dolore
                                            ut in elit id nulla. Irur...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />