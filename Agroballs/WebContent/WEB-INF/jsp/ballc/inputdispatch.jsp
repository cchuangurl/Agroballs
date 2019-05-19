<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>資料輸入選單</title>
</head>
<body>
<h2>資料輸入選單</h2>
     <table border="1">
        <tr>
            <th>區分</th>
            <th>單筆輸入</th>
            <th></th>
            <th>批次輸入</th>
            <th>匯入輸入</th>
        </tr>
        <tr>
                <td></td>
                <td>
                <c:url var="saveUrl13" value="/ballb/singleinput/${userid}" />
                <form:form  action="${saveUrl13}" method="get">
                <input type=hidden name="product" value="${dimension}"/>
					<input type=hidden name="info" value="${info}"/>
					<input type="submit" value="去輸入畫面">        
					</form:form></td>
					<td><a href="#">單筆資料</a></td> 
					<td><a href="#">批次資料</a></td> 
                <td><a href="#">匯入檔案</a></td>                
         </tr>
         <%-- <tr>
                <td></td>
                <td>
                <c:url var="saveUrl14" value="/ballb/singleinput/${planid}" />
                <form:form  action="${saveUrl14}" method="get">
					<input type="submit" value="日資料">        
					</form:form></td>
					<td><a href="#">期作資料</a></td> 
					<td><a href="#">多產品資料</a></td> 
                <td><a href="#">匯入網頁</a></td>      
         </tr>
         <tr>
                <td></td>
                <td>
                <c:url var="saveUrl15" value="/ballb/singleinput/${planid}" />
                <form:form  action="${saveUrl15}" method="get">
					<input type="submit" value="周資料">        
					</form:form></td>
					<td><a href="#">半年資料</a></td>
					<td><a href="#">多事件資料</a></td> 
                <td><a href="#">匯入資料庫</a></td>      
         </tr>
         <tr>
              <td></td>
                <td>
                <c:url var="saveUrl16" value="/ballb/singleinput/${planid}" />
                <form:form  action="${saveUrl16}" method="get">
					<input type="submit" value="月資料">        
					</form:form></td>
					<td><a href="#">年資料</a></td>
					<td><a href="#">綜合性資料</a></td> 
                <td><a href="#">匯入其他</a></td>      
         </tr>          --%>
    </table>
     <br>
     <hr>
<footer>
<c:url var="saveUrl1" value="/ballb/ballframe" />
<form:form  action="${saveUrl1}" method="get">
<input type=hidden name="userid" value="${user.id}"/>
					<input type=hidden name="product" value="${dimension}"/>
					<input type=hidden name="info" value="${info}"/>
<input type="submit" value="回水晶球">        
</form:form>
<c:url var="saveUrl0" value="/ballc/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</footer>
</body>
</html>