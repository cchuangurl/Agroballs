<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!--
	<link rel="styleball" href="/staticfiles/newball.css">	
	-->
	<!-- Optional JavaScript
    jQuery first, then Popper.js, then Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	-->
	<script src="../staticfiles/jquery-3.3.1.min.js"></script>
	<script src="../staticfiles/datetransor.js"></script>
<style type="text/css">
body {
  background-color: #d6d6d3;
  height: 100vh;
  width: 100vw;
  display: flex;
     justify-content: center;
     align-items: flex-start;
  margin: 0;
}

#messege {
	background-color:#BCD311;
	 background-repeat: no-repeat;
	 background-size: contain;
	 border:0px;
	 padding:0px;
	 margin:0px;
	 border-radius:10px;
	 }

#c1,#c2 {
  position: absolute;
  top: 0;
  left: 0;
  height: 600px;
  width: 600px;
  border-radius: 50%;
}

#c1 {
  z-index: -11;
}
#c2 {
  z-index: 40;
}

#div0000 {
  display: flex;
    flex-direction: column;
    align-items: center;
 }
#basemap {
	display: flex;
	flex-direction: column;
    align-items: center;   
	 z-index:30;	
}

img {
	position: absolute;
   	left:-100px;
	opacity:0;
	z-index:1000;
	}

#div000 {
	position: absolute;
  	top: 10px;
  	left:200px;
	z-index:10
	}
#div00 {
	position: absolute;
  	top: 50px;
  	left:180px;
	z-index:3
	}
#div0 {
	position: absolute;
  	top: 200px;
  	left:130px;
	z-index:30
	}
#div01 {
	position: absolute;
  	top: 180px;
  	left:20px;
	z-index:16
	}
.arealeft {
	font-size: 0px;
	cursor:url(../staticfiles/20180717handleft128.cur),pointer;
	}
.arearight {
	font-size: 0px;
	cursor:url(../staticfiles/20180717handright128.cur),pointer;
	}	
		
.snowglobe {
  height: 600px;
  width: 600px;
  border-radius: 50%;
  background-color: #dadee8;
  border: 2px solid #cad0de;
  z-index: 11;
}

.snowglobe:before {
  position: absolute;
  content: "";
  height: 500px;
  width: 500px;
  border-radius: 50%;
  top: 20px;
  left: 40px;
  background: #fff;
}

.snowglobe:after {
  position: absolute;
  content: "";
  height: 480px;
  width: 520px;
  border-radius: 50%;
  top: 38px;
  left:25px;
  background: #dadee8;
}

.base {
  position: relative;
  border-bottom: 100px solid #534f54;
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
  height: 0;
  width: 484px;
  margin-top: -120px;
  z-index: 13;
 
}

.base:after {
  position: absolute;
  content: "";
  top: 50px;
  left: -40px;
  width: 524px;
  height: 100px;
  border-radius: 250px / 50px;
  background: #534f54;
}

.baseTop {
  background-color: #fff;
  width: 484px;
  height: 80px;
  border-radius: 250px / 40px;
  margin-top: -145px;
  box-sizing: border-box;
  border-bottom: 16px solid #dadee8;
  z-index: 14;
  }

.baseShadow {
  position: absolute;
  background-color: #a1a6b1;
  width: 550px;
  height: 120px;
  border-radius: 260px / 60px;
  top: 540px;
  z-index: -40;
  }

.tree {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-bottom: 70px solid #8caba1;
  margin-top: 67px;
  margin-left: -80px;
  top: 50%;
  left: 50%;
   transform: translate(-50%, -50%);
}

.tree:after {
  position: absolute;
  content: "";
  width: 0;
  height: 0;
  border-right: 20px solid transparent;
  border-bottom: 70px solid #7e9990;
}

.tree4 {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 30px solid transparent;
  border-right: 30px solid transparent;
  border-bottom: 100px solid #516463;
  margin-top: 65px;
  margin-left: -50px;
  top: 50%;
  left: 50%;
   transform: translate(-50%, -50%);
}

.tree4:after {
  position: absolute;
  content: "";
  width: 0;
  height: 0;
  border-right: 30px solid transparent;
  border-bottom: 100px solid #5a706e;
}

