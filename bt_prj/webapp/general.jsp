<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <%@ include file="/include/header.jsp" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	  //$("#btn").click(function(){	
    //});
});    
</script>
</head>

<body>
  <div id="app">
    <div class="main-wrapper">
      <div class="navbar-bg"></div>
 <%@ include file="/include/top.jsp" %>
 
 
 
 
 
 <%@ include file="/include/left.jsp" %>
 
 
 
      <div class="main-content">
        <section class="section">
          <h1 class="section-header">
            <div>맛집 상세보기</div>
          </h1>

          <div class="section-body">
            <div class="jumbotron">
              <h1 class="display-5">홍대돈부리</h1>
              <p class="lead">식당 평가 사이트에서 수년간 상위권을 차지할 정도로 랑카위에서 잘 알려진 레스토랑으로 마치 지중해 유럽의 어느 식당에 와있는 듯한 착각.</p>
              <hr class="my-4">
              <p>adddr:tel:</p>
              <p class="lead">
            </p>
            </div>
            <h2 class="section-title">Shop Detail info</h2>
            <div class="row">
            
            
            
           <!-- 이미지 슬라이딩 카드 영역  -->
              <div class="col-12 col-md-6 col-lg-6">
               
                <div class="card">
                  <div class="card-header">
                    <div class="float-right">
                      <div class="btn-group">
                        <a href="#carousel-simple" data-tab="carousel" class="btn active">Simple</a>
                        <a href="#carousel-caption" data-tab="carousel" class="btn">With Caption</a>
                      </div>
                    </div>
                    <h4>Carousel</h4>
                  </div>
                  
                  
                  <div class="card-body">
                    <div class="active" data-tab-group="carousel" id="carousel-simple">
                      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        
                        
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img class="d-block w-100" src="/img/news/img01.jpg" alt="First slide">
                          </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="/img/news/img07.jpg" alt="Second slide">
                          </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="/img/news/img08.jpg" alt="Third slide">
                          </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="sr-only">Next</span>
                        </a>
                      </div>                              
                    </div>
                    
                    <div data-tab-group="carousel" id="carousel-caption">
                      <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                          <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active"></li>
                          <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
                          <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
                        </ol>
                        
                        
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img class="d-block w-100" src="/img/news/img01.jpg" alt="First slide">
                            <div class="carousel-caption d-none d-md-block">
                              <h5>Heading</h5>
                              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                              tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="/img/news/img07.jpg" alt="Second slide">
                            <div class="carousel-caption d-none d-md-block">
                              <h5>Heading</h5>
                              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                              tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="/img/news/img08.jpg" alt="Third slide">
                            <div class="carousel-caption d-none d-md-block">
                              <h5>Heading</h5>
                              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                              tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>
                          </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="sr-only">Next</span>
                        </a>
                      </div>
                    </div>
                    
                    
                    
                    
                    
                  </div>
                </div>
              </div>
              <div class="col-12 col-md-6 col-lg-6">
                <div class="card">
                  <div class="card-header">
                    <h4>Simple Maps</h4>
                  </div>
                  <div class="card-body">
                    <div class="alert alert-light">
                      Here is a simple example using the map, we use the plugin <code>gmaps.js</code> made by <a href="https://github.com/hpneo" target="_blank">@hpneo</a>. You can learn more about this plugin <a href="https://github.com/hpneo/gmaps" target="_blank">here</a>.
                    </div>
                    <div id="simple-map" style="height:400px;"></div>
                  </div>
                </div>
                
                
                
                
       		</div>
          </div>
        </section>
      </div>
     <%@ include file="/include/footer.jsp" %>
    </div>
  </div>

 <%@ include file="/include/script.jsp" %>
  
  <script src="http://maps.google.com/maps/api/js?key=AIzaSyAK7EKtAH4NqVsXJCW4vkk2z61dnI9v1u8&amp;sensor=true"></script>
  <script src="/modules/gmaps.js"></script>
  <script>
    // init map
    var simple_map = new GMaps({
      div: '#simple-map',
      lat: 37.479190,
      lng: 126.878958 
    })
  </script>
  
</body>
</html>