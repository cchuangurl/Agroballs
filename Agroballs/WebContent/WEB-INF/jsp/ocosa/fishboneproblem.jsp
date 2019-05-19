<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
fieldset {
	background-image:url("http://localhost:8080/Agroballs/staticfiles/20181119fishboneproblem.png");
	 background-repeat: no-repeat;
	 background-size: contain; 
	 height: 700px;
  	 width: 1200px;
	 border:0px;
	 padding:0px;
	 margin:0px;
	 border-radius:10px;
	 z-index:-3
	 }
	
#goal {
	position: absolute;
  	top: 420px;
  	left:100px;
	z-index:3
	}
#csf1 {
	position: absolute;
  	top: 200px;
  	left:250px;
	z-index:3
	}	
#csf2 {
	position: absolute;
  	top: 180px;
  	left:500px;
	z-index:3
	}
#csf3 {
	position: absolute;
  	top: 200px;
  	left:750px;
	z-index:3
	}
#csf4 {
	position: absolute;
  	top: 460px;
  	left:250px;
	z-index:3
	}	
#csf5 {
	position: absolute;
  	top: 500px;
  	left:500px;
	z-index:3
	}
#csf6 {
	position: absolute;
  	top: 460px;
  	left:750px;
	z-index:3
	}
</style>
<script>
function drawgraph(){
	drawgoal();
	drawbone();
}
function drawgoal(){
	var canvasgoal=document.getElementById("goal");
	var contextgoal=goal.getContext("2d");
	contextgoal.font="20px 標楷體";
	contextgoal.fillStyle="blue";
	contextgoal.textBaseline ="top";
	contextgoal.wrapText("${object}",6,20,150,40);	
}
function drawbone(){
	var canvasboneur=document.getElementById("csf1");
	var contextboneur=csf1.getContext("2d");
	contextboneur.textBaseline ="top";
	var canvasboneum=document.getElementById("csf2");
	var contextboneum=csf2.getContext("2d");
	contextboneum.textBaseline ="top";
	var canvasboneul=document.getElementById("csf3");
	var contextboneul=csf3.getContext("2d");
	contextboneul.textBaseline ="top";
	var canvasbonedr=document.getElementById("csf4");
	var contextbonedr=csf4.getContext("2d");
	contextbonedr.textBaseline ="top";
	var canvasbonedm=document.getElementById("csf5");
	var contextbonedm=csf5.getContext("2d");
	contextbonedm.textBaseline ="top";
	var canvasbonedl=document.getElementById("csf6");
	var contextbonedl=csf6.getContext("2d");
	contextbonedl.textBaseline ="top";
	var boneflag=0
	var j=0;
	/* var states=new Array(7);
	for(var state in ${boneumstate}){
	states[j]=state;
	j++;
	} */
	for (i=0;i<6;i++){
		if(i==0){
			contextboneur.font="14px 標楷體";
			contextboneur.fillStyle="gold";
			contextboneum.font="14px 標楷體";
			contextboneum.fillStyle="gold";
			contextboneul.font="14px 標楷體";
			contextboneul.fillStyle="gold";
			
		}else{
			contextboneur.font="12px 標楷體";
			contextboneur.fillStyle="brown";
			contextboneum.font="12px 標楷體";
			contextboneum.fillStyle="brown";
			contextboneur.font="12px 標楷體";
			contextboneur.fillStyle="brown";
		}		
		contextboneur.wrapText("${boneumstate[0]}",6+(6-i)*14,6+i*45,140);
		contextboneum.wrapText("${boneumstate[1]}",6+(6-i)*14,6+i*45,140);
		contextboneul.wrapText("${boneumstate[2]}",6+(6-i)*14,6+i*45,140);	
	}
	for (i=0;i<6;i++){
		if(i==6){
			contextbonedr.font="14px 標楷體";
			contextbonedr.fillStyle="gold";
			contextbonedm.font="14px 標楷體";
			contextbonedm.fillStyle="gold";
			contextbonedl.font="14px 標楷體";
			contextbonedl.fillStyle="gold";
			
		}else{
			contextbonedr.font="12px 標楷體";
			contextbonedr.fillStyle="brown";
			contextbonedm.font="12px 標楷體";
			contextbonedm.fillStyle="brown";
			contextbonedl.font="12px 標楷體";
			contextbonedl.fillStyle="brown";
		}		
		contextbonedr.wrapText("${boneumstate[0]}",6+i*14,6+i*45,140);
		contextbonedm.wrapText("${boneumstate[1]}",6+i*14,6+i*45,140);
		contextbonedl.wrapText("${boneumstate[2]}",6+i*14,6+i*45,140);	
	}
	
	
	
	
	
	
	/* var img=new Image();
	img.onload=function(){
		contextgoal.drawImage(this,8,10,38,390);
	}
	img.src=imgsrc; */
}






