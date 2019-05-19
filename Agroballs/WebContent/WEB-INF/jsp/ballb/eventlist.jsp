<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Events List</title>
<style type="text/css">
th {
	background-color:#555;
	color: white;
	}
#pageindex {margin:10px 0}
#pageindex a{color:#555;}
.active{
	text-decoration:none;
	font-weight:bold
	}
</style>
</head>
<script src="../staticfiles/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
	var rowsPage=10;
	var totalRows=${eventlength};
	var numPages=Math.floor(totalRows/rowsPage);
	var mod=totalRows%rowsPage;
	if(mod>0) numPages++;
	$('#pageindex').append('<h3>顯示頁</h3>');
	for(i=0;i<numPages;i++){
		var pageNum=i+1;
		$('#pageindex').append('<a href="#" rel="'+i+'">'+pageNum+'</a>');
	}
	$('#eventpages tr').hide().slice(0,rowsPage).show();
	$('#pageindex a:first').addClass('active');
	$('#pageindex a').click(function(event){
		$('#pageindex a').removeClass('active');
		$(this).addClass('active');
		var currPage=$(this).attr('rel');
		var begin=currPage*rowsPage;
		var end=begin+rowsPage;
		$('#eventpages tr').hide().slice(begin,end).show();
		event.preventDefault();
		});
	});
</script>
<body>
    <h2>${statusreport}</h2>
    <hr>
    <c:url var="saveUrl2" value="/ballb/eventadd"/>
   		<form:form  action="${saveUrl2}" method="get">
				<input type=hidden name="userid" value="${userid}"/>
				<input type=hidden name="dimension" value="${dimension}"/>
				<input type=hidden name="info" value="${info}"/>
				<input type="submit" value="增加事件">        
			</form:form>
       <hr>
    <div class="eventslist">
    <table border="1">
        <tr>
          <th></th>
          <th></th>
            <th>年度</th>
            <th>持續</th>
            <th>資料英文名稱</th>
            <th>資料中文名稱</th>
            <th>資料值</th>
             <th>單位</th>
            <th>註解</th>
            <th>層面</th>
             <th>面向</th>
            <th>可能性</th>
            <th>地理範圍</th> 
            <th>關聯度</th>
            <th>影響面</th> 
            <th>方向</th>
            <th>保留欄</th>
            <th>來源</th>
        </tr>
        <tbody id="eventpages">
        <c:forEach var="eventx" items="${eventList}" >
            <tr>
            <!--
                <td><a href="show/${eventx.id}">單列</a></td>
                -->
                <td><c:url var="saveUrl3" value="/ballb/eventedit/${eventx.id}" />
							<form:form  action="${saveUrl3}" method="get">
							<input type=hidden name="userid" value="${userid}"/>
							<input type=hidden name="dimension" value="${dimension}"/>
							<input type=hidden name="info" value="${info}"/>
							<input type="submit" value="編輯">        
							</form:form></td>
                <td><c:url var="saveUrl4" value="/ballb/eventedit/${eventx.id}" />
							<form:form  action="${saveUrl4}" method="get">
							<input type=hidden name="userid" value="${userid}"/>
							<input type=hidden name="dimension" value="${dimension}"/>
							<input type=hidden name="info" value="${info}"/>
							<input type="submit" value="刪除">        
							</form:form></td>
                <td width="32">${eventx.a01year}</td>
                <td width="16">${eventx.a02timespan}</td>
                <td width="120">${eventx.a03datumnameen }</td>
                <td width="120">${eventx.a04datumnamech}</td>
                	<td width="100">${eventx.a05datum}</td>
                	<td width="72">${eventx.a06datumunit}</td>
                <td width="80">${eventx.a07datumnote}</td>                
                <td width="96">${eventx.a08dimension}</td>
                <td width="96">${eventx.a09aspect}</td>                
                <td width="80">${eventx.a10possibility}</td>
                	<td width="96">${eventx.a11areacover}</td>
                	<td width="48">${eventx.a12relative}</td>
                <td width="120">${eventx.a13impactto1}</td>
                <td width="32">${eventx.a14impactsign1}</td>
                <td width="48">${eventx.a19special}</td>
                	<td width="60">${eventx.a20source}</td>         
                </tr>
            </tbody>
        </c:forEach>
    </table>
    <div id="pageindex"></div>
    </div>    
    <br>
    <hr>
    <c:url var="saveUrl1" value="/ballb/ask" />
<form:form  action="${saveUrl1}" method="get">
<input type=hidden name="userid" value="${userid}"/>
<input type="submit" value="回水晶球">        
</form:form>
<c:url var="saveUrl0" value="/ballb/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>