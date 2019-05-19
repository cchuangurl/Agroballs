<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<style type="text/css">
body {
  background-color: #d6d6d3;
  height: 100vh;
  width: 100vw;
  display: flex;
     flex-direction:column;
	 justify-content: flex-start;
     align-items:center;
  	margin: 0;
}

fieldset {
 	background-image:url("../staticfiles/20181114baseyellow11.png");
	 background-repeat: no-repeat;
	 background-size: contain; 
	 height: 600px;
  	 width: 900px;
	 border:0px;
	 padding:0px;
	 margin:0px;
	 border-radius:10px;
	 /* display: flex;
	 justify-content: flex-start;	
	 	align-items:center;	  */	
	 }
table {
	margin-left:70px;
}
	 
</style>
<title>農業區塊鏈帳戶各種操作之連結介面</title>
</head>
<body>
<br>
<div>
<table>
<tr>
<td>
<img src="../staticfiles/20181110atrilogo.png" alt="農業科技研究院 " />
</td>
<td>
<img src="../staticfiles/20181112aprctemplogo.png" width="200px" height="45px" alt="農業政策研究中心 "  />
</td>
</table>
</div>
<fieldset>
成功連接之節點:<font color="red">${statusreport}</font>
<table border="1">
<caption><h2>農業區塊鏈帳戶各種操作</h2></caption> 
        <tr>
            <th>個數  ${accounthash}</th>
            <th width="500px">帳號16進位碼</th>
            <th></th>
            <th></th>
            </tr>
        <c:forEach var="accountID" items="${accountList }" >
            <tr>
                <td><li></td>
                <td>${accountID}</td>
                <td>
                <c:url var="getbalanceUrl" value="/farmchain/getbalance${accountID}" />
                <form:form  action="${getbalanceUrl}" method="post">
                <input type="submit" value="帳戶餘額" />    
				</form:form>
                </td>
                <td>
                <c:url var="changpasswordUrl" value="/farmchain/changpassword/${accountID}" />
                <form:form  action="${changpasswordUrl}" method="post">
                	<input type="submit" value="修改密碼" />    
					</form:form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <hr>
<div>
<table>
<tr>
<td>
<c:url var="addaccountUrl" value="/farmchain/addaccount/${content.id}" />
                <form:form  action="${addaccountUrl}" method="post">
                	<input type="submit" value="建立新帳號" />    
					</form:form>
</td>
<td>
<c:url var="saveUrl1" value="/farmchain/start" />
<form:form  action="${saveUrl1}" method="get">
<input type="submit" value="回前頁">        
</form:form>
</td>
</table>
</div>
</fieldset>

</body>
</html>