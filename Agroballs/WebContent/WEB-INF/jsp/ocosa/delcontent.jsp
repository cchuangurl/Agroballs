<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>刪除確認畫面</title>
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
        <tr>
            <th>內容型態</th>
            <th>內容</th>
            <th>內容編號</th>
            <th>優先性</th>
            <th>上層碼</th>
        </tr>
           <tr>
                <td>${content.statetype}</td>                
               <td>${content.verb}${content.state}
               </td>                
                <td>${content.statecode}</td>
				<td>${content.stateprior}</td>
                <td>${content.uppercode}</td>
                <td>
	                <c:url var="confirmdelUrl" value="/ocosa/confirmdelcontent/${content.id}" />
	                <form:form  action="${confirmdelUrl}" method="get">
					<input type="submit" value="確定刪除左列資料"/>    
					</form:form>
				</td>					           
            </tr>       
    </table>
    <br>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />        
</form:form>
<br>
<hr>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>
</body>
</html>