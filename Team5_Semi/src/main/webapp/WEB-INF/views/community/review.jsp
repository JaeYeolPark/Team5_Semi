<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<section class="py-6">
	<div class="container">
		<div class="row mb-5">
			<div class="mb-3" style="display: flex; justify-content: left; align-items: center;">
				<img src="${path}/resources/img/logo2.png" width="55px" height="55px">
				<h2 style="display: inline;">&nbsp;&nbsp;여행후기</h2>
			</div>
			<c:if test="${loginMember != null}">
				<div style="display: flex; justify-content: right; margin-bottom: 4px;">
					<button class="btn btn-primary btn-sm mb-2" type="button" onclick="location.href='${path}/community/write'">&nbsp;글쓰기</button>
				</div>
			</c:if>
			<!-- blog item-->
			<c:forEach var="item" items="${list }">
				<div class="col-lg-4 col-sm-6 mb-4 hover-animate" style="height: 400px;">
					<div class="card shadow border-0 h-100">
						<a href="${path}/community/view?no=${item.bno}"> 
							<c:if test="${not empty item.originalFileName and (fn:contains(item.originalFileName,'.jpg') or fn:contains(item.originalFileName,'.png') or fn:contains(item.originalFileName,'.jpeg'))}">
								<img src="${path}/resources/upload/board/${item.renamedFileName}" width="100%" height="100%" />
							</c:if> 
							<c:if test="${empty item.originalFileName}">
								<img class="card-img rounded-2 img-thumbnail" src="${path }/resources/img/notfound.png" alt="">
							</c:if></a>
						<div class="card-body">
							<h5 class="my-2">
								<c:out value="${item.title}" />
							</h5>
							<a class="btn btn-link ps-0" href="${path}/community/view?no=${item.bno}">자세히 보기<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
						</div>
					</div>
				</div>
			</c:forEach>
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

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>
