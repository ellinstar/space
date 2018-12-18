<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tag" uri="/WEB-INF/tld/custom_tag.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="/resources/js/common.js"></script>

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
			/* $("#search").val("<c:out value='${data.search}'/>"); */

			/* if ($("#search").val() != 'sp_Name') {
				// :contains()는 특정 테스트를 포함한 요소반환
				if ($("#search").val() == 'sp_Name')
					value = "#list tr td.goDetail";
				else if ($("#search").val() == 'sp_Name')
					value = "#list tr td.name";
				$(value + ":contains('" + word + "')").each(
						function() {
							var regex = new RegExp(word, 'gi');
							$(this).html(
									$(this).text().replace(
											regex,
											"<span class='required'>" + word
													+ "</span"));
						});
			} */
		}

		// 한 페이지에 보여줄 레코드 수 조회 후 선택한 값 그대로 유지하기 위한 설정
		if ("<c:out value='${data.pageSize}' /> " != "") {
			$("#pageSize").val("<c:out value='${data.pageSize}'/>");
		}

		// 한 페이지에 보여줄 레코드 수 변경될 때마다 처리 이벤트
		$("#pageSize").change(function() {
			goPage(1);
		});

		/* // 검색 대상이 변경될 때마다 처리 이벤트
		$("#search").change(function() {
			if ($("#search").val() == "all") {
				$("#keyword").val("전체 데이터 조회합니다.");
			} else if ($("#search").val() != "all") {
				$("#keyword").val("");
				$("#keyword").focus();
			}
		}); */

		// 검색 버튼 클릭 시 처리 이벤트
		$("#searchData").click(function() {
			if (!chkSubmit($('#keyword'), "검색어를")) {
				return;
			}
			goPage(1);
		});

		// 제목 클릭 시 상세 페이지 이동을 위한 처리 이벤트 - X
		$(".goDetail").click(function() {
			var sp_Num = $(this).parents("div").attr("data-num");
			$("#sp_Num").val(sp_Num);
			console.log("글번호 : " + sp_Num);
			// 상세 페이지로 이동하기 위해 form추가 (id : detailForm)
			$("#detailForm").attr({
				"method" : "get",
				"action" : "/common/commonDetail.do"
			});
			$("#detailForm").submit();
		});
	});

	/* 검색과 한 페이지에 보여줄 레코드 수 처리 및 페이징을 위한 실질적인 처리 함수 */
	function goPage(page) {
		$("#page").val(page);
		$("#sp_Search").attr({
			"method" : "get",
			"action" : "/common/commonList.do"
		});
		$("#sp_Search").submit();
	}

	/* 전체목록 불러오기 */
	function spaceAll() {
		location.href = "/common/commonList.do";
	}
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

<title>Insert title here</title>
</head>
<body id="page-top">

	<h3>"${data.keyword}"(으)로 검색한 결과입니다.</h3>
	<div class="spaceList1">
		<%-- ========= 상세 페이지 이동을 위한 FORM ============= --%>
		<form name="detailForm" id="detailForm">
			<input type="hidden" name="sp_Num" id="sp_Num"> <input
				type="hidden" name="page" value="${data.page}"> <input
				type="hidden" name="pageSize" value="${data.pageSize}">
		</form>
		<%-- ================== 검색기능 시작 ================= --%>
		<div class="spaceSearch">

			<form id="sp_Search" name="sp_Search">
				<input type="hidden" id="page" name="page" value="${data.page}" />
				<input type="button" value="전체목록" onclick="javascript:spaceAll()">
				<%-- <input type="hidden" id="order_by" name="order_by" value="${data.order_by}" />
				
				<input type="hidden" id="order_sc" name="order_sc" value="${data.order_sc}" /> --%>
				<input type="text" name="keyword" id="keyword"
					placeholder="공간을 빠르게 검색해보세요." /> <input type="button" value="검색"
					id="searchData" />


			</form>

			<!-- 검색조건 아직 미구현 -->
			<div class="spaceSearch2">
				<!-- 	<label>검색조건</label> <select id="search" name="search">
					<option value="all">전체</option>
					<option value="sp_Name">공간명</option>
					<option value="sp_Address">주소</option>
					<option value="sp_Price">가격</option>
				</select>  -->
			</div>
		</div>
		<%-- ================== 검색기능 종료 ================= --%>

		<%-- =================== 리스트 시작  ================= --%>



		<section class="features-icons bg-light text-left">

			<div class="container">
				<div class="row">
						<c:choose>
							<c:when test="${not empty commonList}">

								<c:forEach var="space" items="${commonList}" varStatus="status">
					<div class="col-lg-4">
									<div class="tac" data-num="${space.sp_Num}">
										<div class="goDetail tal">

											<!-- 슬라이스 시작 시점1 -->

											<div id="myCarousel" class="carousel slide my-4"
												data-ride="carousel" data-interval="false">
												<ol class="carousel-indicators">
													<li data-target="#myCarousel" data-slide-to="0"
														class="active"></li>
													<!-- 		<li data-target="#myCarousel" data-slide-to="1"></li>
											<li data-target="#myCarousel" data-slide-to="2"></li> -->
												</ol>

												<div class="carousel-inner" role="listbox">
													<div class="carousel-item active">
														<img src="/uploadStorage/space/${space.sp_File}"
															class="d-block img-fluid" alt="First slide">
													</div>
													<div class="carousel-item">
														<img class="d-block img-fluid"
															src="/uploadStorage/space/${space.sp_File}" alt="Second slide">
													</div>
													<div class="carousel-item">
														<img class="d-block img-fluid"
															src="/uploadStorage/space/${space.sp_File}" alt="Third slide">
													</div>

													<a class="carousel-control-prev" href="#myCarousel"
														role="button" data-slide="prev"> <span
														class="carousel-control-prev-icon" aria-hidden="true"></span>
														<span class="sr-only">Previous</span>
													</a> <a class="carousel-control-next" href="#myCarousel"
														role="button" data-slide="next"> <span
														class="carousel-control-next-icon" aria-hidden="true"></span>
														<span class="sr-only">Next</span>
													</a>
												</div>
											</div>

											<div class="info_area">
												<h3 class="tit_space">${space.sp_Name}</h3>
												<div class="tags">
													<span class="tag_area_name">${space.sp_Address}</span>
												</div>
												<div class="info_price_hour">
													<strong class="price"><fmt:formatNumber value="${space.sp_Price}" /></strong><span
														class="txt_unit">원/월</span>
												</div>
											</div>
										</div>
									</div>
					</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="7" class="tac">등록된 공간이 존재하지 않습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>


				</div>
			</div>


		</section>


		<%-- =================== 리스트 종료  ================= --%>

		<%-- ================ 공간등록 버튼 출력 종료 =============== --%>

		<%-- =============== 페이지 네비게이션 시작 =============== --%>

		<%-- =============== 페이지 네비게이션 종료 =============== --%>
	</div>


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