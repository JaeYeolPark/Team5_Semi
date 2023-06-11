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

<section style="margin-top: 90px; margin-bottom: 100px;">
            <div style="display: flex; justify-content: center; align-items: center;">
                <img src="${path}/resources/img/logo2.png" width="55px" height="55px">
                <h2 style="display: inline;">&nbsp;&nbsp;커뮤니티 글쓰기</h2>
            </div>
            <div style="width: 50%; margin: 70px auto 100px">
	            <form action="${path}/community/write" method="post" enctype="multipart/form-data" >
	                <h4>게시판</h4>
	                <div class="mb-4">
	                    <div class="form-check" style="display: inline-block; margin-right: 20px;">
	                        <input class="form-check-input" id="radio1" name="type" type="radio" value="B2" checked>
	                        <label class="form-check-label" for="radio1">여행후기</label>
	                    </div>
	                    <div class="form-check" style="display: inline-block;">
	                        <input class="form-check-input" id="radio2" name="type" type="radio"  value="B1">
	                        <label class="form-check-label" for="radio2">나만의 여행코스</label>
	                    </div>
	                </div>
	                <h4>제목</h4>
	                <div class="mb-4">
	                    <input class="form-control" name="title" type="text" aria-describedby="inputSt">
	                </div>
	                <h4>사진첨부</h4>
	                <div class="mb-4 col-lg-6" style="width: 100%;">
	                    <input class="form-control" name="upfile" type="file">
	                </div>
	                <h4>글</h4>
	                <div class="mb-4">
	                    <textarea class="form-control" name="content" type="text" aria-describedby="inputSt"
	                        style="height: 500px;"></textarea>
	                </div>
	                <button class="btn btn-primary btn-lg mb-2" type="submit" style="width: 100%;">올리기</button>
	             </form>
            </div>
        </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>