<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style tpye=text/css>
table.header {
	margin-right=50px
	}
p.1 {
 	font-size::16px;
	}
p.2 {
 	font-size:14px;
 	text-indent:16px
	}
p.3 {
 	font-size:12px;
 	text-indent:30px
	}
p.4 {
 	font-size:12px;
 	text-indent:42px
	}
/* ol.csf {
	list-style-type: cjk-ideographic
}
ol.strategy {
	list-style-type: decimal;
}
ol.csf {
	list-style-type:upper-roman;
}
div {font-size="2" color="blue" text-indent="12"} */
</style>
<title>專案施政方針</title>
</head>
<body>
<table class="header">
<tr>
<td>
本頁狀態說明:${statusreport}
</td>
<td width="400px">
<td>
<td>
<c:url var="displaymenuUrl" value="/ocosa/displaymenu/${planid}" />
<form:form  action="${displaymenuUrl}" method="get">
<input type="submit" value="回到管理書圖清單"/>        
</form:form>
</td>
<td>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />        
</form:form>
</td>
<td>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</td>
</tr>
</table>


   <h1><font color="brown">${content0.planname}施政方針</font></h1>
   <table>
    <c:forEach var="line" items="${linelist }" >
    <tr>
        ${line}
     </tr>                     
        </c:forEach>
    </table>
    <br>
<table class="footer">
<tr>
<td>
<c:url var="displaymenuUrl" value="/ocosa/displaymenu/${planid}" />
<form:form  action="${displaymenuUrl}" method="get">
<input type="submit" value="回到管理書圖清單"/>        
</form:form> 
</td>
<td>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />
</form:form>
</td>
<td>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</td>
</tr>
</table>
</body>
</html>