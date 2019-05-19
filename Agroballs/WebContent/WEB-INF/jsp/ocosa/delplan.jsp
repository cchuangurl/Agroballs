<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>刪除專案</title>
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
<c:url var="showcontentUrl" value="/ocosa/showcontent/${planid}" />
<form:form  action="${showcontentUrl}" method="get">					
<input type="submit" value="續填其他計畫內容">   
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
  
<table border="1">
                <tr><td>專案ID:${plan.id}</td></tr>
                <tr><td>專案名稱:${plan.plancode}</td></tr>
                <tr><td>專案建立者${plan.owner}</td></tr>
                 <tr><td>分享對象${plan.shareto}</td></tr>
                  <tr><td>
                 <c:url var="delplanUrl" value="/ocosa/confirmdelplan/${plan.id}" />
						<form:form  action="${delplanUrl}" method="post" >
               		 請輸入專案建立者密碼：<input type="text" name="userpw"/>
                </td></TR>                 
                <tr><td><input type="submit" value="確認删除專案" /></td></tr>           
           </form:form>
           </table>
     <br>
     <hr>
     <c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁">        
</form:form>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>