//以下API取自掃文資訊byzhangxinxu from http://www.zhangxinxu.com/wordpress/?p=7362
CanvasRenderingContext2D.prototype.wrapText = function (text, x, y, maxWidth, lineHeight) {
    if (typeof text != 'string' || typeof x != 'number' || typeof y != 'number') {
        return;
    }
    
    var context = this;
    var canvas = context.canvas;
    
    if (typeof maxWidth == 'undefined') {
        maxWidth = (canvas && canvas.width) || 300;
    }
    if (typeof lineHeight == 'undefined') {
        lineHeight = (canvas && parseInt(window.getComputedStyle(canvas).lineHeight)) || parseInt(window.getComputedStyle(document.body).lineHeight);
    }
    
    // 字符分隔為數組
    var arrText = text.split('');
    var line = '';
    
    for (var n = 0; n < arrText.length; n++) {
        var testLine = line + arrText[n];
        var metrics = context.measureText(testLine);
        var testWidth = metrics.width;
        if (testWidth > maxWidth && n > 0) {
            context.fillText(line, x, y);
            line = arrText[n];
            y += lineHeight;
        } else {
            line = testLine;
        }
    }
    context.fillText(line, x, y);
}
</script>
<title>問題分析魚骨圖</title>
</head>
<body onload="drawgraph();">
<table class="header">
<tr>
<td>
本頁狀態說明:${statusreport}
</td>
<td width="400px">
<td>
<td>
<c:url var="displaymenuUrl" value="/ocosa/displaymenu/${planid}" />
<form:form  action="${displaymenuUrl}" method="get">
<input type="submit" value="回到管理書圖清單"/>        
</form:form>
</td>
<td>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />        
</form:form>
</td>
<td>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</td>
</tr>
</table>
   <h1><font color="brown">${content0.planname}問題分析魚骨圖</font></h1>
   <br>
<fieldset id="base">
<div id="upleftbone" class="bigbone">
<canvas id="csf1" width="360px" height="240px"></canvas>
</div>
<div id="upmiddlebone" class="bigbone">
<canvas id="csf2" width="300px" height="240px"></canvas>
</div>
<div id="uprightbone" class="bigbone">
<canvas id="csf3" width="300px" height="240px"></canvas>
</div>
<div id="mainbone">
<canvas id="goal" width="150px" height="80px"></canvas>
</div>
<div id="downleftbone" class="bigbone">
<canvas id="csf4" width="300px" height="240px"></canvas>
</div>
<div id="downmiddlebone" class="bigbone">
<canvas id="csf5" width="300px" height="240px"></canvas>
</div>
<div id="downrightbone" class="bigbone">
<canvas id="csf6" width="300px" height="240px"></canvas>
</div>
</fieldset>
<br>
<table class="footer">
<tr>
<td>
<c:url var="displaymenuUrl" value="/ocosa/displaymenu/${planid}" />
<form:form  action="${displaymenuUrl}" method="get">
<input type="submit" value="回到管理書圖清單"/>        
</form:form> 
</td>
<td>
<c:url var="planmanageUrl" value="/ocosa/backtoplanlist/${userid}" />
<form:form  action="${planmanageUrl}" method="get">
<input type="submit" value="回計畫清單頁" />
</form:form>
</td>
<td>
<c:url var="saveUrl0" value="/ocosa/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</td>
</tr>
</table>
</body>
</html>