<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

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
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">${item.title }</p></a><strong>- ${item.writerId }</strong>
              </div>
            </div>
            
            </c:forEach>
            
            
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            <div class="testimonial card rounded-3 shadow border-0" style="width: 300px; height: 280px; margin-left: 20px;">
              <div class="text">
                <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                <a class="link" href="${path}/community/view?no=${item.bno}"><p class="testimonial-text">나만의 여행 코스 제목 나만의 여행 코스 제목</p></a><strong>- 글쓴이</strong>
              </div>
            </div>
            

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
  </body>

   <jsp:include page="/WEB-INF/views/common/footer.jsp"/>