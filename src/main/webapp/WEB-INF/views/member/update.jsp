<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<style>
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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body onload="initialize()">
	<my:navbar></my:navbar>
	
	<div class="container-md">
		<div class="row">
			<div class="col">
				<h1 style="margin-top: 20px">회원정보 수정</h1>
				
				<form action="" method="post">
					<input hidden type="text" name="user_id" value="${member.user_id}"/>
					<div class="mb-3">
						<label for="" class="form-label">
							이메일
						</label> <br>
						<div style="font-size: 20px;">
							${member.email}
						</div>	
					
					
					</div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							닉네임
						</label>
						
						<div class="input-group">
							<input id="nickNameInput1" class="form-control" type="text" name="nickname" value="${member.nickname}">
							<button id="nickNameExistButton1" type="button" class="btn btn-outline-secondary">중복확인</button>
						</div>
						
						<div id="nickNameText1" class="form-text">중복확인을 눌러주세요.</div>
					</div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							암호
						</label>
						<input id="passwordInput1" class="form-control" type="password" name="password">
						<div id="passwordText1" class="form-text"></div>
					</div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							암호 확인
						</label>
						<input id="passwordInput2" class="form-control" type="password">
					</div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							이름
						</label>
						
						<div class="input-group">
							<input id="name" class="form-control" type="text" name="user_name" value="${member.user_name}">
						</div>
					</div>
										
	                <div class="mb-3">
    					<label for="" class="form-label">
							성별
						</label>
								
						<select class="form-select" aria-label="Default select example" name="gender" id="gender">
						  
						<c:if test="${member.gender eq 'male'}">
							<option>선택하세요</option>
							<option selected value="male">남자</option>
							<option value="female">여자</option>
						</c:if>
						<c:if test="${member.gender ne 'male'}">
							<option>선택하세요</option>
							<option value="male">남자</option>
							<option selected value="female">여자</option>
						</c:if>
						</select>            
	                </div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							전화번호
						</label>
						<div class="input-group">
							<input id="phone" class="form-control" type="text" name="phone" value="${member.phone}">
						</div>
					</div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							생년월일
						</label>
						<div class="input-group">
							<input type="text" title="생년월일" name="birth" id="birthDay" class="datepicker form-control" value="${member.birth}">
						</div>
					</div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							주소
						</label>
						<input hidden required="required" type="text" class="form-control" name="location" id="addressLL" value='${member.location}'>
						<div class="input-group">
							<input readonly="readonly" required="required" type="text" class="form-control" 
							name="city" id="address" value="${member.city}">
							<button id="addressSubmitButton" type="button" class="btn btn-outline-secondary">주소찾기</button>
						</div>
					</div>
			
					
					<input disabled id="submitButton1" class="btn btn-primary" type="submit" value="수정">
				
				</form>
			</div>
		</div>
	</div>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<script type="text/javascript">
/*새로 쓰는 기술*/
/*Jquery date picker*/
    $(document).ready(function() {
 
        $(".datepicker").datepicker({
  
              //showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
              //buttonImage: "/application/db/jquery/images/calendar.gif", // 버튼 이미지
              //buttonImageOnly: true, // 버튼에 있는 이미지만 표시한다.
              changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
              changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
              minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.
              nextText: '다음 달', // next 아이콘의 툴팁.
              prevText: '이전 달', // prev 아이콘의 툴팁.
              numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
              stepMonths: 3, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가. 
              yearRange: 'c-100:c+10', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
              showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다. ( ...으로 표시되는부분이다.) 
              currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널
              closeText: '닫기',  // 닫기 버튼 패널
              dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
              showAnim: "slide", //애니메이션을 적용한다.  
              showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
              dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
              monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.
 
         });
 
    });
</script> 
<script>
/*--------------------도로명 주소 입력 기능-------------------------------------------------------------------------------*/
const ctx = "${pageContext.request.contextPath}";

