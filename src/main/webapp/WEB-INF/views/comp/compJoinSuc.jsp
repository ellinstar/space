<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/include/css/comp.css" rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- <script type="text/javascript" src="/resources/include/js/common.js"></script>
<script type="text/javascript" src="/resources/include/js/join.js"></script> -->
<script type="text/javascript">
	$(document).ready(function() {
		$("#test1").click(function() {
			location.href = "index.do"
		});
	});
</script>
<style type="text/css">
#test1{
	float: right;
    position: relative;
    left: -45%;
}

.well {
	width : 60%;
	float: right;
    position: relative;
    left: -20%;
}

.well p {
	left: -20%;
}

.miniTitle {
	font-weight:bold;
	font-size : 22px;
}

.tit_space {
font-weight:bold;
}

#joinSuc2 {
color : red;
text-align : center;
}


</style>
<title>Join Success</title>
</head>

<body>
	<br><br><br>
	<div class="well">
			<h1 class="tit_space" align="center">회원가입 신청 완료</h1>
			<br>
			<div id="joinSuc1">
				<p class="miniTitle">&nbsp;&nbsp;제출서류목록</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;사업자 등록증, 통장사본</p>
				<p class="miniTitle">&nbsp;&nbsp;공간 등록 시 제출 서류 목록</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;계약자와 사업자가 동일한 부동산 임대 계약서</p>
				<br>
				<p>&nbsp;&nbsp;주소 : 서울시 성동구 무학로2길 54</p>
				<p>&nbsp;&nbsp;FAX : 02-428-9694</p>
			</div>
			<br><br>
			
	
	<div id="joinSuc2">
				<p>제출 서류 검토 후 회원가입 승인처리 됩니다.</p>
				<p>서류 제출 기한은 가입 신청일로부터 7일 입니다.</p>
				<p>제출 기한이 지나면 신청은 자동취소 됩니다.</p>
			</div>
			<div>
				<input type="button" id="test1" value="확인" class="btn btn-default" />
			</div>
	</div>
</body>
</html>