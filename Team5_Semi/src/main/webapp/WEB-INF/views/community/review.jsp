<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

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
              <div class="card shadow border-0 h-100"><a href="${path}/community/view?no=${item.bno}">
              	<c:if test="${not empty board.originalFileName 
								and (fn:contains(board.originalFileName,'.jpg')
									 or fn:contains(board.originalFileName,'.png')
									  or fn:contains(board.originalFileName,'.jpeg'))}">
							<img src="${path}/resources/upload/board/${board.renamedFileName}"
								width="100%" height="100%"/>
				</c:if>
				<c:if test="${empty board.originalFileName}">
					<img class="card-img rounded-2 img-thumbnail" src="${path }/resources/img/notfound.png" alt="">
				</c:if></a>
                <div class="card-body">
                  <h5 class="my-2"><c:out value="${item.title}"/></h5>
                  <a class="btn btn-link ps-0" href="${path}/community/view?no=${item.bno}">자세히 보기<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
                </div>
              </div>
            </div>
            </c:forEach>
              </div>
            </div>
    
            
          </div>
        </div>
        <!-- Pagination -->
        <nav aria-label="Page navigation example">
            <ul class="pagination pagination-template d-flex justify-content-center">
              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
            </ul>
          </nav>
      </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>