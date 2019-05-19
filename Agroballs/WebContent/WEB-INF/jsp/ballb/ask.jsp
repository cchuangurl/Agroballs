<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>擬展望事項</title>
</head>
<body>
   <form action="/ballb/prepare" method="get">
        <table>
           <tr>
                <td>產品	:<select name="product" >
		<option value="">請選擇</option>
		<option value="banana">香蕉</option>
		<option value="cabage">甘藍</option>
		<option value="hog">毛豬</option>
		<option value="fish">吳郭魚</option>
		</select>
		</td>
            </tr>
            <tr>
                <td>詳細程度：<select name="info" >
			<option value="sign">燈號</option>
		<option value="index">指數</option>
		<option value="factors">因素清單</option>
		<option value="impact">因素分析</option>
		</select></td>
            </tr>
            <tr>
                <td>其他:</td>
                <td><input name="otherq"/></td>
            </tr>
        </table>
        <input type="hidden" name="user" value="${user}">
        <input type="submit" value="確定問題">
    </form>
    <br>
    <hr>
<c:url var="saveUrl0" value="/balla/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>