document.querySelector("#addressSubmitButton").addEventListener("click", function() {
	
	window.open("${path}/member/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
});


function jusoCallBack(roadFullAddr,roadAddrPart1){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.querySelector("#address").value = roadFullAddr;
		document.querySelector("#address2").value = roadAddrPart1;
		
		codeAddress();
		checkForm();
}
/*--------------------도로명 주소 입력 기능 끝-------------------------------------------------------------------------------*/
</script>

<script type="text/javascript"src="http://maps.googleapis.com/maps/api/js?key=${gKey}&sensor=false">	</script>
<script type="text/javascript">
/*--------------------위도경도 변환 기능-------------------------------------------------------------------------------*/
	var map;
	var infowindow = new google.maps.InfoWindow();
	var marker = [];
	var geocoder;
	var geocodemarker = [];
	var GreenIcon = new google.maps.MarkerImage(
	"http://labs.google.com/ridefinder/images/mm_20_green.png",
	new google.maps.Size(12, 20),
	new google.maps.Point(0, 0),
	new google.maps.Point(6, 20));
	// 녹색 마커 아이콘을 정의하는 부분
	function initialize() {
		var latlng = new google.maps.LatLng(37.5240220, 126.9265940);
		var myOptions = {
			zoom : 10,
			center : latlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById("map_canvas"),
				myOptions);
		geocoder = new google.maps.Geocoder();
		/* google.maps.event.addListener(map, 'click', codeCoordinate); */
		/*아랫글에서 설명한 event를 이용 지도를 'click'하면 codeCoordinate함수를 실행합니다.
		   codeCoordinate함수는 클릭한 지점의 좌표를 가지고 주소를 찾는 함수입니다. */
	}
	//입력 받은 주소를 지오코딩 요청하고 결과를 마커로 지도에 표시합니다.
	function codeAddress(event) {
		if (geocodemarker.length > 0){
			for (var i = 0; i < geocodemarker.length; i++){
				geocodemarker[i].setMap(null);
			}
			geocodemarker = [];
			geocodemarker.length = 0;
		}
		//이 부분도 위와 같이 주소를 입력할 때 표시되는 marker가 매번 새로 나타나게 하기 위함입니다.
		var address = document.getElementById("address").value;
		//아래의 주소 입력창에서 받은 정보를 address 변수에 저장합니다.
		//지오코딩하는 부분입니다.
		geocoder.geocode({
			'address' : address
		}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) //Geocoding이 성공적이라면,
			{
				for (var i = 0; i < results.length; i++)
				{
					var loc = JSON.stringify(results[i].geometry.location);
					console.log(loc);
					document.querySelector("#addressLL").value = loc; 
					map.setCenter(results[i].geometry.location);
					geocodemarker.push(new google.maps.Marker({
						center : results[i].geometry.location,
						position : results[i].geometry.location,
						icon : GreenIcon,
						map : map
					
					}));
				}
				//결과가 여러 개일 수 있기 때문에 모든 결과를 지도에 marker에 표시합니다.
			}
			else{
				alert("Geocode was not successful for the following reason: "
						+ status);
			}
		});
	}
/*--------------------위도경도 변환 기능 끝-------------------------------------------------------------------------------*/
</script>
<div hidden id="map_canvas" style="width: 80%; height: 60%"></div>

<script>
const name = document.getElementById("name");
const gender = document.getElementById("gender");
const phone = document.getElementById("phone");
const birthDay = document.getElementById("birthDay");
const address = document.getElementById("address");
const password = document.getElementById("passwordInput1");
const password2 = document.getElementById("passwordInput2");
function checkForm() {
	const button = document.querySelector("#submitButton1");
	  // 모든 입력 필드가 비어 있지 않은지 확인합니다.
	  if (
	    name.value.trim() !== "" &&
	    gender.value.trim() !== "" &&
	    phone.value.trim() !== "" &&
	    birthDay.value.trim() !== "" &&
	    address.value.trim() !== "" &&
	    enableSubmitButton()
	  ) {
	    button.disabled = false; // 모든 입력 필드가 채워져 있는 경우 버튼 활성화
	  } else {
	    button.disabled = true; // 하나 이상의 입력 필드가 비어 있는 경우 버튼 비활성화
	  }
	}

	// 모든 입력 필드에 이벤트 리스너를 추가하여 값이 변경되었을 때 checkForm 함수를 호출합니다.
	name.addEventListener("input", checkForm);
	gender.addEventListener("input", checkForm);
	phone.addEventListener("input", checkForm);
	birthDay.addEventListener("input", checkForm);
	address.addEventListener("input", checkForm);
	password.addEventListener("input", checkForm);
	password2.addEventListener("input", checkForm);
	
// 닉네임 사용 가능
let availableNickName = false;
// 패스워드 사용 가능
let availablePassword = false;

function enableSubmitButton() {
	const button = document.querySelector("#submitButton1");
	if (availableNickName && availablePassword) {
		button.removeAttribute("disabled")
		return true;
	} else {
		button.setAttribute("disabled", "");
		return false;
	}
}


//닉네임 input 변경시 submit 버튼 비활성화
document.querySelector("#nickNameInput1").addEventListener("keyup", function() {
	availableNickName = false;
	enableSubmitButton();
});

// 닉네임 중복확인
document.querySelector("#nickNameExistButton1").addEventListener("click", function() {
	availableNickName = false;
	const nickName = document.querySelector("#nickNameInput1").value;
	
	fetch(`\${ctx}/member/existNickName2`, {
		method : "post",
		headers : {
			"Content-Type" : "application/json"
		},
		body : JSON.stringify({nickName})
	})
		.then(res => res.json())
		.then(data => {
			document.querySelector("#nickNameText1").innerText = data.message;
			
			if (data.status == "not exist") {
				availableNickName = true;
				enableSubmitButton();
			}
		});
});


/* 패스워드 일치하는 지 확인 시작 */
const passwordInput1 = document.querySelector("#passwordInput1");
const passwordInput2 = document.querySelector("#passwordInput2");
const passwordText1 = document.querySelector("#passwordText1");
 
function matchPassword() {
	availablePassword = false;
	
	const value1 = passwordInput1.value;
	const value2 = passwordInput2.value;
	
	if (value1 == value2) {
		passwordText1.innerText = "패스워드가 일치합니다.";
		availablePassword = true;
	} else {
		passwordText1.innerText = "패스워드가 일치하지 않습니다.";
		availablePassword = false;
	}
	
	enableSubmitButton();
	checkForm();
}

passwordInput1.addEventListener("keyup", matchPassword);
passwordInput2.addEventListener("keyup", matchPassword);
/* 패스워드 일치하는 지 확인 끝 */

</script>
</body>
</html>









