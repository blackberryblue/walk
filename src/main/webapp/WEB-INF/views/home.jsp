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
                  <h6>산책을 하러가실까요?</h6>
                  <h2>강아지랑 산책 <em>친구들과 산책</em> 또는 <span>혼자 산책</span></h2>
                  <p>음하하하</p>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#contact">강아지랑 산책</a>
                    </div>
                    <div class="call-button">
                      <a href="#"><i class="fa fa-phone"></i> 010-11</a>
                    </div>
                  </div>
                </div>
                <div class="item header-text">
                  <h6>산책을 하러가실까요?</h6>
                  <h2>강아지랑 산책 <em>친구들과 산책</em> 또는 <span>혼자 산책</span></h2>
                  <p>음하하하</p>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#services">친구들과 산책</a>
                    </div>
                    <div class="call-button">
                      <a href="#"><i class="fa fa-phone"></i> 010-22</a>
                    </div>
                  </div>
                </div>
                <div class="item header-text">
                  <h6>산책을 하러가실까요?</h6>
                  <h2>강아지랑 산책 <em>친구들과 산책</em> 또는 <span>혼자 산책</span></h2>
                  <p>음하하하</p>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#video">혼자산책</a>
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
      </div>
    </div>
  </footer>
</body>
</html>