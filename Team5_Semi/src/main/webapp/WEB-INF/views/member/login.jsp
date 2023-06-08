<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <section class="py-5">
      <div class="container-fluid px-xxl-7" align="center">
          <div class="col-md-9">
            <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
              <div class="mb-5"><img class="img-fluid mb-1" src="${path}/resources/img/logo1.png" alt="35place 로고" style="max-width: 12rem;">
              </div>
              <form class="form-validate" style="width: 70%;" action="${path}/login" method="post">
                <div class="mb-4">
                  <input class="form-control" name="memberId" id="loginUsername" type="text" placeholder="이메일 주소를 입력해 주세요"
                    autocomplete="off" required data-msg="이메일 주소를 입력하지 않으셨습니다!">
                </div>
                <div class="mb-4">
                  <input class="form-control" name="memberPwd" id="loginPassword" placeholder="비밀번호를 입력해 주세요"
                    type="password" required data-msg="비밀번호를 입력하지 않으셨습니다!">
                </div>
                <div class="mb-4">
                  <div class="form-check me-7">
                    <input class="form-check-input" id="loginRemember" type="checkbox">
                    <label class="form-check-label text-muted me-7" for="loginRemember"><span class="text-sm me-7">자동 로그인</span></label>
                  </div>
                </div>
                <!-- Submit-->
                <div class="d-grid">
                  <button class="btn btn-primary mb-4">로그인</button>
                </div>
                <div class="d-grid gap-2">
                  <button class="btn btn btn-outline-muted">
                    <span class="d-none d-sm-inline">카카오 계정으로 </span>로그인</button>
                </div><br>
                <p class="text-center"><small class="text-muted text-center">
                    <span><a class="text-dark" href="#">아이디 찾기</a></span><span> | </span>
                    <span><a class="text-dark" href="#">비밀번호 찾기</a></span><span> | </span>
                    <span><a class="text-dark" href="${path}/member/enroll">회원 가입</a></span></small></p>
              </form>
            </div>
          </div>
      </div>
    </section>
    
    
    
  <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

