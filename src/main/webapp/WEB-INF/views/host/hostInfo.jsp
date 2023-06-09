<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">



<style>
div.row {
	width: 100%;
	display: flex;
}

div.left {
	width: 20%;
	float: left;
	box-sizing: border-box;
	background-color:
}

div.right {
	width: 70%;
	float: right;
	box-sizing: border-box;
}

._1uwb2q9 {
	-webkit-box-pack: justify !important;
	-webkit-box-direction: normal !important;
	-webkit-box-orient: vertical !important;
	/*     display: flex !important; */
	flex-direction: column !important;
	justify-content: space-between !important;
	width: 100% !important;
	min-height: 156px !important;
	box-shadow: rgb(0 0 0/ 12%) 0px 6px 16px !important;
	margin: 8px 0px !important;
	padding: 16px !important;
	border-radius: 12px !important;
	text-decoration: none !important;
}

*, *:before, *:after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-ms-flex: 0 1 auto;
}

user agent stylesheet
div {
	/*     display: block; */
	float: left;
}

#wrapper {
	display: grid;
	place-items: center;
	min-height: 100vh;
}

._131n1yh {
	background: transparent !important;
	border: none !important;
	color: inherit !important;
	cursor: pointer !important;
	/*     display: block !important; */
	/*     margin: 0px !important; */
	padding: 0px !important;
	text-align: inherit !important;
	text-decoration: none !important;
	height: 100% !important;
	width: 100% !important;
	touch-action: manipulation !important;
}

a, a:hover, a:focus {
	color: inherit;
	text-decoration: none;
}

input, textarea, select, button, a {
	font-family: inherit;
	font-size: 100%;
}

user agent stylesheet
a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
}

._is5jnq { -
	-page-shell-max-content-width: 1440px !important;
}

[lang="ko"] body {
	word-break: keep-all;
}

body {
	line-break: strict;
}

