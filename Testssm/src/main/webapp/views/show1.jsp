<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta http-equiv="Content-Language" content="zh-CN" /> 
<meta content="all" name="robots" /> 
<meta name="Copyright" content="" /> 
<meta name="description" content="" /> 
<meta content="" name="keywords" /> 
<link rel="stylesheet" type="text/css" href="css.css" /> 
<title>原料库管理</title> 

</head> 
<body> 
<div> 
<table border="0" cellpadding="0" cellspacing="0" bordercolor="#006600" id="senfe"> 
<thead> 
 
   <tr>
    <th>customer_id</th>
   <th>store_id</th>
   <th>first_name</th>
   <th>last_name</th>
   <th>email </th>
    <th>address</th> 
  </tr> 
</thead> 
<tbody id="group_one"> 
<c:forEach items="${list}" var="tom">
<tr>
   <th> <input value="${tom.customerId}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.storeId}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.firstName}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.lastName}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.email}" style="border-style:none" readonly/></th>
   <th> <input value="${tom.address}" style="border-style:none" readonly/></th>
   
 </tr>
</c:forEach>
</tbody>
</table>
<script language="javascript"><!-- 
//senfe("表格名称","奇数行背景","偶数行背景","鼠标经过背景","点击后背景"); 
senfe("senfe","#fff","#ccc","#cfc","#f00"); 
--></script> 
</div> 
<div><a href="#" onclick="page.firstPage();">首 页</a>/<a href="#" onclick="page.nextPage();">下一页</a>/<a href="#" onclick="page.prePage();">上一页</a>/<a href="#" onclick="page.lastPage();">末 页</a><span id="divFood"> 
</span> 
/第 
<input id="pageno" value="1" style="width:20px"/>页/<a href="#" onclick="page.aimPage();">跳转</a></div> 
</div> 
</div> 
</body> 
</html>