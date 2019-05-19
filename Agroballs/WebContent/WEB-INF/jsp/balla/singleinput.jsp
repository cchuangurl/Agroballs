<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>單筆資料輸入選單</title>
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
                <c:url var="saveUrl13" value="/balla/singleinput/${planid}" />
                <form:form  action="${saveUrl13}" method="get">
					<input type="submit" value="不定期資料">        
					</form:form></td>
					<td><a href="#">季資料</a></td> 
					<td><a href="#">多日期資料</a></td> 
                <td><a href="#">匯入檔案</a></td>                
         </tr>
         <tr>
                <td></td>
                <td>
                <c:url var="saveUrl14" value="/balla/singleinput/${planid}" />
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
                <c:url var="saveUrl15" value="/balla/singleinput/${planid}" />
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
                <c:url var="saveUrl16" value="/balla/singleinput/${planid}" />
                <form:form  action="${saveUrl16}" method="get">
					<input type="submit" value="月資料">        
					</form:form></td>
					<td><a href="#">年資料</a></td>
					<td><a href="#">綜合性資料</a></td> 
                <td><a href="#">匯入其他</a></td>      
         </tr>         
    </table>
     <br>
     <hr>
<c:url var="saveUrl0" value="/balla/ballframe" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回水晶球">        
</form:form>
</body>
</html>