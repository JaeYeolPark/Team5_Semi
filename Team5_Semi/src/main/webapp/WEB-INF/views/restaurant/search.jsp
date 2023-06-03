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

 <form name="searchForm" action="${path }/restaurant/search" method="get">
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<c:set var="selectAreaCode" value="${param.selectAreaCode}" />
	
    <div>
        <section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(imgpick/foodSearch.jpg)";>
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
            <form action="#">
              <div class="row">
                <div class="col-lg-4 d-flex align-items-center form-group" style="width: 840px;">
                  <input class="form-control border-0 shadow-0" type="search" name="search" placeholder="검색어를 입력하세요">
                </div>
                <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider" style="width: 200px;">
                  <select class="selectpicker" title="지역" data-style="btn-form-control">
                    <option value="small">강원도</option>
                    <option value="medium">경기도</option>
                    <option value="large">경상남도</option>
                    <option value="large">경상북도</option>
                    <option value="large">전라남도</option>
                    <option value="large">전라북도</option>
                    <option value="large">충청남도</option>
                    <option value="large">충청북도</option>
                  </select>
                </div>
                <div class="col-lg-2 form-group d-grid mb-0">
                  <button class="btn btn-primary h-100" type="submit">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="swiper-pagination swiper-pagination-white"></div>
        <div class="swiper-nav d-none d-lg-block">
          <div class="swiper-button-prev" id="homePrev"></div>
          <div class="swiper-button-next" id="homeNext"></div>
        </div>


    <!-- 중간 부분 시작 -->
    <section class="py-5">
      <div class="container">
        <section class="pt-0">
          <div class="container">
            <div class="row">
              <!-- 체크박스 시작 -->
              <aside class="col-xl-4 col-xxl-3">
                <!-- Responsive offcanvas body START -->
                <div class="offcanvas-xl offcanvas-end" tabindex="-1" 
                	id="offcanvasSidebar" aria-labelledby="offcanvasSidebarLabel">
                  <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasSidebarLabel">Advance Filters</h5>
                    <button  type="button" class="btn-close" 
                    	data-bs-dismiss="offcanvas" 
                    	data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
                  </div>
                  <div class="offcanvas-body flex-column p-3 p-xl-0" style="width: 90%;">
                    <form class="rounded-3 shadow">
                      <!-- 음식점 유형 체크박스 -->
                      <div class="card card-body rounded-0 rounded-top p-4">
                        <!-- Title -->
                        <h6 class="mb-2">음식점 유형</h6>
                        <!-- Hotel Type group -->
                        <div class="col-12">
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="restaurantType1">
                            <label class="form-check-label" for="restaurantType1">전체</label>
                          </div>
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="restaurantType2">
                            <label class="form-check-label" for="restaurantType2">한식</label>
                          </div>
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="restaurantType3">
                            <label class="form-check-label" for="restaurantType3">양식</label>
                          </div>
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="restaurantlType4">
                            <label class="form-check-label" for="restaurantlType4">중식</label>
                          </div>
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="restaurantType5">
                            <label class="form-check-label" for="restaurantType5">일식</label>
                          </div>
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="restaurantType6">
                            <label class="form-check-label" for="restaurantType6">기타</label>
                          </div>
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="restaurantType6">
                            <label class="form-check-label" for="restaurantType6">카페</label>
                          </div>
                        </div>
                      </div>
                      <hr class="my-0">
                    </form>
                  </div>
                  <!-- 체크박스 검색 버튼 -->
                  <div class="d-flex justify-content-between p-2 p-xl-0 mt-xl-4">
                    <button class="btn btn-primary mb-0" style="width: 90%;">검색</button>
                  </div>
                </div>
              </aside>
              <!-- 체크박스 끝 -->


			<style>
				 .txt_line {
				      width:100%;
				      padding:0 5px;
				      overflow:hidden;
				      text-overflow:ellipsis;
				      white-space:normal;
				      display: -webkit-box;
				      -webkit-line-clamp: 3;
				      -webkit-box-orient:vertical;
				  }
			</style>
              <!-- 음식점 검색 결과 시작 -->
              <div class="col-xl-8 col-xxl-9">
                	<c:if test="${empty restaurantList}">
						<tr>
							<td colspan="6">조회된 글이 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${not empty restaurantList}">
						<c:forEach var="item" items="${restaurantList }" varStatus="status">
						
							<c:if test="${status.index % 3 == 0 }">
								<div class="hstack gap-4">
							</c:if>
							<!-- 검색 결과 카드 시작 -->
                  			<div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9" style="width: 300px;">
                    			<div class="card h-100 border-0 shadow">
                      				<div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(${item.firstimage }); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                        				<div class="card-img-overlay-bottom z-index-20">
                          				<h5 class="text-white text-shadow"><c:out value="${item.title }" /></h5>
                        				</div>
                     		 		</div>
                      				<div class="card-body">
                        				<p class="text-muted mb-3 text-sm txt_line"><c:out value="${item.overview }" /></p>
                        				<p class="mb-0"><c:out value="${item.addr1 }" /></p>
                      				</div>
                    			</div>
                  			</div>
                  			<c:if test="${status.index % 3 == 2 }">
								</div>
							</c:if>
                  			
              			</c:forEach>
				   </c:if>
                </div>
                
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
                
              </div>
            </div>
          </div>
        </section>
      </div>
    </section>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
</form>

<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>