<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css" >
*{
    margin:0;
    padding:0;
}
body {
    font:14px/1.3 Arial,sans-serif;
}
header {
    background-color:#212121;
    box-shadow: 0 -1px 2px #111111;
    color:#fff;
    display:block;
    height:80px;
    position:relative;
    width:100%;
    z-index:100;
}
header h2{
    font-size:22px;
    font-weight:normal;
    left:10%;
    margin-left:-40px;
    padding:22px 0;
    position:absolute;
    width:540px;
}
header a.stuts,a.stuts:visited{
    border:none;
    text-decoration:none;
    color:#fcfcfc;
    font-size:20px;
    left:70%;
    line-height:31px;
    margin:23px 0 0 110px;
    position:absolute;
    top:0;
}
header .stuts a {
    font-size:22px;
    font-weight:bold;
    margin-left:5px;
}
.container {
    background-color: #EEEEEE;
    border-radius: 5px 5px 5px 5px;
    height: 400px;
    margin: 30px auto;
    padding: 15px;
    width: 750px;
}
</style>
</head>
<body>

 <div class="container" src="image/1.jpg">
       <header>
		<h2>13795-肖力</h2>
		</header>
	<center>
	<br><br><br><br>
		<form action="<%=request.getContextPath()%>/selectByName" method="post">
			<table>
				<tr>
					<th>
					账户：<input type="text" name="firstName" id="inp_1"/> 
					<br>
					<br>
					密码：<input type="password" name="pwd" id="inp_2"/>
					<br>
					<br>
					<input type="submit" value="login"/>
					</th>
					</tr>
			</table>

		</form>

	</center>
	</div>
</body>
</html>