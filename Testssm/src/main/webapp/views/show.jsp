<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../css/jquery-3.2.0.min.js"></script>
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


.content{
    width:30px;
    float: left;
    marger-left:100px
}
ul ,li{
    list-style: none;
     
}
.main,.hmain{
    width: 150px;
    background: #00efec;
    font-size: 16px;
    text-align: center;
    cursor: pointer;
    line-height:80px;
    color: white;
}
.main>a,.hmain>a{
    text-decoration: none;
    color: white;
    display: inline-block;
    width: 150px;
    min-height: 40px;
}
.main:hover,.hmain:hover{
    background: black;
}
.child{
    background: #444;
    display:none;
}
.child li:hover{
    background: #00efec;
}
 
/*垂直导航栏左浮动*/
.hmain{
  float: left;
}

</style>


</style>
</head>
<body bgcolor="#00efed">
		<header>
		<h2>13795-肖力</h2>
		<a href="#" class="stuts">admin:<%=session.getAttribute("firstName")%>	<a href="name"
			value="${tom.firstName}"></a></a> </header>
		
		 <!--垂直导航栏-->
        <ul class="content">
            <li class="main"><a href="#">customer管理</a>
                <ul class="child">
                    <li>菜单1.1</li>
                    <li>菜单1.2</li>
                    <li>菜单1.3</li>
                </ul>
            </li>
            <li class="main"><a href="#">film管理</a>
                <ul class="child">
                    <li>菜单2.1</li>
                    <li>菜单2.2</li>
                    <li>菜单2.3</li>
                    <li>菜单2.4</li>
                </ul>
            </li>
        </ul>
         
		 <center>
			<from action="edit" method="post">
			<table border="1px" >
				<tr>
					<th>customer_id</th>
					<th>store_id</th>
					<th>first_name</th>
					<th>last_name</th>
					<th>email</th>
					<th>address</th>
					<th>操作</th>
				</tr>

				<c:forEach items="${list}" var="tom">
					<tr>
						<th><input value="${tom.customerId}"
							style="border-style: none" readonly /></th>
						<th><input value="${tom.storeId}" style="border-style: none"
							readonly /></th>
						<th><input value="${tom.firstName}"
							style="border-style: none" readonly /></th>
						<th><input value="${tom.lastName}" style="border-style: none"
							readonly /></th>
						<th><input value="${tom.email}" style="border-style: none"
							readonly /></th>
						<th><input value="${tom.address}" style="border-style: none"
							readonly /></th>
						<th><a
							href="<%=request.getContextPath()%>/edit?customer_id=${tom.customerId}">编辑</a>
							<a
							href="<%=request.getContextPath()%>/delete?customer_id=${tom.customerId}">删除</a>
							<a href="<%=request.getContextPath()%>/tianjia">新建</a></th>
					</tr>
				</c:forEach>
			</table>

			<a href="<%=request.getContextPath()%>/selectpage?pagenum=0">首页</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=${this.pageIndex - 1 }"
				name="before" value="this.pageIndex">上一页</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=1">1</a>  <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=2">2</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=3">3</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=4">4</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=5">5</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=6">6</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=7">7</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=8">8</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=9">9</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=10">10</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=${this.pageIndex + 1}"
				name="next">下一页</a> <a
				href="<%=request.getContextPath()%>/selectpage?pagenum=40">尾页</a> </from>
	</center>
	
</body>
</html>