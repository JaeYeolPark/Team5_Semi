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
					<h2 style="display: inline;">&nbsp;비밀번호 변경</h2>
				</div>
				<form action="${path }/member/updatePwd" name="pwdForm" method="post">
					<div class="row pt-4 mx-6">
						<div class="mb-5 me-4 col-md-5">
							<label class="form-label" for="pass1">변경할 비밀번호</label> <input
								class="form-control" type="password" name="password"
								id="pass1">
						</div>
						<div class="mb-5 me-4 col-md-5">
							<label class="form-label" for="pass2">비밀번호 확인</label> <input
								class="form-control" type="password"
								id="pass2">
						</div>
						<div class="mb-4 me-4 col-md-5">
							<input type="button" class="btn btn-lg btn-primary mb-0" value="비밀번호 변경" style="width: 100%;" id="updateSubmit" onclick="chkPwd()">
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
<script>
	function chkPwd(){
		const pass1 = document.getElementById('pass1').value;
		const pass2 = document.getElementById('pass2').value;
		if(pass1 != pass2){
			alert("비밀번호가 일치하지 않습니다.");
		} else {
			pwdForm.submit();
		}
	}
</script>



<jsp:include page="/WEB-INF/views/common/footer.jsp" />

