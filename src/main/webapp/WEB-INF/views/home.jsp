<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="includes/header.jsp"%>

  <div class="main-banner" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6 align-self-center">
              <div class="owl-carousel owl-banner">
                <div class="item header-text">
                  <h6>나만의 산책이야기</h6>
                  <h2>나의 <em>힐링장소</em>와 <span>산책로</span>를 알려주세요</h2>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#contact">나의 산책로</a>
                    </div>
                    <div class="call-button">
                      <a href="#"><i class="fa fa-phone"></i> 010-11</a>
                    </div>
                  </div>
                </div>
                <div class="item header-text">
                  <h6>팻들과의 산책공간</h6>
                  <h2>강아지랑 산책, <em>팻들과 안심</em>하고 <span>거닐수 있는 장소</span></h2>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#services">팻 산책로</a>
                    </div>
                    <div class="call-button">
                      <a href="#"><i class="fa fa-phone"></i> 010-22</a>
                    </div>
                  </div>
                </div>
                <div class="item header-text">
                  <h6>가족,친구,연인들과의 추억 산책</h6>
                  <h2>우리들만의 산책로,<span>사랑하는 이와 함께</span>여서 <em>행복한 공간</em>을 공유해주세요</h2>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#video">그룹 산책로</a>
                    </div>
                    <div class="call-button">
                      <a href="#"><i class="fa fa-phone"></i> 010-33</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  

  


  <!-- Scripts -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/animation.js"></script>
  <script src="assets/js/imagesloaded.js"></script>
  <script src="assets/js/custom.js"></script>

  <script>
  // Acc
    $(document).on("click", ".naccs .menu div", function() {
      var numberIndex = $(this).index();
      if (!$(this).is("active")) {
          $(".naccs .menu div").removeClass("active");
          $(".naccs ul li").removeClass("active");
          $(this).addClass("active");
          $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass("active");
          var listItemHeight = $(".naccs ul")
            .find("li:eq(" + numberIndex + ")")
            .innerHeight();
          $(".naccs ul").height(listItemHeight + "px");
        }
    });
  </script>

 <!-- footer start-->

<%@ include file="includes/footer.jsp" %>
        
<!-- footer end -->
 
</body>
</html>