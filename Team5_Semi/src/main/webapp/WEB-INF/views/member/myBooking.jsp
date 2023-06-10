<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


<section class="py-5">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 me-lg-auto">
				<div class="card border-0 shadow mb-6 mb-lg-0">
					<div class="card-header bg-gray-100 py-4 border-0 text-center">
						<a class="d-inline-block" href="#"><img
							class="d-block avatar avatar-xxl p-2 mb-2"
							src="imgPick/profile1.png" alt=""></a>
						<h5>${loginMember.name }</h5>
					</div>
					<div class="card-body p-4">
						<h6>회원 정보</h6>
						<ul class="card-text text-muted">
							<li>이름 : ${loginMember.name }</li>
							<li>이메일 : ${loginMember.email }</li>
							<li>전화번호 : ${loginMember.phone }</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-9 ps-lg-5">
				<div class="mb-3"
					style="display: flex; justify-content: left; align-items: center;">
					<img src="${path }/resources/img/logo2.png" width="55px"
						height="55px">
					<h2 style="display: inline;">&nbsp;예약 정보</h2>
				</div>
				<br>
				<h5>예약 현황</h5>
				<br>
				<div class="row">
					<c:if test="${not empty accmList }">
						<c:forEach var="item" items="${accmList }">
							<!-- place item-->
							<c:forEach var="booking" items="${list }">
								<c:if test="${item.contentid == booking.contentId }">
									<c:if test="${booking.endDate.getTime() > nowTime.getTime()}">
										<div class="col-sm-6 col-lg-4 mb-30px hover-animate"
											data-marker-id="59c0c8e33b1527bfe2abaf92">
											<div class="card h-100 border-0 shadow">
												<div class="card-img-top overflow-hidden gradient-overlay"
													style="height: 200px">
													<img class="img-fluid" src="${item.firstimage }"
														alt="이미지가 없습니다." /> <a class="tile-link"
														href="${path }/accm/detail?contentid=${item.contentid}"></a>
												</div>
												<div class="card-body d-flex align-items-center">
													<div class="w-100">
														<h6 class="card-title">
															<a class="text-decoration-none text-dark"
																href="detail-rooms.html">${item.title}</a>
														</h6>
														<p class="card-text text-muted">
															<span class="h4 text-primary">68000원</span> / 1박
														</p>
													</div>
												</div>
											</div>
										</div>
									</c:if>
								</c:if>
							</c:forEach>
						</c:forEach>
					</c:if>
				</div>
				<br>

				<h5>완료된 예약</h5>
				<br>
				<div class="row">
					<!-- place item-->
					<c:forEach var="item" items="${accmList }">
						<!-- place item-->
						<c:forEach var="booking" items="${list }">
							<c:if test="${item.contentid == booking.contentId }">
								<c:if test="${booking.endDate.getTime() < nowTime.getTime()}">
									<div class="col-sm-6 col-lg-4 mb-30px hover-animate"
										data-marker-id="59c0c8e33b1527bfe2abaf92">
										<div class="card h-100 border-0 shadow">
											<div class="card-img-top overflow-hidden gradient-overlay"
												style="height: 200px">
												<img class="img-fluid" src="${item.firstimage }"
													alt="이미지가 없습니다." /> <a class="tile-link"
													href="${path }/accm/detail?contentid=${item.contentid}"></a>
											</div>
											<div class="card-body d-flex align-items-center">
												<div class="w-100">
													<h6 class="card-title">
														<a class="text-decoration-none text-dark"
															href="detail-rooms.html">${item.title}</a>
													</h6>
													<p class="card-text text-muted">
														<span class="h4 text-primary">68000원</span> / 1박
													</p>
												</div>
											</div>
										</div>
									</div>
								</c:if>
							</c:if>
						</c:forEach>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

