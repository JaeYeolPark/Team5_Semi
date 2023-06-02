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
			<div class="col-lg-7">
				<h1 class="h2 mb-5">숙소 예약</h1>
				<div class="text-block">
					<h5 class="mb-4">예약 날짜</h5>
					<div class="row mb-3">
						<div class="col-md-6 d-flex align-items-center mb-3 mb-md-0">
							<div class="date-tile me-3 bg-secondary-light">
								<div class="text-uppercase text-secondary">
									<strong class="text">6월</strong><br>
									<strong class="text">5일</strong>
								</div>
							</div>
							<p class="text-sm mb-0">
								월요일 check-in<br>3PM - 7PM
							</p>
						</div>
						<div class="col-md-6 d-flex align-items-center">
							<div class="date-tile me-3 bg-secondary-light">
								<div class="text-uppercase text-secondary">
									<strong class="text">6월</strong><br>
									<strong class="text">6일</strong>
								</div>
							</div>
							<p class="text-sm mb-0">
								화요일 check-out<br>11AM
							</p>
						</div>
					</div>
				</div>
				<div class="text-block">
					<label class="h5 mb-4" for="form_guests">예약 인원</label>
					<div class="row">
						<div class="col-lg-6 mb-3">
							<select class="selectpicker form-control" name="guests"
								id="form_guests" data-style="btn-selectpicker" title=" ">
								<option value="guests_0">1</option>
								<option value="guests_1">2</option>
								<option value="guests_2" selected>3</option>
								<option value="guests_3">4</option>
								<option value="guests_4">5</option>
								<option value="guests_5">6</option>
							</select>
						</div>
					</div>
				</div>
				<div class="text-block">
					<form action="#">
						<div class="d-flex justify-content-between align-items-end mb-4">
							<h5 class="mb-0">결제 정보</h5>
							<div class="text-muted">
								<i class="fab fa-cc-amex fa-2x me-2"> </i><i
									class="fab fa-cc-visa fa-2x me-2"> </i><i
									class="fab fa-cc-mastercard fa-2x"></i>
							</div>
						</div>
						<select class="selectpicker form-control mb-3" name="payment"
							id="form_payment" data-style="btn-selectpicker">
							<option value="">Visa •••• 5687</option>
							<option value="">Mastercard •••• 4569</option>
						</select>
						<div class="d-flex justify-content-between mb-3">
							<button class="btn btn-outline-dark" style="width: 100%;">카카오페이로
								결제</button>
						</div>
						<button class="btn btn-link btn-collapse ps-0 text-muted"
							type="button" data-bs-toggle="collapse"
							data-bs-target="#addNewCard" aria-expanded="false"
							aria-controls="addNewCard" data-expanded-text="Close"
							data-collapsed-text="Add a new card">카드 추가하기</button>
						<div class="row collapse" id="addNewCard">
							<div class="mb-4 col-md-6">
								<label class="form-label" for="card-name">이름</label> <input
									class="form-control" type="text" name="card-name"
									placeholder="Name on card" id="card-name">
							</div>
							<div class="mb-4 col-md-6">
								<label class="form-label" for="card-number">카드번호</label> <input
									class="form-control" type="text" name="card-number"
									placeholder="Card number" id="card-number">
							</div>
							<div class="mb-4 col-md-4">
								<label class="form-label" for="expiry-date">유효기간</label> <input
									class="form-control" type="text" name="expiry-date"
									placeholder="MM/YY" id="expiry-date">
							</div>
							<div class="mb-4 col-md-4">
								<label class="form-label" for="cvv">CVC/CVV</label> <input
									class="form-control" type="text" name="cvv" placeholder="123"
									id="cvv">
							</div>
							<div class="mb-4 col-md-4">
								<label class="form-label" for="zip">우편번호</label> <input
									class="form-control" type="text" name="zip" placeholder="12321"
									id="zip">
							</div>
						</div>
					</form>
				</div>

				<div class="row form-block flex-column flex-sm-row">
					<div class="col text-center text-sm-start"></div>
				</div>
			</div>
			<div class="col-lg-5 ps-xl-5">
				<div class="card border-0 shadow">
					<div class="card-body p-4">
						<div class="text-block pb-3">
							<div class="d-flex align-items-center">
								<div>
									<h6>
										<a class="text-reset" href="detail-rooms.html">한화리조트 설악
											쏘라노</a>
									</h6>
									<p class="text-muted text-sm mb-0">강원 속초시 미시령로2983번길 111</p>
								</div>
								<a class="flex-shrink-0" href="detail-rooms.html"> <img
									class="ms-7 rounded"
									src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt=""
									width="120">
								</a>
							</div>
						</div>
						<div class="text-block py-3">
							<ul class="list-unstyled mb-0">
								<li class="mb-3"><i
									class="fas fa-users fa-fw text-muted me-2"></i>5명</li>
								<li class="mb-0"><i
									class="far fa-calendar fa-fw text-muted me-2"></i>2023-06-05 <i
									class="fas fa-arrow-right fa-fw text-muted mx-3"></i>2023-06-06</li>
							</ul>
						</div>
						<div class="text-block pt-3 pb-0">
							<table class="w-100">
								<tbody>
									<tr>
										<th class="fw-normal py-2">200,000원 x 1박</th>
									</tr>
								</tbody>
								<tfoot>
									<tr class="border-top">
										<th class="pt-3">Total</th>
										<td class="fw-bold text-end pt-3">200,000원</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
					<div class="card-footer bg-primary-light py-4 border-0"
						style="background-color: rgb(170, 170, 170);">
						<div class="d-flex align-items-center">
							<div>
								<h6 class="text" style="color: white;">무료 취소</h6>
								<p class="text-sm text opacity-8 mb-0" style="color: white;">
									예약 48시간 내에 무료 취소 가능하며 이후에는 기간에 따라 취소 수수료가 부과될 수 있습니다. <a
										href="#" class="text-reset ms-3">자세히 보기</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="d-flex justify-content-between p-2 p-xl-0 mt-xl-4">
					<button class="btn btn-lg btn-primary mb-0" style="width: 100%;">예약하기</button>
				</div>
			</div>
		</div>
	</div>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />