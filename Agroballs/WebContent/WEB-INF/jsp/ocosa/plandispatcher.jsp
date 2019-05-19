<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OCOSA專案處理選項</title>
</head>
<body>
<h4>(新使用者建議先參考簡易指南)
<input type="button" value="簡易指南" onclick='location="/html/instruction.html"' class=button>
</h4>
<hr>

<h3>新建一個計畫</h3>
<form action="addplan" method="get">
<input type="submit" value="確認">
</form>
<br>
<hr>
<table>
<td width="25%">
<h3>若要管理計畫， 請按下鈕:</h3>
<form action="listplan" method="post">
<!--
計畫代號(請選擇)：
<select name="plancode">
        <c:forEach var="plan" items="${planList }" >       
        <option  value="${plan.planname}">${plan.planname}</option>
        </c:forEach> 
        </select>
        <br>
-->
<input type="submit" value="管理計畫">        
</form>

</td>
<td width="25%">
<h3>若要檢視計畫， 請按下鈕:</h3>
<form action="list" method="get">
計畫代號<br>(須為已建立之計畫)：<br>
<input type=text name="planname" value="" style="width:60%"><br>
<input type="submit" value="檢視計畫">
</form>
</td>
<td width="25%">
<h3>若要複製計畫， 請按下鈕:</h3>
<form action="copyplan.jsp" method="post">
被複製計畫代號<br>(須為已建立之計畫)：<br>
<input type=text name="oldname" value="" style="width:60%"><br>
新計畫代號<br>(須為已建立之計畫)：<br>
<input type=text name="planname" value="" style="width:60%"><br>
<input type="submit" value="複製計畫">
</form>
</td>
<td width="25%">
<h3>若要刪除計畫， 請按下鈕:</h3>
<form action="dropplan.jsp" method="post">
計畫代號<br>(須為已建立之計畫)：<br>
<input type=text name="planname" value="" style="width:60%"><br>
<input type="submit" value="刪除計畫">
</form>
</td>
</table>
</body>
</html>