<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<section class="py-5">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 me-lg-auto">
				<div class="card border-0 shadow mb-6 mb-lg-0">
					<div class="card-header bg-gray-100 py-4 border-0 text-center">
						<a class="d-inline-block" href="#"><img
							class="d-block avatar avatar-xxl p-2 mb-2"
							src="imgPick/profile1.png" alt=""></a>
						<h5>${member.name }</h5>
					</div>
					<div class="card-body p-4">
						<div class="d-flex align-items-center mb-3">
							<div
								class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
								<svg class="svg-icon text-primary svg-icon-md">
                      <use xlink:href="#diploma-1"> </use>
                    </svg>
							</div>
							<div>
								<p class="mb-0">작성한 게시글 : ${boardCount }개</p>
							</div>
						</div>
						<div class="d-flex align-items-center mb-3">
							<div
								class="icon-rounded icon-rounded-sm bg-primary-light flex-shrink-0 me-2">
								<svg class="svg-icon text-primary svg-icon-md">
                      <use xlink:href="#checkmark-1"> </use>
                    </svg>
							</div>
							<div>
								<p class="mb-0">인증 완료</p>
							</div>
						</div>
						<hr>
						<h6>회원 정보</h6>
						<ul class="card-text text-muted">
							<li>이름 : ${member.name }</li>
							<li>이메일 : ${member.email }</li>
							<li>전화번호 : ${member.phone }</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-9 ps-lg-5">
				<h2 class="hero-heading mb-0">${member.name }님 안녕하세요!</h2>
				<br>
				<br>

				<div class="row">
					<div class="col-6 col-md-6 mb-30px">
						<div class="card h-100 w-100 border-0 shadow hover-animate">
							<div class="card-body">
								<div class="icon-rounded bg-secondary-light mb-4">
									<svg class="svg-icon text-secondary w-2rem h-2rem">
                        <use xlink:href="#identity-1"> </use>
                      </svg>
								</div>
								<h5 class="card-title mb-3">
									<a class="text-decoration-none text-dark stretched-link"
										href="${path }/member/personalInfo">회원 정보</a>
								</h5>
								<p class="text-muted card-text">회원정보 관리 | 정보 수정 | 회원 탈퇴</p>
							</div>
						</div>
					</div>
					<div class="col-6 col-md-6 mb-30px">
						<div class="card h-100 border-0 shadow hover-animate">
							<div class="card-body">
								<div class="icon-rounded bg-secondary-light mb-4">
									<svg class="svg-icon text-secondary w-2rem h-2rem">
                        <use xlink:href="#pay-by-card-1"> </use>
                      </svg>
								</div>
								<h5 class="card-title mb-3">
									<a class="text-decoration-none text-dark stretched-link"
										href="#">결제 정보</a>
								</h5>
								<p class="text-muted card-text">결제 수단 관리 | 카드 등록</p>
							</div>
						</div>
					</div>
					<div class="col-6 col-md-6 mb-30px">
						<div class="card h-100 border-0 shadow hover-animate">
							<div class="card-body">
								<div class="icon-rounded bg-secondary-light mb-4">
									<svg class="svg-icon text-secondary w-2rem h-2rem">
                        <use xlink:href="#chat-app-1"> </use>
                      </svg>
								</div>
								<h5 class="card-title mb-3">
									<a class="text-decoration-none text-dark stretched-link"
										href="#">내가 쓴 글</a>
								</h5>
								<p class="text-muted card-text">작성한 커뮤니티 글 | 작성한 댓글</p>
							</div>
						</div>
					</div>
					<div class="col-6 col-md-6 mb-30px">
						<div class="card h-100 border-0 shadow hover-animate">
							<div class="card-body">
								<div class="icon-rounded bg-secondary-light mb-4">
									<svg class="svg-icon text-secondary w-2rem h-2rem">
                        <use xlink:href="#diary-1"> </use>
                      </svg>
								</div>
								<h5 class="card-title mb-3">
									<a class="text-decoration-none text-dark stretched-link"
										href="${path }/member/myBooking">예약 정보</a>
								</h5>
								<p class="text-muted card-text">예약 확인 | 예약 변경 | 예약 취소</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
  
