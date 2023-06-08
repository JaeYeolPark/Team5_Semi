<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp" />


<body>
	<section class="py-5">
		<div class="container">
			<div class="row mb-5">
				<div class="mb-3"
					style="display: flex; justify-content: left; align-items: center;">
					<img src="${path }/resources/img/logo2.png" width="55px"
						height="55px">
					<h2 style="display: inline;">&nbsp;회원정보 수정</h2>
				</div>
				<form action="${path }/member/personalInfo"  name="updateForm" method="post">
					<div class="row pt-4 mx-6">
						<div class="mb-4 me-4 col-md-5">
							<label class="form-label" for="id">아이디</label>
							<input class="form-control" type="text" name="id" id="id" 
									value="${loginMember.id }" required readonly/>
						</div>
						<div class="mb-4 me-4 col-md-5">
							<label class="form-label" for="name">이름</label> <input
								class="form-control" type="text" name="name" id="name"
								value="${member.name }">
						</div>
						<div class="mb-4 me-4 col-md-5">
							<label class="form-label" for="email">이메일</label> <input
								class="form-control" type="email" name="email" id="email"
								value="${member.email }">
						</div>
						<div class="mb-4 me-4 col-md-5">
							<label class="form-label" for="phone">전화번호</label> <input
								class="form-control" type="text" name="phone" id="phone"
								value="${member.phone }">
						</div>
						<div class="mb-4 me-4 col-md-5">
							<input class="btn btn-lg btn-primary mb-0" style="width: 100%;" type="submit" value="회원정보 수정">
						</div>
						<div class="mb-4 me-4 col-md-5">
							<input type="button" class="btn btn-lg btn-primary mb-0" style="width: 100%;"
									id="updatePwd" onclick="location.href='${path}/member/updatePwd'" value="비밀번호 변경">비밀번호 변경</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>




<jsp:include page="/WEB-INF/views/common/footer.jsp" />

