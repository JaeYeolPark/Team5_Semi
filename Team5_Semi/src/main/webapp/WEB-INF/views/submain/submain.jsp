<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>


    <section class="py-6">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 px-6 position-relative">
            <p class="advantage-number">1</p>
            <div class="ps-lg-5">
              <h6 class="text-uppercase">관광지</h6>
              <p class="text-muted text-sm mb-5 mb-lg-0">여행을 떠나려는 당신, 제주부터 <br>강릉까지 원하는 장소를 검색할 수 <br>있습니다. 지금 당장 떠나보세요. <br>여행의 시작부터 끝까지 35place <br>하나로 충분합니다.</p>
            </div>
          </div>
          <div class="col-lg-4 px-6 position-relative">
            <p class="advantage-number">2</p>
            <div class="ps-lg-5">
              <h6 class="text-uppercase">음식점</h6>
              <p class="text-muted text-sm mb-5 mb-lg-0">여행을 떠난 당신, 이제 배가 고플 <br>시간이네요. 당신 근처의 음식점을 <br>검색해보세요. 가까운 곳에 다양한 <br>맛집을 찾아드릴게요.</p>
            </div>
          </div>
          <div class="col-lg-4 px-6 position-relative">
            <p class="advantage-number">3</p>
            <div class="ps-lg-5">
              <h6 class="text-uppercase">숙박</h6>
              <p class="text-muted text-sm mb-5 mb-lg-0">무작정 떠난 당신, 머무를 곳을 <br>걱정하지 마세요. 지금 당신에게 <br>필요한 숙소가 모두 35place에<br> 있습니다.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Places-->
    <section class="bg-gray-100">
      <div class="bg-cover" style="height: 250px; background-image: url(${path}/resources/img/submainimg.jpg);"></div>
      <div class="container pb-lg-3">
        <div class="search-bar rounded p-3 p-lg-4 position-relative mt-n4 z-index-20">
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
    </section>


    <!-- Our picks section -->
    <section class="py-5">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-primary">Most popular place</p>
            <h3>당신을 위한 여행지 추천</h3>
          </div>
        </div>
        <div class="row">
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-8">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1449034446853-66c86144b0ad.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">San Francisco</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1429554429301-1c7d5ae2d42e.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">Los Angeles</h3>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1523430410476-0185cb1f6ff9.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">Santa Monica</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1505245208761-ba872912fac0.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">San Diego</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1519867850-74775a87e783.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">Fresno</h3>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1449034446853-66c86144b0ad.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">San Francisco</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-8">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1429554429301-1c7d5ae2d42e.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">Los Angeles</h3>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1523430410476-0185cb1f6ff9.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">Santa Monica</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1505245208761-ba872912fac0.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">San Diego</h3>
              </div>
            </div>
          </div>
          <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
            <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/photo/photo-1519867850-74775a87e783.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                <h3 class="text-shadow text-uppercase mb-0">Fresno</h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <br><br>

  <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
