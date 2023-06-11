<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<body>
	<section class="py-6">
		<div class="container">
			<div class="row mb-5">
				<div class="mb-3" style="display: flex; justify-content: left; align-items: center;">
					<img src="${path}/resources/img/logo2.png" width="55px" height="55px">
					<h2 style="display: inline;">&nbsp;&nbsp;나만의 여행코스</h2>
				</div>
				<c:if test="${loginMember != null}">
					<div style="display: flex; justify-content: right; margin-bottom: 4px;">
						<button class="btn btn-primary btn-sm mb-2" type="button" onclick="location.href='${path}/community/write'">&nbsp;글쓰기</button>
					</div>
				</c:if>
				<!-- blog item-->
				<div class="container px-4 py-5" id="custom-cards">
					<div class="row row-cols- row-cols-lg-3 align-items-stretch g-4">


						<c:forEach var="item" items="${list }">
							<div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
								<div class="text">
									<div class="testimonial-quote">
										<i class="fas fa-quote-right"></i>
									</div>
									<a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">${item.title }</p></a><strong>- ${item.writerId }</strong>
								</div>
							</div>

						</c:forEach>
					</div>
				</div>


			</div>
		</div>


		<!-- 페이지 번호 시작 -->
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-template d-flex justify-content-center">
				<!-- 처음 페이지 -->
				<li class="page-item"><a class="page-link" onclick="movePage(1)">&laquo;</a></li>
				<!-- 이전 페이지 -->
				<li class="page-item"><a class="page-link" onclick="movePage(${pageInfo.prevPage})">&lsaquo;</a></li>

				<!-- 10개 페이지가 보여지는 부분 -->
				<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1">
					<c:if test="${status.current == pageInfo.currentPage}">
						<li class="page-item disabled"><a class="page-link" onclick="movePage(${status.current})">${status.current}</a></li>
					</c:if>
					<c:if test="${status.current != pageInfo.currentPage}">
						<li class="page-item"><a class="page-link" onclick="movePage(${status.current})">${status.current}</a></li>
					</c:if>
				</c:forEach>

				<!-- 다음 페이지 -->
				<li class="page-item"><a class="page-link" onclick="movePage(${pageInfo.nextPage})">&rsaquo;</a></li>
				<!-- 마지막 페이지 -->
				<li class="page-item"><a class="page-link" onclick="movePage(${pageInfo.maxPage})">&raquo;</a></li>
			</ul>
		</nav>
		<!-- 페이지 번호 끝 -->
	</section>
</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />