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
<title>�A�~�϶���U�ؾާ@���s������</title>
</head>
<body>
<br>
<div>
<table>
<tr>
<td>
<img src="../staticfiles/20181110atrilogo.png" alt="�A�~��ެ�s�| " />
</td>
<td>
<img src="../staticfiles/20181112aprctemplogo.png" width="200px" height="45px" alt="�A�~�F����s���� "  />
</td>
</table>
</div>
<fieldset>
<table>
<caption><h2>�A�~�϶���U�ؾާ@</h2></caption>
<tr height="90px">
<td width="400px">
<!-- 
<a href="farmchain/nodesevrvice">�s���`�I</a>
-->  
���\�s�����`�I:<font color="red">  ${statusreport}  </font>  
</td>
<td width="400px">
<c:url var="blockdealUrl" value="/farmchain/blockdeal" />
                <form:form  action="${blockdealUrl}" method="post">
                <input type="submit" value="�϶��T���Ψ��X���e" />    
				</form:form>
				, �]�A:<br>
�d���`�϶���; �d�߫��w�϶����e; <br>
���X�w�g�J�϶���������e
</td>
</tr>
<tr height="90px">
<td>
<c:url var="listaccountUrl" value="/farmchain/listaccount" />
                <form:form  action="${listaccountUrl}" method="post">
                <input type="submit" value="�b��B�z" />    
				</form:form>, �]�A:<br>
�C�X�`�I�����b��;  �إ߷s�b��;<br>
�d�߫��w�b��l�B
</td>
<td>
<a href="/contractsevrvice">����X���B�z, �]�A: </a><br>
�ǳƿU��;<br>
���p�X��;����X��;����X�����@��
</td>

</tr>
<tr height="90px">
<td>
<a href="/tradesevrvice">����B�z, �]�A: </a><br>
�ǳƥ���U��;<br>
�o�e���
</td>
<td>
<a href="farmchain/minersevrvice">���q����, �]�A: </a><br>
�Ұʫ���; <br>
������q; ���A�d��
</td>

</tr>
</table>
</fieldset>

</body>
</html>