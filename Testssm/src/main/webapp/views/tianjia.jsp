<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	font: 14px/1.3 Arial, sans-serif;
}

header {
	background-color: #212121;
	box-shadow: 0 -1px 2px #111111;
	color: #fff;
	display: block;
	height: 80px;
	position: relative;
	width: 100%;
	z-index: 100;
}

header h2 {
	font-size: 22px;
	font-weight: normal;
	left: 10%;
	margin-left: -40px;
	padding: 22px 0;
	position: absolute;
	width: 540px;
}

header a.stuts, a.stuts:visited {
	border: none;
	text-decoration: none;
	color: #fcfcfc;
	font-size: 20px;
	left: 70%;
	line-height: 31px;
	margin: 23px 0 0 110px;
	position: absolute;
	top: 0;
}

header .stuts a {
	font-size: 22px;
	font-weight: bold;
	margin-left: 5px;
}

.content {
	width: 30px;
	float: left;
	marger-left: 100px
}

ul, li {
	list-style: none;
}

.main, .hmain {
	width: 150px;
	background: #00efec;
	font-size: 16px;
	text-align: center;
	cursor: pointer;
	line-height: 80px;
	color: white;
}

.main>a, .hmain>a {
	text-decoration: none;
	color: white;
	display: inline-block;
	width: 150px;
	min-height: 40px;
}

.main:hover, .hmain:hover {
	background: black;
}

.child {
	background: #444;
	display: none;
}

.child li:hover {
	background: #00efec;
}

/*垂直导航栏左浮动*/
.hmain {
	float: left;
}
</style>
</head>
<body>
<% String name=(String)session.getAttribute("firstName"); 
   if(name!=null){%>
    <%response.sendRedirect("show.jsp"); %>
<%}else{ %>
<%response.sendRedirect("login.jsp"); %>
<%} %>
	<header>
	<h2>13795-肖力</h2>
	<a href="#" class="stuts">admin:<%=session.getAttribute("firstName")%><a href="name"
		value="${tom.firstName}"></a></a> </header>

	<ul class="content">
		<li class="main"><a href="<%=request.getContextPath()%>/select">customer管理</a>
			
		<li class="main"><a href="#">film管理</a>
			
	</ul>

	<center>
	
		<form action="tianjia1" method="post">
		<table width="88.5%" border="1px" height="50%" align="right">
			<tr><th>firstName：</th><th> <input type="text" name="firstName" /></th></tr> 
			<tr><th>lastName：</th><th>   <input type="text" name="lastName" /></th></tr> 
			<tr><th>email：</th><th> <input type="text" name="email" /></th></tr> 
			<tr><th>address：</th>
			             <th><select name="address">
                            <c:forEach items="${List}" var="ml">
                            <option value="${ml.address}">${ml.address}</option>
                            </c:forEach>
                          </select>
                          </th></tr>
             <tr><th colspan="2"><input type="submit" name="提交" /></th></tr>
	    </table>
		</form>
	</center>
</body>
</html>