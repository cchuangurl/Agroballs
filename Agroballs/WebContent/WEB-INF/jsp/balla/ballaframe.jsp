<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>農產品供需水晶球</title>
<style type="text/css">
header {position:absolute;
	top:1%;
	height:7%;
	width:99%;
	text-align:center;
	font-size:28pt;
	font-family:標楷體;
	color:red;
	background-color:skyblue
}
header span{
color:black
}

div#div1 {position:absolute;
	left:30%;
	top:10%;
	width:80%;
	height:80%;
	z-index:1
	}
div#div2 {
position:absolute;
	left:35%;
	top:50%;
	z-index:3
}
div#div3 {
position:absolute;
	left:10%;
	top:15%;
	z-index:0
}
area {
cursor:pointer;
}	
aside#leftaside {
	position:absolute;
	top:10%;
	left:1%;
	width:8%;
	height:85%;
	float:left;
	color:white;
	background-color:purple
	}
aside#rightaside {
	position:absolute;
	left:91%;
	top:10%;
	width:8%;
	height:85%;
	float:right;
	background-color:pink;
	z-index:2
	}
footer{position:absolute;
	top:95%;
	width:99%;
	background-color:lightgreen}
aside span {
	color:yellow;
	font-size:24pt;
	font-weight:bolder
	}
</style>
<script src="../staticfiles/datetransor.js"></script>
<script src="../staticfiles/jquery-3.3.1.min.js"></script>
<script>
	var days;
	var imgsrc;
	var selectinfo;
	var dttoday=new Date();
	var nextdt=new Date();
	var nextdtyear;//展望日的年份
	var nextdtmonth; //展望日的月份
	var nextdtdate//展望日的日期
	var nextdtday;//展望日是星期幾（數字）
	var lY; //展望日的農曆年
	var lM; //展望日的農曆月
	var lD; //展望日的農曆日
	var lL; //展望日的農曆是否閏月
	var foreseedate; //展望年月日的國鷅曆顯示字串
	var lunardate;//展望年月日的國鷅曆顯示字串
	var textcolor, textshow;
	var fillcontext=[];
    var filldata=[];
    
    
function material1(){
	days=1;
	imgsrc="../staticfiles/logo1.jpg";
	contents();
	/*
	var areas=document.getElementsByTagName("area");
	var areaid=areas[2].getAttribute("id");
	switch(areaid){
	case "areaday1": days=1;break;
	case "areaday3": days=3;break;
	case "areaday7": days=7;break;
	case "areaday10": days=10;break;
	case "areaday14": days=14;break;
	case "areaday21": days=21;break;
	case "areaday28": days=28;break;
	case "areaday35": days=35;break;
	*/	
	}
	function material3(){
		days=3;
		imgsrc="../staticfiles/logo2.jpg";
		contents();
	}
	function material7(){
		days=7;
		imgsrc="../staticfiles/logo3.jpg";
		contents();
	}
	function material10(){
		days=10;
		imgsrc="../staticfiles/logo4.jpg";
		contents();
	}function material14(){
		days=14;
		imgsrc="../staticfiles/logo5.jpg";
		contents();
	}function material21(){
		days=21;
		imgsrc="../staticfiles/logo6.jpg";
		contents();
	}function material28(){
		days=28;
		imgsrc="../staticfiles/logo7.jpg";
		contents();
	}function material35(){
		days=35;
		imgsrc="../staticfiles/logo8.jpg";
		contents();
	}
