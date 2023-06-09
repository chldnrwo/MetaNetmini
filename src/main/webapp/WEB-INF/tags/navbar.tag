
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ attribute name="active" %>

<style>
#searchTypeSelect {
	width: auto;
}
#nav{
background-color:black;
} 
.navbar{
 background-color:black;
 height:80px;
 margin:0 0 0 0 !important;
 z-index:1;
}
.container-md{
 padding:0 0 0 100px; 
}
.font{
color: #ffffff;
font-family: "Palatino Linotype" !important;
font-weight: bold;
font-size: 20px;
}
.font-main{
color: #ffffff;
font-family: "Palatino Linotype" !important;
font-weight: bold;
font-size: 30px;
}
.nav-item{
padding: 0 15px 0 15px;
}
</style>


<c:url value="/member/mypage" var="myPageLink" />
<c:url value="/qna/QnaList" var="qnaLink" />
<c:url value="/ydsBoard/list" var="onLineLink" />
<c:url value="/offline/on" var="offLineLink" />
<c:url value="/member/login" var="logInLink" />
<c:url value="/member/signup" var="signUpLink" />
<c:url value="/main2" var="mainLink" />
<c:url value="/member/logout" var="logOutLink" />

<c:url value="/host/hostPage" var="hostPage" />
<c:url value="/host/becomeHostIntro" var="becomeHostIntro" />
<c:url value="/qna/adminMain" var="adminMainLink"/>







 
	
 

<nav id="nav" class="navbar navbar-expand-md mb-3">
  <div class="container-md">
    <a class="navbar-brand" href="${mainLink }">
    <span class="font-main">모이개</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div style="padding-left: 120px"class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
         <a class="nav-link"
         href="${onLineLink }">
          <span class="font">
          	<div>
          		Meeting
          	</div>
          	<div>
          		On/Off
          	</div> 
          </span>
         </a>
        </li>
        <%-- <li class="nav-item">
         <a class="nav-link"
         href="${offLineLink }">
          <span class="font">
		  	<div>
          		Activity
          	</div>
          	<div>
          		Off-line
          	</div> 
		  </span>
         </a>
        </li> --%>
        
        <sec:authorize access="not isAuthenticated()" var="logged"/>
		<c:if test="${logged}">
			<li class="nav-item">
	         <a class="nav-link"
	         href="${logInLink }">
			  <span class="font">Log In</span>
			  </a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link"
	          href="${signUpLink }">
	          <span class="font">Sign Up</span>
	          </a>
	        </li>
		</c:if>
		<c:if test="${not logged}">
			<li class="nav-item">
	         <a class="nav-link"
	         href="${logOutLink }">
			  <span class="font">Log Out</span>
			  </a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link"
	          <%-- ${active eq 'signup' ? 'active' : '' } --%>
	          href="${myPageLink}">
	          <span class="font">My Page</span
	          ></a>
	        </li>
		</c:if>
        
        <li class="nav-item">
          <a class="nav-link"
          href="${qnaLink}">
          <span class="font">Store</span
          ></a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link"
          href="${qnaLink}">
          <span class="font">Q&A</span
          ></a>
        </li>
        
<%--          <li class="nav-item">
             <sec:authorize access=" not hasAnyAuthority('host','hostRequest')">
          <a class="nav-link"  href="${becomeHostIntro}"> <span class="font">Become Host</span></a>
          </sec:authorize>
          <sec:authorize access="hasAnyAuthority('host','hostRequest')">
          <a class="nav-link"  href="${hostPage}"> <span class="font">Host Page</span></a>
          </sec:authorize>
          
        </li> --%>
        
        <sec:authorize access="hasAuthority('admin')">
        <li class="nav-item">
          <a class="nav-link"
          href="${adminMainLink}">
          <span class="font">Admin Page</span
          ></a>
        </li>
        </sec:authorize>
        
      </ul>
      <form action="${listLink }" class="d-flex" role="search">
      
      	
      </form>
    </div>
  </div>
</nav>







