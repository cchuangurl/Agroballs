<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>專案基本資料</title>
</head>
<body>
專案代號：${plan.plancode}
<c:url var="saveinfoUrl" value="/ocosa/saveinfo/${plan.id}" />
<form:form modelAttribute="contentAttribute" action="${saveinfoUrl}" method="post">
請輸入專案中文名稱：<input type="text" name="planname" style="width:40%" /><br>
專案要達成的目的：
<input type="text" name ="verb" width="100px" />
<input type="text" name="state" style="width:70%" /><br>
<input type="hidden" name="plancode" value="${plan.plancode}" />
<input type="hidden" name="supercode" value="5" />
<input type="hidden" name="statetype" value="obj" />
<input type="hidden" name="statecode" value="3" />
<input type="hidden" name="stateprior" value="5" />
<input type="hidden" name="statecheck" value="0" />
<input type="hidden" name="uppercode" value="0" />
<br>
<input type="submit" value="送出基本資料" />
</form:form>
<br>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />        
</form:form>
<br>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<hr>
<input type="submit" value="回首頁" />        
</form:form>
</body>
</html>