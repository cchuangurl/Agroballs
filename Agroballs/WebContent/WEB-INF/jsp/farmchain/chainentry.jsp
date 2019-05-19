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
 	background-image:url("../staticfiles/20181114basewhite11.png");
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
<title>農業區塊鏈各種操作之連結介面</title>
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
<table>
<caption><h2>農業區塊鏈各種操作</h2></caption>
<tr height="90px">
<td width="400px">
<!-- 
<a href="farmchain/nodesevrvice">連接節點</a>
-->  
成功連接之節點:<font color="red">  ${statusreport}  </font>  
</td>
<td width="400px">
<c:url var="blockdealUrl" value="/farmchain/blockdeal" />
                <form:form  action="${blockdealUrl}" method="post">
                <input type="submit" value="區塊訊息及取出內容" />    
				</form:form>
				, 包括:<br>
查詢總區塊數; 查詢指定區塊內容; <br>
取出已寫入區塊之交易內容
</td>
</tr>
<tr height="90px">
<td>
<c:url var="listaccountUrl" value="/farmchain/listaccount" />
                <form:form  action="${listaccountUrl}" method="post">
                <input type="submit" value="帳戶處理" />    
				</form:form>, 包括:<br>
列出節點全部帳戶;  建立新帳戶;<br>
查詢指定帳戶餘額
</td>
<td>
<a href="/contractsevrvice">智能合約處理, 包括: </a><br>
準備燃料;<br>
布署合約;執行合約;執行合約的一條
</td>

</tr>
<tr height="90px">
<td>
<a href="/tradesevrvice">交易處理, 包括: </a><br>
準備交易燃料;<br>
發送交易
</td>
<td>
<a href="farmchain/minersevrvice">挖礦控制, 包括: </a><br>
啟動挖動; <br>
停止挖礦; 狀態查詢
</td>

</tr>
</table>
</fieldset>

</body>
</html>