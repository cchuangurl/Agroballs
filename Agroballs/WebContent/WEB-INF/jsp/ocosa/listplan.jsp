<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${user.realname}的專案清單</title>
</head>
<body>
 <h2>${statusreport}</h2>
    <hr>
	<c:url var="addplanUrl" value="/ocosa/addplan/${user.id}" />
	<form:form  action="${addplanUrl}" method="get">
	<input type="submit" value="新增專案"/>        
	</form:form></td>   
   <table border="1">
        <tr>
            <th>專案ID</th>
            <th>專案英文代碼</th>
            <th>專案建立者</th>
            <th>分享對象</th>
        </tr>
        <c:forEach var="plan" items="${planList }" >
            <tr>
                <td>${plan.id}</td>
                <td>${plan.plancode}</td>
                <td>${plan.owner}</td>
                 <td>${plan.shareto}</td>
                <td><c:url var="editplanUrl" value="/ocosa/editplan/${plan.id}" />
							<form:form  action="${editplanUrl}" method="get">
							<input type="submit" value="編輯左列資料"/>        
							</form:form></td>
					<td><c:url var="inputcontentUrl" value="/ocosa/setplangoal/${plan.id}" />
							<form:form  action="${inputcontentUrl}" method="post">
							<input type="submit" value="新建立專案內容"/>        
							</form:form></td>		
                <td><c:url var="showcontentUrl" value="/ocosa/showcontent/${plan.id}" />
							<form:form  action="${showcontentUrl}" method="get">
							<input type="submit" value="檢視已建專案內容"/>        
							</form:form></td>
                <td bgcolor="orange"><c:url var="listsuiteUrl" value="/ocosa/listsuite/${plan.id}" />
							<form:form  action="${listsuiteUrl}" method="get">
							<input type="submit" value="檢視行動措施清單"/>        
							</form:form></td>
                <td bgcolor="pink"><c:url var="displaymenuUrl" value="/ocosa/displaymenu/${plan.id}" />
							<form:form  action="${displaymenuUrl}" method="get">
							<input type="submit" value="產出各種管理書圖"/>        
							</form:form></td>
                 <td><c:url var="delplanUrl" value="/ocosa/delplan/${plan.id}" />
							<form:form  action="${delplanUrl}" method="get">
							<input type="submit" value="删除專案"/>        
							</form:form></td>
                </tr>
        </c:forEach>
    </table>
     <br>
     <hr>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>