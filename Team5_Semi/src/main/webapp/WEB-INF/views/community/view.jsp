<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    .form-control {
    	border: 1px solid #9dc3e6;
    }
</style>

<div class="container">
      <div class="row">
        <div class="col-xl-8 col-lg-10 mx-auto">           
          <p class="py-3 mb-5 text-muted text-center fw-light"> 글쓴이&nbsp;<a class="fw-bold" href="#"><c:out value=" ${board.writerId}"/></a><span class="mx-1">|</span> <fmt:formatDate type="both" value="${board.createDate}"/> <span class="mx-1">|</span></p>
          <h2><strong><c:out value="${board.title}"/></strong></h2>
        </div>
      </div>
      <div class="row">
        <div class="col-xl-10 mx-auto">
        	<c:if test="${not empty board.originalFileName 
								and (fn:contains(board.originalFileName,'.jpg')
									 or fn:contains(board.originalFileName,'.png')
									  or fn:contains(board.originalFileName,'.jpeg'))}">
							<img src="${path}/resources/upload/board/${board.renamedFileName}"
								width="100%" height="100%"/>
			</c:if></div>
      </div>
      <div class="row">
        <div class="col-xl-8 col-lg-10 mx-auto">                               
          <div>
          
          	
            <p class="lead mb-5 mt-5"><c:out value="${board.content}"/></p>
            
<%--             <blockquote class="blockquote blockquote-primary"><c:out value="${board.content}"/></blockquote> --%>
          </div>
          <!-- comments-->
            <div class="mt-5">
              <h5 class="text-uppercase text-muted mb-4">댓글</h5>
              <!-- comment-->
              <div class="d-flex mb-4">
              	<c:if test="${!empty replyList}">
					<c:forEach var="reply" items="${replyList}">
		                <div>
		                  <h5>${reply.writerId}</h5>
		                  <p class="text-uppercase text-sm text-muted"><i class="far fa-clock"></i><fmt:formatDate type="both" value="${reply.createDate}"/></p>
		                  <p class="text-muted"><c:out value="${reply.content}"/></p>
		                </div>
		                <br>
               		</c:forEach>
				</c:if>
				<c:if test="${empty replyList}">
					<tr>
						<td colspan="3" style="text-align: center;">등록된 댓글이 없습니다.</td>
					</tr>
				</c:if>
              </div>
              <!-- /comment-->
            </div>
            <!-- /comments-->
            <!-- comment form-->
            <div class="mb-5">
                <div class="mt-4">
                  <form class="form" id="comment-form" method="post" action="${path}/board/reply">
                    <div class="row">
                      <div class="col-md-6">                           
                        <div class="mb-4">
                          <input type="hidden" name="bno" value="${board.bno}" />
                          <label class="form-label" for="name" >이름 </label>
                          <input class="form-control" id="name" type="text" name="writerId" value="${loginMember.id}" readonly>
                        </div>
                      </div>
                    </div>
                    <div class="mb-4">
                      <label class="form-label" for="comment">내용<span class="required">*</span></label>
                      <textarea name="content" id="replyContent" class="form-control" rows="4"></textarea>
                    </div>
                    <button class="btn btn-primary" type="submit"><i class="far fa-comment"></i> 등록</button>
                  </form>
                </div>
              </div>
            </div>
            <!-- /comment form-->
          </div>
        </div>
        
      <!-- 삭제 코드도 거의 되어 있어요. -->
      	<c:if test="${not empty loginMember && (loginMember.id == board.writerId 
							|| loginMember.role == 'ROLE_ADMIN')}">
			<button type="button" id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">삭제</button>
		</c:if>
        
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<script type="text/javascript">
	function fileDownload(originName, reName){
		const url = '${path}/board/fileDown';
		originName = encodeURIComponent(originName)
		reName = encodeURIComponent(reName)
		location.href = url + '?originName=' + originName + '&reName=' + reName;
	}
</script>