function contents(){
	var ran=Math.random();	
	if(ran<0.15){
		textcolor="orange";
		textshow="供不應求";
	}else if(ran>0.85){
		textcolor="red";
		textshow="供過於求";
	}else {
	textcolor="green";
	textshow="供需相當";
	}
	nextdt.setTime(dttoday.getTime()+days*24*60*60*1000);
	nextdtyear=nextdt.getFullYear() //展望日的年份
	nextdtmonth=nextdt.getMonth()+1 //展望日的月份
	nextdtdate=nextdt.getDate() //展望日的日期
	var cld=new calendar(nextdtyear,nextdtmonth-1);
	nextdtday=((nextdtdate-1)+cld.firstWeek)%7 //展望日是星期幾（數字）
	lDObj = new Lunar(nextdt);     //農曆換算
    lY    = lDObj.year;           //展望日的農曆年
    lM    = lDObj.month;          //展望日的農曆月
    lD    = lDObj.day;            //展望日的農曆日
    lL    = lDObj.isLeap;         //展望日的農曆是否閏月        
    filldata[0]=cld[nextdtdate-1].solarFestival; ////展望日的國曆節日
   // var lcld=new calendar(nextdtyear,lM-1);
    filldata[2]=cld[nextdtdate-1].lunarFestival; ////展望日的農曆節日
    filldata[1]=cld[nextdtdate-1].solarTerms; ////展望日的節氣
    if(nextdtday==1)filldata[3]="批發市場休市日";
    else if(nextdtday==0)filldata[3]="批發市場休市前1日";
    else if(nextdtday==2)filldata[3]="批發市場休市隔天";
    else filldata[3]="";
	foreseedate=nextdtyear+"年"+nextdtmonth+"月"+nextdtdate+"日  星期"+nStr1[nextdtday];
	lunardate="農曆"+lM+"月"+lD+"日";
	var j=0;
	fillcontext.length=0;
	for(var i=0;i<filldata.length;i++){
		if(filldata[i].length>0){
			fillcontext[j]=filldata[i];
			j=j+1
		}
		}
	if(selectinfo=="factors")
		drawgraph2();
	else
	drawgraph();
}
	function drawgraph(){
		var canvus0=document.getElementById("dandssign");
		var context0=dandssign.getContext("2d");
		context0.font="italic 26px DFKai-sb";
		context0.fillStyle=textcolor;
		context0.fillText(days+"天後，即",30,30);
		context0.fillText(foreseedate,30,60);
		context0.fillText(lunardate+"星期"+nStr1[nextdtday],30,90);
		context0.fillText(textshow,30,120);
		var img=new Image();
		img.onload=function(){
		context0.drawImage(this,50,130,240,160);
		}
		img.src=imgsrc;
		}
	function drawgraph2(){
		var canvus0=document.getElementById("dandssign");
		var canvus1=document.getElementById("dandmsg1");
		var context0=dandssign.getContext("2d");
		var context1=dandmsg1.getContext("2d");		
      context0.font="italic 26px DFKai-sb";
		//context1.Baseline="top";
		//context1.Align="Center";
		context0.fillStyle=textcolor;
		context0.fillText(days+"天後，即",30,30);
		context0.fillText(foreseedate,30,60);
		context0.fillText(lunardate+"星期"+nStr1[nextdtday],30,90);
		context0.fillText(textshow,30,120);
		var img=new Image();
		img.onload=function(){
		context0.drawImage(this,50,130,240,160);
		}
		img.src=imgsrc;
		context1.font="italic 26px DFKai-sb";
		context1.fillText("星期"+nStr1[nextdtday],10,30);
		for(i=0;i<fillcontext.length;i++){
			hori=30+(i+1)*30;	
			context1.fillText(fillcontext[i],10,hori);	
		}
		}
	
	function clearmsg(){
		var canvus0=document.getElementById("dandssign");
		var canvus1=document.getElementById("dandmsg1");
		var context0=dandssign.getContext("2d");
		var context1=dandmsg1.getContext("2d");
		context0.clearRect(0,0,350,250);
		context1.clearRect(0,0,240,360);
	}
