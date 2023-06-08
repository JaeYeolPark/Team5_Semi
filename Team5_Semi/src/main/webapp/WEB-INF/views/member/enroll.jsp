<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script type="text/javascript" src="${path}/resources/js/jquery-3.7.0.js" ></script>


<jsp:include page="/WEB-INF/views/common/header.jsp" />

    <section class="py-5" id="content">
      <div class="container-fluid px-xxl-7" align="center">
        <div class="col-md-9">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-5 ps-xxl-7"><img class="img-fluid mb-1" src="${path}/resources/img/logo1.png" alt="35place 로고" style="max-width: 12rem;">
            </div>
            <form class="form-validate" style="width: 70%;" action="${path}/member/enroll" method="post" id="enroll-container">
            <input type="hidden" name="kakaoToken" value="${kakaoMap.id}">
              <div class="mb-4">
                <label class="form-label" for="userRealName"> 이름</label>
                <input class="form-control" id="userRealName" name="name" type="text" placeholder="홍길동" value="${kakaoMap.nickname}" autocomplete="off" required data-msg="이름을 입력하지 않으셨습니다!">
              </div>
              <div class="mb-4">
                <label class="form-label" for="id"> 이메일 주소</label>
                <input class="form-control" id="id" name="id" value="${kakaoMap.email}" type="email" placeholder="name@address.com" autocomplete="off" required data-msg="이메일 주소를 입력하지 않으셨습니다!">
                <input type="button" id="checkDuplicate" value="중복 검사" class="btn btn-light">
              </div>
              <div class="mb-4">
                <label class="form-label" for="password1"> 비밀번호</label>
                <input class="form-control" name="password" id="password1" placeholder="Password" type="password" required data-msg="비밀번호를 입력해 주세요!">
              </div>
              <div class="mb-4">
                <label class="form-label" for="password2"> 비밀번호 확인</label>
                <input class="form-control" id="password2" placeholder="Password" type="password" required data-msg="비밀번호를 한 번 더 입력하십시오!">
              </div>
              <div class="mb-4">
                <label class="form-label" for="telNo"> 전화번호</label>
                <input class="form-control" name="phone" id="telNo" type="tel" placeholder="010-1234-5678" autocomplete="off" required data-msg="전화번호를 입력하지 않으셨습니다!">
              </div>
              <div class="d-grid gap-2">
                <button class="btn btn-primary" type="submit" id="enrollSubmit">회원 가입</button>
              </div>
              <br>
              <div class="d-grid gap-2">
                <button class="btn btn btn-outline-muted">
                  <span class="d-none d-sm-inline">카카오 계정으로 </span>회원 가입</button>
              </div>
            </form>
          </div>
        </div>  
      </div>
    </section>


<script type="text/javascript">
	$(()=>{
		$('#password2').blur((event)=>{
			let password1 = $('#password1').val();
			let password2 = $(event.target).val();
			
			if(password1.trim() != password2.trim()){
				alert('패스워드가 일치하지 않습니다.')
				$('#password1').val("");
				$('#password2').val("");
				$('#password1').focus();
			}
		});
		
		$('#enrollSubmit').click(()=>{
			let id = $('#id').val();
			if(id.length < 4){
				alert('아이디가 4글자보다 작습니다.');
				return false; // submit 안가는 방법
			}
			
			// 유효성 로직 추가하는 곳
			
			return true; // submit 보내짐
		});
		
		$('#checkDuplicate').click(()=>{
			let id = $('#id').val().trim();

			if(id.length < 4){
				alert('아이디가 4글자보다 작습니다.');
				return;
			}

			$.ajax({
				type:'get',
				url:'${path}/member/idCheck',
				data:{id}, // 속성값이 키값과 같을때 값을 생략해서 보낼수 있다. 보통은 key-value로 채운다.
				success:
					(data)=>{ // data : 서버에서 보내준 결과 값, json으로 응답될수 있다.
						console.log(data);
						if(data.validate === true){
							alert('이미 사용중인 아이디 입니다.');
						} else{
							alert('사용 가능합니다.');
						}
					},
				error:
					(e)=>{
						alert('중복을 확인할수 없습니다.');
						console.log(e)
					}
			});
		});
		
	});
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>





















