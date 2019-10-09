<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>

<!--Diifrent ways to specify the css but it doesnt worked out me only include is worked for me  -->
<%-- <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet"> --%>
<!-- <style type="text/css"> -->
<%-- <%@ include file="/resources/css/login.css" %>
<link rel="stylesheet" type="text/css" href="/resources/css/login" />
</style> --%>


<style type="text/css">
/* complete path is mandetory */
 <%@ include file="/resources/css/login.css" %> 
</style>

</head>

<body>
	<div class="main-div">
	<h2>LOGIN HERE</h2>
		<!-- action attribute speciies where to redirect when we submit the form -->
		<form action="${pageContext.request.contextPath}/home" method="POST"><%-- ${pageContext.request.contextPath} --%>
			<div class="form-group">
				<div class="lableClass">
					<label for="loginInputEmail">Email Address</label>
				</div>
				<input type="email" class="form-control" placeholder="Enter Email here" id="inputEmailId">
			</div>

			<div class="form-group">
				<div class="lableClass">

					<label for="loginInputPassword">Password</label>
				</div>
				<input type="password" class="form-control" placeholder="Password" id="inputPwdId">
			</div>
            <div class="btn-and-text-div">
			<button class="button button1">LOGIN</button>

			<label class>Don't have account yet?</label>
			<a href="${pageContext.request.contextPath}/signup">click here</a>
           </div>
		</form>
	</div>
</body>
</html>