</script>
</head>
<body>
<header>
<span>${user.realname}君  歡迎體驗</span>  農產品供需水晶球
</header>
<hr>
<aside id="rightaside">
<br>
目前展望的產品 :<span>${product}</span>
<br>
<br>
還要展望別的產品 :<br> 
<select name="product" >
   <option value="">請選擇</option>
			<option value="banana">大蒜</option>
		<option value="cabage">洋蔥</option>
		<option value="hog">毛豬</option>
		<option value="fish">稻米</option>
		<option value="fish">香蕉</option>
		</select>
    </aside>
    <div id="div1"> 
    <img src="../staticfiles/crystlball.gif" width="600" height="600" alt="(這裡應該是水晶球圖)" usemap="#corona"/>
     <map name="corona">
     <area id="areaday35" shape="poly" coords="440,350,590,350,590,590,400,590" onmouseover="material35()" onmouseout="clearmsg()" alt="未來第35天">
     <area id="areaday28" shape="poly" coords="400,180,590,60,590,350,440,350" onmouseover="material28()" onmouseout="clearmsg()" alt="未來第28天">
     <area id="areaday21" shape="poly" coords="360,10,590,10,590,60,400,180,330,120" onmouseover="material21()" onmouseout="clearmsg()" alt="未來第21天">
     <area id="areaday14" shape="poly" coords="300,10,360,10,330,120,300,100" onmouseover="material14()" onmouseout="clearmsg()" alt="未來第14天"> 
     <area id="areaday10" shape="poly" coords="240,10,300,10,300,100,270,120" onmouseover="material10()" onmouseout="clearmsg()" alt="未來第10天">
     <area id="areaday7" shape="poly" coords="10,10,240,10,270,120,200,180,10,60" onmouseover="material7()" onmouseout="clearmsg()" alt="未來第7天">
     <area id="areaday3" shape="poly" coords="10,60,200,180,160,350,10,350" onmouseover="material3()" onmouseout="clearmsg()" alt="未來第3天">
     <area id="areaday1" shape="poly" coords="10,350,160,350,200,590,10,590" onmouseover="material1()" onmouseout="clearmsg()" alt="明天">
     </map>
     </div>
     <div id="div2">
     <canvas id="dandssign" width="350" height="250"></canvas>
       </div>
        <div id="div3">
     <canvas id="dandmsg1" width="240" height="360"></canvas>
       </div>  
    <aside id="leftaside">
   <br>
 目前看的是：<span id="infospan">${info}</span>
   <br>
   <br>若要改變
   詳細程度：<br>
   <form name="infoform" id="infoform">
   <select name="info" >
   <option value="">請選擇</option>
			<option value="sign" selected>燈號及總結</option>
		<option value="index">指數</option>
		<option value="factors">因素清單</option>
		<option value="impact">因素分析</option>
		</select>
		</form>
		<script>
		var infoform=document.getElementById("infoform");
	infoform.addEventListener("change",function(){
	selectinfo=document.forms["infoform"].info.value;
	//},false);
	var i=document.forms["infoform"].info.selectedIndex;
	switch(i){
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
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
             <table>
            <tr>
                <td><c:url var="saveUrl1" value="/balla/inputdispatcher" />
					<form:form  action="${saveUrl1}" method="get">
					<input type=hidden name="userid" value="${user.id}"/>
					<input type=hidden name="product" value="${product}"/>
					<input type=hidden name="info" value="${info}"/>
                <input type="submit" value="輸入資料"/>
                </form:form></td>
                <td></td>
            </tr>
             <tr>
                <td><input type="button" value="資料檢視修正"/></td>
                <td></td>
            </tr>
            <tr>
                <td><input type="button" value="後台管理"/></td>
                <td></td>
            </tr>
            <tr>
                <td>
                <c:url var="saveUrl1" value="/balla/start" />
					<form:form  action="${saveUrl1}" method="get">
                <input type="submit" value="結束展望"/>
                </form:form>
                </td>
                <td>
        </table>
    </aside>
 
 <footer>
<c:url var="saveUrl0" value="/balla/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</footer>
</body>
</html>