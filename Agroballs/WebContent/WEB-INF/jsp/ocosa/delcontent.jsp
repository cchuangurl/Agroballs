<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>�R���T�{�e��</title>
</head>
<body>
<table class="header">
<tr>
<td>
�������A����:${statusreport}
</td>
<td width="400px">
<td>
<td>
<c:url var="showcontentUrl" value="/ocosa/showcontent/${planid}" />
<form:form  action="${showcontentUrl}" method="get">					
<input type="submit" value="����L�p�e���e">   
</form:form> 
</td>
<td>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="�^�p�e�M�歶" />        
</form:form>
</td>
<td>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="�^����">        
</form:form>
</td>
</tr>
</table>

 <table border="1">
        <tr>
            <th>���e���A</th>
            <th>���e</th>
            <th>���e�s��</th>
            <th>�u����</th>
            <th>�W�h�X</th>
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
					<input type="submit" value="�T�w�R�����C���"/>    
					</form:form>
				</td>					           
            </tr>       
    </table>
    <br>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="�^�p�e�M�歶" />        
</form:form>
<br>
<hr>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="�^����">        
</form:form>
</body>
</html>
</body>
</html>