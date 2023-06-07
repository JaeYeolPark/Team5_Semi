<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<style>
.disabled {
	pointer-events: none;
	cursor: default;
}
</style>

 <form name="searchForm" action="${path }/tourspot/search" method="get">
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<c:set var="selectAreaCode" value="${param.selectAreaCode}" />
	
  <div>
    <section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(${path}/resources/imgPick/tripSearch.jpg);">
      <div class="container my-7 py-7 py-lg-7 text-white overlay-content text-center"> 
        <div class="row">
          <div class="col-xl-10 mx-auto">
            <h1 class="display-3 fw-bold text-shadow"></h1>
            <p class="text-lg text-shadow"></p>
          </div>
        </div>
      </div>
    </section>
    
      <div class="container">
			<div class="search-bar rounded p-3 p-lg-4 position-relative mt-n5 z-index-20">
				<input type="hidden" name="page" value="1">
				<div class="row">
					<div class="col-lg-4 d-flex align-items-center form-group" style="width: 840px;">
						<input class="form-control border-0 shadow-0" type="text"
							name="searchValue" placeholder="검색어를 입력하세요"
							value="${param.searchValue}" />
					</div>
					<div
						class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider"
						style="width: 200px;">
						<select class="selectpicker" id="selectAreaCode"
							name="selectAreaCode" data-style="btn-form-control" title="지역 선택">
							<option value="" ${selectAreaCode == '' ? 'selected' : '' }>전체</option>
							<option value="32" ${selectAreaCode == '32' ? 'selected' : '' }>강원도</option>
							<option value="31" ${selectAreaCode == '31' ? 'selected' : '' }>경기도</option>
							<option value="36" ${selectAreaCode == '36' ? 'selected' : '' }>경상남도</option>
							<option value="35" ${selectAreaCode == '35' ? 'selected' : '' }>경상북도</option>
							<option value="38" ${selectAreaCode == '38' ? 'selected' : '' }>전라남도</option>
							<option value="37" ${selectAreaCode == '37' ? 'selected' : '' }>전라북도</option>
							<option value="33" ${selectAreaCode == '33' ? 'selected' : '' }>충청남도</option>
							<option value="34" ${selectAreaCode == '34' ? 'selected' : '' }>충청북도</option>
						</select>
					</div>
					<div class="col-lg-2 form-group d-grid mb-0">
						<button class="btn btn-primary h-100" type="submit">Search</button>
					</div>
				</div>
			</div>
		</div>
      <div class="swiper-pagination swiper-pagination-white"></div>
      <div class="swiper-nav d-none d-lg-block">
        <div class="swiper-button-prev" id="homePrev"></div>
        <div class="swiper-button-next" id="homeNext"></div>
      </div>


    <!-- 검색 결과 사진 영역 시작 -->
      <div class="container pt-5">
            
            <c:if test="${empty tourspotList}">
				<tr>
					<td colspan="6">조회된 글이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty tourspotList}">
				<c:forEach var="item" items="${tourspotList}" varStatus="status">
				
					<c:if test="${status.index % 5 == 0 }">
						<div class="hstack gap-4">
					</c:if>
					<!-- 검색 결과 카드 시작 -->
					<div class="card card-poster gradient-overlay hover-animate mx-4 mb-6 mb-lg-5" style="width: 200px;">
              			<a class="tile-link" href="${path }/tourspot/detail?contentid=${item.contentid}"></a>
              			<img class="bg-image" src="${item.firstimage }" alt="Card image">
              			<div class="card-body overlay-content">
                			<h6 class="card-title text-shadow text-uppercase">
                				<c:out value="${item.title }" />
                			</h6>
                			<p class="card-text text-sm">
                				<c:out value="${item.addr1 } ${item.addr2 }" />
							</p>
              			</div>
            		</div>
            		<c:if test="${status.index % 5 == 4 }">
						</div>
					</c:if>
            	</c:forEach>
			</c:if>			
      </div>
    <!-- 검색 결과 사진 영역 끝 -->



    <!-- 페이지 번호 시작 -->
    <nav aria-label="Page navigation example">
				<ul
					class="pagination pagination-template d-flex justify-content-center">
					<!-- 처음 페이지 -->
					<li class="page-item"><a class="page-link"
						onclick="movePage(1)">&laquo;</a></li>
					<!-- 이전 페이지 -->
					<li class="page-item"><a class="page-link"
						onclick="movePage(${pageInfo.prevPage})">&lsaquo;</a></li>

					<!-- 10개 페이지가 보여지는 부분 -->
					<c:forEach begin="${pageInfo.startPage}"
						end="${pageInfo.endPage}" varStatus="status" step="1">
						<c:if test="${status.current == pageInfo.currentPage}">
							<li class="page-item disabled"><a class="page-link"
								onclick="movePage(${status.current})">${status.current}</a>
							</li>
						</c:if>
						<c:if test="${status.current != pageInfo.currentPage}">
							<li class="page-item"><a class="page-link"
								onclick="movePage(${status.current})">${status.current}</a>
							</li>
						</c:if>
					</c:forEach>

					<!-- 다음 페이지 -->
					<li class="page-item"><a class="page-link"
						onclick="movePage(${pageInfo.nextPage})">&rsaquo;</a></li>
					<!-- 마지막 페이지 -->
					<li class="page-item"><a class="page-link"
						onclick="movePage(${pageInfo.maxPage})">&raquo;</a></li>
				</ul>
			</nav>
    <!-- 페이지 번호 끝 -->
    
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</form>

<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>