.tree2 {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-right: 20px solid transparent;
  border-bottom: 70px solid #5a706e;
  margin-top: 67px;
  margin-left: 70px;
  top: 50%;
  left: 50%;
   transform: translate(-50%, -50%);
}

.tree2:after {
  position: absolute;
  content: "";
  width: 0;
  height: 0;
  border-right: 20px solid transparent;
  border-bottom: 70px solid #516463;
}

.tree3 {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 20px solid transparent;
  border-bottom: 80px solid #7e9990;
  margin-top: 69px;
  margin-left: -20px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.tree3:after {
  position: absolute;
  content: "";
  width: 0;
  height: 0;
  border-right: 20px solid transparent;
  border-bottom: 80px solid #8caba1;
}

.roof {
  position: absolute;
  width: 0;
  height: 0;
  border-left: 50px solid transparent;
  border-right: 50px solid transparent;
  border-bottom: 31.25px solid #ba616d;
  margin-top: 58px;
  margin-left: 30px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.cabin {
  position: absolute;
  background: #534f54;
  display: inline-block;
  height: 40px;
  margin-top: 93px;
  margin-left: 30px;
  width: 80px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.cabin:before {
  border-bottom: 25px solid #534f54;
  border-left: 40px solid transparent;
  border-right: 40px solid transparent;
  content: "";
  height: 0;
  left: 0;
  position: absolute;
  top: -25px;
  width: 0;
}
</style>
<script>
	var baseyear=${year};
	var i=0;	
	var showcontent=new Array(16);
	var showstyle=new Array(16);
	var r=new Array(16);
	<!--
	var showcontent;
	var showstyle;
	var yearcontent=new Array(16);
	var yearstyle=new Array(16);
	var dimcontent=new Array(11);
	var dimstyle=new Array(11);
	-->
	var years;
	var imgsrc;
	var content=new Array(5);
	var textstyle=new Array(5);
	var selectdimen;
	var selectyear;
	var selectinfo;	
	var contenttitle=new Array(5);
	var textstyle=new Array(5);
	var canvus00;
	var canvus0;
	var canvus2;
	var context00;
	var context0;
	var context2;
	var contenttitle0;
	var listlength;	
	
	$(document).ready(function(){
	for(t=0;t<16;t++){
		showcontent[t]=new Array(11);
		r[t]=new Array(11);
		for(q=0;q<11;q++){
			showcontent[t][q]=[];
		}
	}
	t=0
	<c:forEach items="${showcontent}" var="yearcontent" >
	q=0
	    <c:forEach items="${yearcontent}" var="dimcontent" >
	    r[t][q]=0;
		  	<c:forEach items="${dimcontent}" var="val1" >
		  	showcontent[t][q][r[t][q]]="${val1}";
		  	r[t][q]++;
        	</c:forEach>
        	q++;
         </c:forEach>
         t++;
  </c:forEach>
  for(t=0;t<16;t++){
		showstyle[t]=new Array(11);
		r[t]=new Array(11);
		for(q=0;q<11;q++){
			showstyle[t][q]=[];
		}
	}
	t=0
	<c:forEach items="${showstyle}" var="yearstyle" >
	q=0
	    <c:forEach items="${yearstyle}" var="dimstyle" >
	    r[t][q]=0
		  	<c:forEach items="${dimstyle}" var="val1" >
		  	showstyle[t][q][r[t][q]]=${val1};
		  	r[t][q]++;
      	</c:forEach>
      	q++;
       </c:forEach>
       t++;
</c:forEach>
	});
	function material00(){
	years=desideyears("ballarea00");
	imgsrc="../staticfiles/logob.jpg";
	content[0]=getcontent("ballarea00");
	sendtodraw();
	}
	
	function material01(){
		years=desideyears("ballarea01");
		imgsrc="../staticfiles/logo1.jpg";
		content[0]=getcontent("ballarea01");
		sendtodraw();
	}
	
	function material02(){
		years=desideyears("ballarea02");
		imgsrc="../staticfiles/logo2.jpg";
		content[0]=getcontent("ballarea02");
		sendtodraw();
	}
	
	function material03(){
		years=desideyears("ballarea03");
		imgsrc="../staticfiles/logo3.jpg";
		content[0]=getcontent("ballarea03");
		sendtodraw();
	}
	
	function material04(){
		years=desideyears("ballarea04");
		imgsrc="../staticfiles/logo4.jpg";
		content[0]=getcontent("ballarea04");
		sendtodraw();
	}
	
	function material05(){
		years=desideyears("ballarea05");
		imgsrc="../staticfiles/logo5.jpg";
		content[0]=getcontent("ballarea05");
		sendtodraw();
	}
	
	function material06(){
		years=desideyears("ballarea06");
		imgsrc="../staticfiles/logo6.jpg";
		content[0]=getcontent("ballarea06");
		sendtodraw();
	}
	
	function material07(){
		years=desideyears("ballarea07");
		imgsrc="../staticfiles/logo7.jpg";
		content[0]=getcontent("ballarea07");
		sendtodraw();
	}

	function desideyears(areaid){
	selectyear=document.forms["yearform"].datayear.value;
	//selectyear="2017";
	if(selectyear=="everyyear"){
	switch(areaid){
	case "ballarea01": years=1;break;
	case "ballarea02": years=2;break;
	case "ballarea03": years=3;break;
	case "ballarea04": years=8;break;
	case "ballarea05": years=10;break;
	case "ballarea06": years=13;break;
	case "ballarea07": years=15;break;
	default: years=0;
	}//E of switch
	}else	if(selectyear!=null){
		years=parseInt(selectyear)-baseyear;
		}
	else{
		years=3;
	}
	return years;
	}//E of desideyears()	
	
	function getcontent(areaid){
		for(lo=0;lo<5;lo++){
			content[lo]=[];
			textstyle[lo]=[];
			content[lo].length=0;
			textstyle[lo].length=0;
				}	
		if(selectyear=="everyyear"){
			contenttitle[0]="農業施政關鍵指標"
		switch(areaid){
		case "ballarea01": 
			content[0]=showcontent[1][0];
			textstyle[0]=showstyle[1][0];
			break;
		case "ballarea02": 
			content[0]=showcontent[2][0];
			textstyle[0]=showstyle[2][0];
			break;
		case "ballarea03": 
			content[0]=showcontent[3][0];
			textstyle[0]=showstyle[3][0];
			break;
		case "ballarea04": 
			content[0]=showcontent[8][0];
			textstyle[0]=showstyle[8][0];
			break;
		case "ballarea05": 
			content[0]=showcontent[10][0];
			textstyle[0]=showstyle[10][0];
			break;
		case "ballarea06": 
			content[0]=showcontent[12][0];
			textstyle[0]=showstyle[12][0];
			break;
		case "ballarea07": 
			content[0]=showcontent[15][0];
			textstyle[0]=showstyle[15][0];
			break;
		default: 
			content[0]=showcontent[15][0];
		textstyle[0]=showstyle[15][0];
		}
		}else{
			var yearindex=document.forms["yearform"].datayear.selectedIndex;
			//var yearindex=0;			
			switch(areaid){
			case "ballarea00": 
				content[0]=showcontent[years][0];
				contenttitle[0]="農業施政關鍵指標";
				textstyle[0]=showstyle[years][0];
				content[1]=showcontent[years][9];
				break;
			case "ballarea01": 
				content[0]=showcontent[years][1];
				contenttitle[0]="農業生產因素";
				textstyle[0]=showstyle[years][1];
				break;
			case "ballarea02": 
				content[0]=showcontent[years][2];
				contenttitle[0]="農業產銷活動";
				textstyle[0]=showstyle[years][2];
				break;
			case "ballarea03": 
				content[0]=showcontent[years][3];
				contenttitle[0]="農業制度法規及政策";
				textstyle[0]=showstyle[years][3];
				break;
			case "ballarea04": 
				content[0]=showcontent[years][4];
				contenttitle[0]="農業行銷";
				textstyle[0]=showstyle[years][4];
				break;
			case "ballarea05": 
				contenttitle[0]="農業安全";		 		
				/*
				
				*/			
					content[0]=showcontent[years][5];	
					textstyle[0]=showstyle[years][5];
				//}
				break;
			case "ballarea06": 
				content[0]=showcontent[years][6];
				contenttitle[0]="農業典範";
				textstyle[0]=showstyle[years][6];
				break;
			default: 
				content[0]=showcontent[years][7];
				contenttitle[0]="農村發展";
				textstyle[0]=showstyle[years][7];
				break;
		}//E of switch
		}//E of if
		return content[0];
	}//E of getcontent()

	function sendtodraw(){
	if(selectinfo=="factors"){
		drawgraph2();
	}
	else{	
		//drawgraph(years,textcolor,textshow,imgsrc);
		drawgraph();
	}
	}//E of senttodraw();
	function drawgraph(){
		canvus000=document.getElementById("outlooktitle");
		canvus00=document.getElementById("outlookimg");
		canvus0=document.getElementById("outlooksign");
		canvus01=document.getElementById("quadrant1");
		canvus02=document.getElementById("quadrant2");
		canvus03=document.getElementById("quadrant3");
		canvus04=document.getElementById("quadrant4");
		//canvus2=document.getElementById("outlookmsg2");
		context000=outlooktitle.getContext("2d");
		context00=outlookimg.getContext("2d");
		context0=outlooksign.getContext("2d");
		context01=quadrant1.getContext("2d");
		context02=quadrant2.getContext("2d");
		context03=quadrant3.getContext("2d");
		context04=quadrant4.getContext("2d");
		//context2=outlookmsg2.getContext("2d");
		//var dttoday=new Date();
		//var nextdtyear=dttoday.getFullYear()+years //展望日的年份
		var nextdtyear=baseyear+years;
		context000.font="italic 18px 標楷體";
		context000.fillStyle="brown";
		context000.fillText(nextdtyear+"年 ("+(years-1)+"年後) 展望",10,30);
		context00.font="italic 18px 標楷體";
		context0.font="italic 14px 標楷體";
		var img=new Image();
		img.onload=function(){
		context00.drawImage(this,10,0,230,130);
		}
		img.src=imgsrc;
		context00.fillStyle="blue";
		context00.fillText(contenttitle[0],20,150);
		if(content[0].length>12){
			listlength=12;
		}else{
			listlength=content[0].length;
		}
		
		for(i2=0;i2<listlength;i2++){
			hori=20+(i2)*20;
			switch(textstyle[0][i2]){
			case 1:context0.fillStyle="red";break;
			case 2:context0.fillStyle="purple";break;
			case 3:context0.fillStyle="orange";break;
			default:context0.fillStyle="gray";			
			} 
		context0.fillText(content[0][i2],0,hori);
		}
		
		context01.font="italic 14px 標楷體";
		context01.fillStyle="blue";
		context01.fillText("農業基礎生產環境",20,20);
		context01.font="italic 12px 標楷體";
		if(leapMonth(baseyear+years-1)>0){
			content[1].push('農曆閏'+leapMonth(baseyear+years-1)+'月的隔年');
			content[1]=content[1].concat(showcontent[years][8]);
			textstyle[1].push(1);
			textstyle[1]=textstyle[0].concat(showstyle[years][8]);
		}
		if(content[1].length>12){
			listlength=12;
		}else{
			listlength=content[1].length;
		}		
		for(i2=0;i2<listlength;i2++){
			hori=40+(i2)*16;
			switch(textstyle[1][i2]){
			case 1:context01.fillStyle="red";break;
			case 2:context01.fillStyle="purple";break;
			case 3:context01.fillStyle="orange";break;
			default:context01.fillStyle="gray";			
			} 
		context01.fillText(content[1][i2],0,hori);
		}
		
		context02.font="italic 14px 標楷體";
		context02.fillStyle="blue";
		context02.fillText("農業外部長期結構因素",20,20);
		context02.font="italic 12px 標楷體";
		if(showcontent[years][10].length>12){
			listlength=12;
		}else{
			listlength=showcontent[years][10].length;
		}		
		for(i2=0;i2<listlength;i2++){
			hori=40+(i2)*16;
			switch(showstyle[years][10][i2]){
			case 1:context02.fillStyle="red";break;
			case 2:context02.fillStyle="purple";break;
			case 3:context02.fillStyle="orange";break;
			default:context02.fillStyle="gray";			
			} 
		context02.fillText(showcontent[years][10][i2],0,hori);
		}
		
		context04.font="italic 14px 標楷體";
		context04.fillStyle="blue";
		context04.fillText("農業外部短期因素",20,20);
		context04.font="italic 12px 標楷體";
		if(showcontent[years][9].length>12){
			listlength=12;
		}else{
			listlength=showcontent[years][9].length;
		}		
		for(i2=0;i2<listlength;i2++){
			hori=40+(i2)*16;
			switch(showstyle[years][9][i2]){
			case 1:context04.fillStyle="red";break;
			case 2:context04.fillStyle="purple";break;
			case 3:context04.fillStyle="orange";break;
			default:context04.fillStyle="gray";			
			} 
		context04.fillText(showcontent[years][9][i2],0,hori);
		}
		}
	function drawgraph2(){
		canvus000=document.getElementById("outlooktitle");
		canvus00=document.getElementById("outlookimg");
		canvus0=document.getElementById("outlooksign");
		//canvus2=document.getElementById("outlookmsg2");
		context000=outlooktitle.getContext("2d");
		context00=outlookimg.getContext("2d");
		context0=outlooksign.getContext("2d");
		//context2=outlookmsg2.getContext("2d");
		//var dttoday=new Date();
		//var nextdtyear=dttoday.getFullYear()+years //展望日的年份
		var nextdtyear=baseyear+years;
		context000.font="italic 18px 標楷體";
		context000.fillStyle="brown";
		context000.fillText(nextdtyear+"年 ("+(years-1)+"年後) 展望",10,30);
		context00.font="italic 18px 標楷體";
		context0.font="italic 14px 標楷體";
		var img=new Image();
		img.onload=function(){
		context00.drawImage(this,30,0,250,130);
		}
		img.src=imgsrc;
		context00.fillStyle="blue";
		context00.fillText(contenttitle[0],20,150);
		if(content[0].length>12){
			listlength=12;
		}else{
			listlength=content[0].length;
		}
		
		for(i2=0;i2<listlength;i2++){
			hori=20+(i0)*20;
			switch(textstyle[0][i0]){
			case 1:context0.fillStyle="red";break;
			case 2:context0.fillStyle="orange";break;
			case 3:context0.fillStyle="purple";break;
			default:context0.fillStyle="gray";			
			} 
		context0.fillText(content[0][i0],0,hori);
		}
		for(i2=0;i2<content[2].length;i2++){
			hori=40+(i2)*20;
			switch(textstyle[2][i2]){
			case 1:context2.fillStyle="red";break;
			case 2:context2.fillStyle="orange";break;
			case 3:context2.fillStyle="purple";break;
			default:context2.fillStyle="gray";			
			} 
		context2.fillText(content[2][i2],0,hori);
		}
		}
	function clearmsg(){
		canvus000=document.getElementById("outlooktitle");
		canvus00=document.getElementById("outlookimg");
		canvus0=document.getElementById("outlooksign");
		canvus01=document.getElementById("quadrant1");
		canvus02=document.getElementById("quadrant2");
		canvus03=document.getElementById("quadrant3");
		canvus04=document.getElementById("quadrant4");
		//canvus2=document.getElementById("outlookmsg2");
		context000=outlooktitle.getContext("2d");
		context00=outlookimg.getContext("2d");
		context0=outlooksign.getContext("2d");
		context01=quadrant1.getContext("2d");
		context02=quadrant2.getContext("2d");
		context03=quadrant3.getContext("2d");
		context04=quadrant4.getContext("2d");
		//context2=outlookmsg2.getContext("2d");
		context000.clearRect(0,0,200,40);
		context00.clearRect(0,0,240,180);
		context0.clearRect(0,0,400,400);
		context01.clearRect(0,0,320,300);
		context02.clearRect(0,0,220,300);
		context03.clearRect(0,0,220,300);
		context04.clearRect(0,0,320,300);
		//context2.clearRect(0,0,240,360);
		}
	
</script>
    <title>農業展望水晶球</title>
  </head>
  <body>
    
  <div class="container">
  <div class="row">
  <div class="col-3">
  <span id="usernamespan">${user.realname}君  歡迎體驗</span>農業展望水晶球
  </div>
  <div class="col-5">
                  
            
  </div>
  <div class="col-4">
  <table>
  <tr>
  <td>
  <c:url var="saveUrl1" value="/ballb/inputdispatcher" />
					<form:form  action="${saveUrl1}" method="get">
					<input type=hidden name="userid" value="${user.id}"/>
					<input type=hidden name="dimension" value="${dimension}"/>
					<input type=hidden name="info" value="${info}"/>
                <h6><input type="submit" value="輸入資料"/></h6>
                </form:form>
                </td>
                <td>
                <c:url var="saveUrl2" value="/ballb/eventlist" />
					<form:form  action="${saveUrl2}" method="POST">
					<input type=hidden name="userid" value="${user.id}"/>
					<input type=hidden name="dimension" value="${dimension}"/>
					<input type=hidden name="info" value="${info}"/>
                <h6><input type="submit" value="檢視及修正資料"/></h6>
                </form:form>
                </td>
                <td>
  <c:url var="saveUrl3" value="/ballb/start" />
        <form:form  action="${saveUrl3}" method="get">
       <h6>
			<input type="submit" value="回首頁"> 
			</h6>			      
			</form:form>
			</td>
			<td>
	<c:url var="saveUrl4" value="/ballb/start" />
					<form:form  action="${saveUrl4}" method="get">
                 <h6><input type="submit" value="結束展望"/></h6>
                </form:form>
                </td>
                </tr>
         </table>	
    </div>
  </div>
  <div class="row">
  <div class="col-3">
  <div class="row">
   <div class="col-3  col-md-auto" id="leftaside">
 <div id="messege">
目前展望的年度 :<span id="yearspan">${year}</span>
<br>
還要展望別的年度(請選擇)：<br>
<form name="yearform" id="yearform">
<select name="datayear" >
  		<option value="2017" selected>2017</option>
		<option value="2018">2018</option>
		<option value="2019">2019</option>
		<option value="2020">2020</option>
		<option value="2025">2025</option>
		<option value="2027">2027</option>
		<option value="2030">2030</option>
		<option value="2032">2032</option>
		<option value="everyyear">現在及未來各年</option>
		</select>
		</form>
		<script>
		var yearform=document.getElementById("yearform");
	yearform.addEventListener("change",function(){
	selectyear=document.forms["yearform"].datayear.value;
	//},false);
	var yearindex=document.forms["yearform"].datayear.selectedIndex;
	switch(yearindex){
	case 0:
		$('#yearspan').text("2017");
		break;
	case 1:
		$('#yearspan').text("2018");
		break;
	case 2:
		$('#yearspan').text("2019");
		break;
	case 3:
		$('#yearspan').text("2020");
		break;
	case 4:
		$('#yearspan').text("2025");
		break;
	case 5:
		$('#yearspan').text("2027");
		break;
	case 6:
		$('#yearspan').text("2030");
		break;
	case 7:
		$('#yearspan').text("2032");
		break;	
	default:
		$('#yearspan').text("現在及未來各年");	
	}
	},false);
	</script>
	   <br>
 目前看的是：<span  id="infospan">${info}</span>
   <br>
 若要改變詳細程度：<br>
   <form name="infoform" id="infoform">
   <select name="info" >
   <option value="">請選擇</option>
			<option value="sign">總結</option>
		<option value="index">意象</option>
		<option value="factors">因素清單</option>
		<option value="impact">因素分析</option>
		</select>
		</form>
		<script>
		var infoform=document.getElementById("infoform");
	infoform.addEventListener("change",function(){
	selectinfo=document.forms["infoform"].info.value;
	//},false);
	var infoindex=document.forms["infoform"].info.selectedIndex;
	switch(infoindex){
	case 2:
		$('#infospan').text("指數");
		break;
	case 3:
		$('#infospan').text("因素清單");
		break;
	case 4:
		$('#infospan').text("因素分析");
		break;
	default:
		$('#infospan').text("燈號及總結");	
	}
	},false);
	</script>
</div>
 		
<!--
<br>
目前展望的層面 :<span id="dimenspan">${dimension}</span>
<br>
<br>
還要展望別的層面 :<br>
<form name="dimenform" id="dimenform">
<select name="dimension" >
   <option value="">請選擇</option>
			<option value="agriculture">農業三生</option>
		<option value="economic">整體經濟</option>
		<option value="politic">政治社會</option>
		<option value="environment">環境保育</option>
		</select>
		</form>
		<script>
		var dimenform=document.getElementById("dimenform");
	dimenform.addEventListener("change",function(){
	selectdimen=document.forms["dimenform"].dimension.value;
	//},false);
	var dimenindex=document.forms["dimenform"].dimension.selectedIndex;
	switch(dimenindex){
	case 2:
		$('#dimenspan').text("整體經濟");
		break;
	case 3:
		$('#dimenspan').text("政治社會");
		break;
	case 4:
		$('#dimenspan').text("環境保育");
		break;
	default:
		$('#dimenspan').text("農業三生");	
	}
	},false);
	</script>
	-->
      </div>
      <div class="w-100"></div>
      <div class="col-3  col-md-auto" id="div02">
     <canvas id="quadrant2" width="220" height="300"></canvas>
      </div>
      <div class="w-100"></div>
      <div class="col-3  col-md-auto" id="div03">
       <canvas id="quadrant3" width="220" height="300"></canvas>
      </div>
      </div>
      </div>
   <div class="col-6" id="div0000">      
   <canvas id="c1"></canvas>
  <canvas id="c2"></canvas>
 
    <div class="snowglobe">
     <div id="basemap">  
   <img src="../staticfiles/20180615basemap.png" width="600" height="600"  alt="(這裡應該是水晶球圖)" usemap="#corona"/>
  <map name="corona">
     <area id="ballarea07" class="arearight" shape="poly" coords="600,425,470,400,400,450,565,600" onmouseover="material07()" onmouseout="clearmsg()" alt="水晶球第8區">
     <area id="ballarea06" class="arearight" shape="poly" coords="520,200,600,175,600,425,470,400" onmouseover="material06()" onmouseout="clearmsg()" alt="水晶球第7區">
     <area id="ballarea05" class="arearight" shape="poly" coords="565,0,400,150,470,200,600,175" onmouseover="material05()" onmouseout="clearmsg()" alt="水晶球第6區">
     <area id="ballarea04" class="arearight" shape="poly" coords="300,70,300,0,565,0,400,150" onmouseover="material04()" onmouseout="clearmsg()" alt="水晶球第5區"> 
     <area id="ballarea03" class="arealeft" shape="poly" coords="35,0,150,150,300,70,300,0" onmouseover="material03()" onmouseout="clearmsg()" alt="水晶球第4區">
     <area id="ballarea02" class="arealeft" shape="poly" coords="80,200,0,175,35,0,150,150" onmouseover="material02()" onmouseout="clearmsg()" alt="水晶球第3區">
     <area id="ballarea01" class="arealeft" shape="poly" coords="0,425,80,400,80,200,0,175" onmouseover="material01()" onmouseout="clearmsg()" alt="水晶球第2區">
     <area id="ballarea00" class="arealeft" shape="poly" coords="0,425,80,400,150,450,35,600" onmouseover="material00()" onmouseout="clearmsg()" alt="水晶球第1區">
     </map>
     </div>
    <div id="div000">
     <canvas id="outlooktitle" width="200" height="40"></canvas>
       </div>
     <div id="div00">
     <canvas id="outlookimg" width="240" height="160"></canvas>
       </div>
     <div id="div0">
     <canvas id="outlooksign" width="400" height="360"></canvas>
       </div>     
     </div>  
  <!-- 
   <div class="highlight"></div>
   -->
  <div class="base"></div>
  <div class="baseTop"></div>
  <div class="baseShadow"></div>
  <!--
  <div class="tree"></div>
  <div class="tree2"></div>
  <div class="tree3"></div>
  <div class="tree4"></div>
  <div class="roof"></div>
  <div class="cabin"></div>
  -->
 
    </div>
    <div class="col-3">
    <div class="row">
      <div class="col-3 col-md-auto" id="asideright">
             </div>
      <div class="w-100"></div>
      <div class="col-3  col-md-auto" id="div01">
        <canvas id="quadrant1" width="320" height="300"></canvas>
      </div>
      <div class="w-100"></div>
      <div class="col-3  col-md-auto" id="div04">
      <canvas id="quadrant4" width="320" height="300"></canvas>
      </div>
    </div><!-- E of small row under right side col-3 -->
    </div><!-- E of right side col-3 under 2nd big row -->
    </div><!-- E of 2nd big row -->
    </div><!-- E of container -->
    </body>
</html>
