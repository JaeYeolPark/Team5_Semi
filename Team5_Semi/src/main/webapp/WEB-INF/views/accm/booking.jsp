<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


<section class="py-5">
	<form name="kakaoPay" id="kakaoPay" method="post">
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
										<fmt:parseDate var="parsedStartDate"
											value="${bkParam.startDate}" pattern="yyyy-MM-dd" />
										<strong class="text"><fmt:formatDate
												value="${parsedStartDate}" pattern="M월"></fmt:formatDate></strong><br>
										<strong class="text"><fmt:formatDate
												value="${parsedStartDate}" pattern="d일"></fmt:formatDate></strong>
									</div>
								</div>
								<c:if test="${not empty bkParam.checkin }">
									<p class="text-sm mb-0">
										${parsedStartDate.getDay() == '1' ? '월요일 check-in' : ''  }
										${parsedStartDate.getDay() == '2' ? '화요일 check-in' : ''  }
										${parsedStartDate.getDay() == '3' ? '수요일 check-in' : ''  }
										${parsedStartDate.getDay() == '4' ? '목요일 check-in' : ''  }
										${parsedStartDate.getDay() == '5' ? '금요일 check-in' : ''  }
										${parsedStartDate.getDay() == '6' ? '토요일 check-in' : ''  }
										${parsedStartDate.getDay() == '0' ? '일요일 check-in' : ''  } <br>${bkParam.checkin }
									</p>
								</c:if>
								<c:if test="${empty bkParam.checkin }">
									<p class="text-sm mb-0">입실시간 정보가 없습니다.</p>
								</c:if>
							</div>
							<div class="col-md-6 d-flex align-items-center">
								<div class="date-tile me-3 bg-secondary-light">
									<div class="text-uppercase text-secondary">
										<fmt:parseDate var="parsedEndDate" value="${bkParam.endDate}"
											pattern="yyyy-MM-dd" />
										<strong class="text"><fmt:formatDate
												value="${parsedEndDate}" pattern="M월"></fmt:formatDate></strong><br>
										<strong class="text"><fmt:formatDate
												value="${parsedEndDate}" pattern="d일"></fmt:formatDate></strong>
									</div>
								</div>
								<c:if test="${not empty bkParam.checkout }">
									<p class="text-sm mb-0">
										${parsedEndDate.getDay() == '1' ? '월요일 check-out' : ''  }
										${parsedEndDate.getDay() == '2' ? '화요일 check-out' : ''  }
										${parsedEndDate.getDay() == '3' ? '수요일 check-out' : ''  }
										${parsedEndDate.getDay() == '4' ? '목요일 check-out' : ''  }
										${parsedEndDate.getDay() == '5' ? '금요일 check-out' : ''  }
										${parsedEndDate.getDay() == '6' ? '토요일 check-out' : ''  }
										${parsedEndDate.getDay() == '0' ? '일요일 check-out' : ''  } <br>${bkParam.checkout }
									</p>
								</c:if>
								<c:if test="${empty bkParam.checkout }">
									<p class="text-sm mb-0">퇴실시간 정보가 없습니다.</p>
								</c:if>
							</div>
						</div>
					</div>
					<div class="text-block">
						<label class="h5 mb-4" for="form_guests">예약 인원</label>
						<div class="row">
							<div class="col-lg-6 mb-3">
								<select class="selectpicker form-control" name="headCount"
									id="headCount" data-style="btn-selectpicker" title=" " disabled>
									<option value="1" ${bkParam.headCount == 1 ? 'selected' : '' }>1
										명</option>
									<option value="2" ${bkParam.headCount == 2 ? 'selected' : '' }>2
										명</option>
									<option value="3" ${bkParam.headCount == 3 ? 'selected' : '' }>3
										명</option>
									<option value="4" ${bkParam.headCount == 4 ? 'selected' : '' }>4
										명</option>
									<option value="5" ${bkParam.headCount == 5 ? 'selected' : '' }>5
										명</option>
								</select>
							</div>
						</div>
					</div>
					<div class="d-flex justify-content-between mb-3">
						<button class="btn btn-outline-dark" style="width: 100%;"
							id="kakaoBtn" name="kakaoBtn"
							onclick="openPop()">카카오페이로결제</button>
					</div>
				</div>
				<div class="col-lg-5 ps-xl-5">
					<div class="card border-0 shadow">
						<div class="card-body p-4">
							<div class="text-block pb-3">
								<div class="d-flex align-items-center">
									<div>
										<h6 id="title">
											<a class="text-reset"
												href="${path }/accm/detail?contentid=${bkParam.bkContentId}">${bkParam.bkTitle }</a>
										</h6>
										<p class="text-muted text-sm mb-0">${bkParam.bkAddr }</p>
									</div>
									<img class="ms-7 rounded" src="${bkParam.bkImg }" alt=""
										width="120">
								</div>
							</div>
							<div class="text-block py-3">
								<ul class="list-unstyled mb-0">
									<li class="mb-3"><i
										class="fas fa-users fa-fw text-muted me-2"></i>${bkParam.headCount }
										명</li>
									<li class="mb-0"><i
										class="far fa-calendar fa-fw text-muted me-2"></i> 
										<fmt:formatDate
											value="${parsedStartDate}" pattern="yyyy-MM-dd"></fmt:formatDate>
										<i class="fas fa-arrow-right fa-fw text-muted mx-3"></i> <fmt:formatDate
											value="${parsedEndDate }" pattern="yyyy-MM-dd"></fmt:formatDate>
									</li>
								</ul>
							</div>
							<div class="text-block pt-3 pb-0">
								<table class="w-100">
									<tbody>
										<tr>
											<fmt:parseNumber var="startDate_N"
												value="${parsedEndDate.time / (1000*60*60*24)}"
												integerOnly="true" />
											<fmt:parseNumber var="endDate_N"
												value="${parsedStartDate.time / (1000*60*60*24)}"
												integerOnly="true" />
											<th class="fw-normal py-2">${bkParam.price}x
												${startDate_N -  endDate_N}박</th>
										</tr>
									</tbody>
									<tfoot>
										<tr class="border-top">
											<th class="pt-3">Total</th>
											<td class="fw-bold text-end pt-3">${bkParam.price * (startDate_N -  endDate_N)}원</td>
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
											href="${bkParam.refund }" class="text-reset ms-3">자세히 보기</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<input type="hidden" name="title" value="${bkParam.bkTitle}">
		<input type="hidden" name="price"value="${bkParam.price * (startDate_N -  endDate_N)}"> 
		<input type="hidden" name="days" value="${startDate_N - endDate_N}">
	</form>
	<form id="insertBooking" name="insertBooking" method="post">
		<div class="d-flex justify-content-between p-2 p-xl-0 mt-xl-4">
			<input type="hidden" name="mno" value="${bkParam.mno}"> <input type="hidden" name="contentId" value="${bkParam.bkContentId}">
			<input type="hidden" name="startDate" value="${bkParam.startDate}">
			<input type="hidden" name="endDate" value="${bkParam.endDate}">
			<input type="hidden" name="headCount" value="${bkParam.headCount }">
			<button id="bookingBtn" class="btn btn-lg btn-primary mb-0 mx-5 mt-4" style="width: 100%;" onclick="javascript: form.action='${path}/accm/booking';" disabled>예약하기</button>
		</div>
	</form>

</section>

<script type="text/javascript" language="javascript">
	function openPop(){
		const target = document.getElementById('bookingBtn');
	  	target.disabled = false;
	  	
		var pop_title = "popupOpener" ;
		 var options = 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no';
		
		window.open("", pop_title, options) ;
		
		var kakaoPay = document.kakaoPay ;
		kakaoPay.target = pop_title ;
		kakaoPay.action='${path}/kakaoPay';
		kakaoPay.submit() ;
	}
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />