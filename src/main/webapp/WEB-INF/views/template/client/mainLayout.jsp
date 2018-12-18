<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title><tiles:getAsString name="title" /></title>

<!-- Bootstrap core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/css/sb-admin.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link
	href="/resources/vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">



<!-- Custom styles for this template -->
<link href="/resources/css/landing-page.min.css" rel="stylesheet">
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>

<script type="text/javascript">
	$(function() {
		// 검색 후 검색 대상과 단어 출력
		var word = "<c:out value='${data.keyword}'/>";
		var value = "";
		if (word != "") {
			$("#keyword").val("<c:out value='${data.keyword}'/>");
		}

		// 검색 버튼 클릭 시
		$("#searchData").click(function() {
			$("#mysearch").attr({
				"method" : "GET",
				"action" : "/common/commonList.do"
			});
			$("#mysearch").submit();
		});

	});
</script>


<!-- 이미지 줌 CSS -->
<style type="text/css">
/* @import url(http://fonts.googleapis.com/css?family=Open+Sans:400,300); */

/* Zoom In #1 */
.col-lg-4 div img {
	-webkit-transform: scale(1);
	transform: scale(1);
	-webkit-transition: .2s ease-in-out;
	transition: .2s ease-in-out;
}

.col-lg-4 div:hover img {
	-webkit-transform: scale(1.2);
	transform: scale(1.2);
}