body {
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif;
	font-size: 14px;
	line-height: 1.43;
	color: #222;
	background-color: #fff;
	margin: 0;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

style attribute { -
	-vh: 9.62px; -
	-vw: 7.64px; -
	-vw-unitless: 764; -
	-vw-px: 764px;
}

:root { -
	-h-l-f-om-o: 4px; -
	-go-h-jh-l: 8px; -
	-i-g-gvoq: 12px; -
	-g-ki-r-rq: 16px; -
	-j-mdfu-h: 20px; -
	-jx-b-v-zt: 0 8px 28px rgba(0, 0, 0, 0.28); -
	-g-r-n-ycy: 1px solid rgba(0, 0, 0, 0.04); -
	-ih-jiz-p: 0 6px 20px rgba(0, 0, 0, 0.2); -
	-cglwe-y: 1px solid rgba(0, 0, 0, 0.04); -
	-cizosd: 0 6px 16px rgba(0, 0, 0, 0.12); -
	-cb-k-zk-c: 1px solid rgba(0, 0, 0, 0.04); -
	-e-swdx-p: 0 2px 4px rgba(0, 0, 0, 0.18); -
	-g-fi-y-r-e: 1px solid rgba(0, 0, 0, 0.08); -
	-f-ya-ggj: cubic-bezier(1, 0, 0.86, 1); -
	-bd-d-m-c-q: cubic-bezier(0, 0, 0.1, 1); --
	-bz-mmq: cubic-bezier(0.35, 0, 0.65, 1); -
	-bgxgx: #000000; -
	-f-k-smk-x: #222222; -
	-fo-jk-r-s: #717171; -
	-iw-ihca: #B0B0B0; -
	-j-qkgmf: #DDDDDD; -
	-d-nc-lt-s: #EBEBEB; --
	-pc-g-v-g: #F7F7F7; -
	-f-mkcy-f: #FFFFFF; -
	-k-va-tnc: #C13515; -
	-cnr-vp-o: #B32505; -
	-f-p-k-v-lb: #FFF8F6; -
	-fhi-qn-u: #E07912; -
	-k-ff-my-a: #008A05; -
	-ldbkp-d: #428BFF; -
	-ihf-tp-q: #FF385C; -
	-cl-yygv: #E00B41; -
	-kd-lqtg: #92174D; -
	-d-u-w-o-m-k: #460479; -
	-dc-gy-f-v: linear-gradient(to right, #E61E4D 0%, #E31C5F 50%, #D70466 100%);
	-
	-d-e-vybb: radial-gradient(circle at center, #FF385C 0%, #E61E4D 27.5%, #E31C5F 40%
		, #D70466 57.5%, #BD1E59 75%, #BD1E59 100%); -
	-gj-z-dpd: linear-gradient(to right, #BD1E59 0%, #92174D 50%, #861453 100%);
	-
	-i-n-t-h-mj: radial-gradient(circle at center, #D70466 0%, #BD1E59 30%, #92174D 55%,
		#861453 72.5%, #6C0D63 90%, #6C0D63 100%); -
	-iqds-nv: linear-gradient(to right, #59086E 0%, #460479 50%, #440589 100%);
	-
	-j-m-v-dtd: radial-gradient(circle at center, #6C0D63 0%, #59086E 30%, #460479 55%,
		#440589 72.5%, #3B07BB 90%, #3B07BB 100%); -
	-jhzm-v-t: 16px; -
	-ikx-k-pe: 24px; -
	-kksqe-v: 32px; -
	-f-fw-z-a-i: 40px; -
	-cw-a-a-u-a: 48px; -
	-fvsvry: 64px; -
	-cy-o-aco: 80px; -
	-d-b-mrdy: 2px; -
	-h-x-sf-jw: 4px; -
	-fgg-f-l-a: 8px;
	Show
	All
	Properties
	(36
	more)
}

:root { -
	-h-l-f-om-o: 4px; -
	-go-h-jh-l: 8px; -
	-i-g-gvoq: 12px; -
	-g-ki-r-rq: 16px; -
	-j-mdfu-h: 20px; -
	-jx-b-v-zt: 0 8px 28px rgba(0, 0, 0, 0.28); -
	-g-r-n-ycy: 1px solid rgba(0, 0, 0, 0.04); -
	-ih-jiz-p: 0 6px 20px rgba(0, 0, 0, 0.2); -
	-cglwe-y: 1px solid rgba(0, 0, 0, 0.04); -
	-cizosd: 0 6px 16px rgba(0, 0, 0, 0.12); -
	-cb-k-zk-c: 1px solid rgba(0, 0, 0, 0.04); -
	-e-swdx-p: 0 2px 4px rgba(0, 0, 0, 0.18); -
	-g-fi-y-r-e: 1px solid rgba(0, 0, 0, 0.08); -
	-f-ya-ggj: cubic-bezier(1, 0, 0.86, 1); -
	-bd-d-m-c-q: cubic-bezier(0, 0, 0.1, 1); --
	-bz-mmq: cubic-bezier(0.35, 0, 0.65, 1); -
	-bgxgx: #000000; -
	-f-k-smk-x: #222222; -
	-fo-jk-r-s: #717171; -
	-iw-ihca: #B0B0B0; -
	-j-qkgmf: #DDDDDD; -
	-d-nc-lt-s: #EBEBEB; --
	-pc-g-v-g: #F7F7F7; -
	-f-mkcy-f: #FFFFFF; -
	-k-va-tnc: #C13515; -
	-cnr-vp-o: #B32505; -
	-f-p-k-v-lb: #FFF8F6; -
	-fhi-qn-u: #E07912; -
	-k-ff-my-a: #008A05; -
	-ldbkp-d: #428BFF; -
	-ihf-tp-q: #FF385C; -
	-cl-yygv: #E00B41; -
	-kd-lqtg: #92174D; -
	-d-u-w-o-m-k: #460479; -
	-dc-gy-f-v: linear-gradient(to right, #E61E4D 0%, #E31C5F 50%, #D70466 100%);
	-
	-d-e-vybb: radial-gradient(circle at center, #FF385C 0%, #E61E4D 27.5%, #E31C5F 40%
		, #D70466 57.5%, #BD1E59 75%, #BD1E59 100%); -
	-gj-z-dpd: linear-gradient(to right, #BD1E59 0%, #92174D 50%, #861453 100%);
	-
	-i-n-t-h-mj: radial-gradient(circle at center, #D70466 0%, #BD1E59 30%, #92174D 55%,
		#861453 72.5%, #6C0D63 90%, #6C0D63 100%); -
	-iqds-nv: linear-gradient(to right, #59086E 0%, #460479 50%, #440589 100%);
	-
	-j-m-v-dtd: radial-gradient(circle at center, #6C0D63 0%, #59086E 30%, #460479 55%,
		#440589 72.5%, #3B07BB 90%, #3B07BB 100%); -
	-jhzm-v-t: 16px; -
	-ikx-k-pe: 24px; -
	-kksqe-v: 32px; -
	-f-fw-z-a-i: 40px; -
	-cw-a-a-u-a: 48px; -
	-fvsvry: 64px; -
	-cy-o-aco: 80px; -
	-d-b-mrdy: 2px; -
	-h-x-sf-jw: 4px; -
	-fgg-f-l-a: 8px;
	Show
	All
	Properties
	(36
	more)
}

html {
	-ms-text-size-adjust: 100%;
	-moz-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%;
}

*, *:before, *:after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-ms-flex: 0 1 auto;
}

input {
	width: 500px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(233, 233, 233);
}
@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
} 
body {
 font-family: 'NanumSquareNeo-Variable','Palatino Linotype' !important; 
}
</style>


</head>
<body>
	<my:navbar></my:navbar>

	<center>
		<div class="container" align="center">
			<div class="row">
				<div class="left" style="margin-right: 120px;">
					<my:hostPage></my:hostPage>
				</div>

				<div class="right">

					<br>
					<center>
						<sec:authorize access="hasAnyAuthority('hostRequest')">
							<br>
							<br>
							<h2>${host.m_id }님의 호스트신청 정보 수정</h2>
							<h5>관리자가 호스트 승인을 검토중입니다</h5>
						</sec:authorize>
						<sec:authorize access="hasAnyAuthority('host')">
							<h2>호스트 ${host.m_id }님의 정보 수정</h2>
						</sec:authorize>
					</center>
					<br>




					<form action="" method="post" enctype="multipart/form-data">
						호스트 아이디 <br> <input type="text" style='text-align: center'
							value="${host.m_id }" name="m_id" readonly> <br> <br>
						호스트 승인여부 <br> <input type="text" style='text-align: center'
							value="${auth }" readonly> <br> <br>
						<%-- 이미지 출력 디비는 스트링일뿐.--%>
						호스트의 전문 분야 <br> <input type="text" style='text-align: center'
							value="${host.h_field }" name="h_field" readonly> <br>
						<br>
						<div>
							<c:set value="${host.h_photo}" var="photoName"></c:set>


							호스트 사진 <br> <img class="img-fluid img-thumbnail"
								src="${imgUrl }/host/${host.m_id}/${URLEncoder.encode(photoName, 'utf-8')}"
								width="200px" height="200px" alt=""> <br> <br>
							<div class="mb-3">
								<label for="" class="form-label"><b>본인의 사진을 첨부해주세요</b></label> <input
									multiple type="file" accept="image/*" class="form-control"
									name="file">
							</div>

						</div>
						<%-- 				<textarea value="${host.h_introduction }" name = "h_introduction"/> --%>
						호스트 소개 <br>
						<textarea rows="5" name="h_introduction" class="form-control">${host.h_introduction  }</textarea>
						<center>
							<br> <input id="hostInfoModify" type="submit"
								class="btn btn-dark" value="수정완료">
							<button class="btn btn-dark" type="button"
								style="bacgroubd-color: white"
								onclick="location.href=   '${pageContext.request.contextPath}/host/hostPage';">수정취소</button>
						</center>
					</form>
				</div>
			</div>
		</div>


	</center>





	<script>
	{
	    mode: "multiple",
	    dateFormat: "Y-m-d"
	}
	// commonjs
	const flatpickr = require("flatpickr");

	// es modules are recommended, if available, especially for typescript
	import flatpickr from "flatpickr";
	// If using flatpickr in a framework, its recommended to pass the element directly
	flatpickr(element, {});

	// Otherwise, selectors are also supported
	flatpickr("#myID", {});

	// creates multiple instances
	flatpickr(".anotherSelector");
	$(".selector").flatpickr(optional_config);
	</script>

	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>