.info_area {
	position: relative;
	padding: 18px 20px 14px;
	background-color: #fff;
	display: block;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.info_area .tit_space {
	padding-bottom: 7px;
	font-size: 21px;
	line-height: 23px;
}

.info_area .info_price_hour {
	height: 23px;
	padding-top: 3px;
	margin-top: 11px;
	font-size: 12px;
}

.info_area .info_price_hour .price {
	
}

.info_area .info_price_hour .price {
	font-size: 23px;
	font-family: "NanumBarunGothicBold", sans-serif;
	color: #0069d9;
}
</style>


</head>

<body id="page-top">
	<nav class="navbar navbar-light bg-light static-top">
		<tiles:insertAttribute name="header" />
	</nav>


	<!-- Masthead -->
	<header class="masthead text-white text-center">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<h1 class="mb-5">다시 만나고 싶은 공간!</h1>
				</div>
				<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
					<form class="mysearch" id="mysearch" name="mysearch">
						<div class="form-row">
							<div class="col-12 col-md-9 mb-2 mb-md-0">
								<input type="text" id="keyword" name="keyword"
									class="form-control form-control-lg"
									placeholder="공간을 빠르게 검색해보세요.">
							</div>

							<div class="col-12 col-md-3">
								<button type="submit" id="searchData" name="searchData"
									class="btn btn-block btn-lg btn-primary">Search!</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</header>

	<!-- Icons Grid -->


	<section class="testimonials text-center bg-light">
		<div class="container">
			<h2 class="mb-6">오늘의 추천 공간</h2>
		</div>
	</section>



	<section class="features-icons bg-light text-left">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<!-- 슬라이스 시작 시점1 -->

					<div id="myCarousel" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>

							<a class="carousel-control-prev" href="#myCarousel" role="button"
								data-slide="prev"> <span class="carousel-control-prev-icon"
								aria-hidden="true"></span> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#myCarousel"
								role="button" data-slide="next"> <span
								class="carousel-control-next-icon" aria-hidden="true"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>

				<!-- 슬라이스 시작 시점2 -->
				<div class="col-lg-4">

					<div id="myCarousel2" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel2" data-slide-to="1"></li>
							<li data-target="#myCarousel2" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel2" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel2"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>


				<!-- 슬라이스 시작 시점3 -->
				<div class="col-lg-4">

					<div id="myCarousel3" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel3" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel3" data-slide-to="1"></li>
							<li data-target="#myCarousel3" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel3" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel3"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>


				<!-- 슬라이스 시작 시점4 -->
				<div class="col-lg-4">

					<div id="myCarousel4" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel4" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel4" data-slide-to="1"></li>
							<li data-target="#myCarousel4" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel4" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel4"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>

				<!-- 슬라이스 시작 시점5 -->
				<div class="col-lg-4">

					<div id="myCarousel5" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel5" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel5" data-slide-to="1"></li>
							<li data-target="#myCarousel5" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel5" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel5"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>


				<!-- 슬라이스 시작 시점6 -->
				<div class="col-lg-4">

					<div id="myCarousel6" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel6" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel6" data-slide-to="1"></li>
							<li data-target="#myCarousel6" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel6" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel6"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>
			</div>
		</div>
	</section>



	<section class="testimonials text-center bg-light">
		<div class="container">
			<h2 class="mb-6">리뷰가 많은 공간</h2>
		</div>
	</section>

	<section class="features-icons bg-light text-left">
		<div class="container">
			<div class="row">

				<div class="col-lg-4">
					<!-- 리뷰 슬라이스 시작 시점1 -->
					<div id="myCarousel7" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel7" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel7" data-slide-to="1"></li>
							<li data-target="#myCarousel7" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel7" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel7"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>


				<!-- 리뷰 슬라이스 시작 시점2 -->
				<div class="col-lg-4">

					<div id="myCarousel8" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel8" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel8" data-slide-to="1"></li>
							<li data-target="#myCarousel8" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel8" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel8"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>


				<!-- 리뷰 슬라이스 시작 시점3 -->
				<div class="col-lg-4">

					<div id="myCarousel9" class="carousel slide my-4"
						data-ride="carousel" data-interval="false">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel9" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel9" data-slide-to="1"></li>
							<li data-target="#myCarousel9" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid" src="/resources/img/1.png"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/2.png"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="/resources/img/3.png"
									alt="Third slide">
							</div>
						</div>

						<a class="carousel-control-prev" href="#myCarousel9" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel9"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>

					</div>

					<div class="info_area">
						<h3 class="tit_space">광화문 종로 모임공간, 공유거실</h3>
						<div class="tags">
							<span class="tag_area_name">광화문종로</span>
						</div>
						<div class="info_price_hour">
							<strong class="price">550,000</strong><span class="txt_unit">원/월</span>

						</div>

					</div>

				</div>

			</div>
		</div>
	</section>

	<!--       <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                  <div class="features-icons-icon d-flex" >
                     <i class="icon-screen-desktop m-auto text-primary"></i>
                     <img src="/resources/img/1.png">
                  </div>
                  <h3>더 브릭스 기흥점-5인실</h3>
                  <p class="lead mb-0">638,000원/월</p>
               </div>
            </div>
            
            <div class="col-lg-4">
               <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                  <div class="features-icons-icon d-flex">
                     <img src="/resources/img/2.png">
                  </div>
                  <h3>카페24 신당)동대문 독립사무실</h3>
                  <p class="lead mb-0">550,000원/월</p>
               </div>
            </div>
            
            <div class="col-lg-4">
               <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                  <div class="features-icons-icon d-flex">
                     <img src="/resources/img/3.png">
                  </div>
                  <h3>[GARAGE 교대] 1인실</h3>
                  <p class="lead mb-0">572,000원</p>
               </div>
            </div> -->




	<!-- Image Showcases
   <section class="showcase">
      <div class="container-fluid p-0">
         <div class="row no-gutters">

            <div class="col-lg-6 order-lg-2 text-white showcase-img"
               style="background-image: url('img/bg-showcase-1.jpg');"></div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
               <h2>Fully Responsive Design</h2>
               <p class="lead mb-0">When you use a theme created by Start
                  Bootstrap, you know that the theme will look great on any device,
                  whether it's a phone, tablet, or desktop the page will behave
                  responsively!</p>
            </div>
         </div>
         <div class="row no-gutters">
            <div class="col-lg-6 text-white showcase-img"
               style="background-image: url('img/bg-showcase-2.jpg');"></div>
            <div class="col-lg-6 my-auto showcase-text">
               <h2>Updated For Bootstrap 4</h2>
               <p class="lead mb-0">Newly improved, and full of great utility
                  classes, Bootstrap 4 is leading the way in mobile responsive web
                  development! All of the themes on Start Bootstrap are now using
                  Bootstrap 4!</p>
            </div>
         </div>
         <div class="row no-gutters">
            <div class="col-lg-6 order-lg-2 text-white showcase-img"
               style="background-image: url('img/bg-showcase-3.jpg');"></div>
            <div class="col-lg-6 order-lg-1 my-auto showcase-text">
               <h2>Easy to Use &amp; Customize</h2>
               <p class="lead mb-0">Landing Page is just HTML and CSS with a
                  splash of SCSS for users who demand some deeper customization
                  options. Out of the box, just add your content and images, and
                  your new landing page will be ready to go!</p>
            </div>
         </div>
      </div>
   </section>

   Testimonials
   <section class="testimonials text-center bg-light">
      <div class="container">
         <h2 class="mb-5">What people are saying...</h2>
         <div class="row">
            <div class="col-lg-4">
               <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                  <img class="img-fluid rounded-circle mb-3"
                     src="img/testimonials-1.jpg" alt="">
                  <h5>Margaret E.</h5>
                  <p class="font-weight-light mb-0">"This is fantastic! Thanks
                     so much guys!"</p>
               </div>
            </div>
            <div class="col-lg-4">
               <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                  <img class="img-fluid rounded-circle mb-3"
                     src="img/testimonials-2.jpg" alt="">
                  <h5>Fred S.</h5>
                  <p class="font-weight-light mb-0">"Bootstrap is amazing. I've
                     been using it to create lots of super nice landing pages."</p>
               </div>
            </div>
            <div class="col-lg-4">
               <div class="testimonial-item mx-auto mb-5 mb-lg-0">
                  <img class="img-fluid rounded-circle mb-3"
                     src="img/testimonials-3.jpg" alt="">
                  <h5>Sarah W.</h5>
                  <p class="font-weight-light mb-0">"Thanks so much for making
                     these free resources available to us!"</p>
               </div>
            </div>
         </div>
      </div>
   </section>
 -->
	<!-- Call to Action -->
	<!--    <section class="call-to-action text-white text-center">
      <div class="overlay"></div>
      <div class="container">
         <div class="row">
            <div class="col-xl-9 mx-auto">
               <h2 class="mb-4">Ready to get started? Sign up now!</h2>
            </div>
            <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
               <form>
                  <div class="form-row">
                     <div class="col-12 col-md-9 mb-2 mb-md-0">
                        <input type="email" class="form-control form-control-lg"
                           placeholder="Enter your email...">
                     </div>
                     <div class="col-12 col-md-3">
                        <button type="submit" class="btn btn-block btn-lg btn-primary">Sign
                           up!</button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div> 
   </section>
 -->
	<footer class="footer">
		<tiles:insertAttribute name="footer" />
	</footer>


	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Bootstrap core JavaScript -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


	<!-- Custom scripts for all pages 스크롤 TOP만 참조함-->
	<script src="/resources/js/sb-admin.min.js"></script>


</body>

</html>