<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>資料輸入選單</title>
</head>
<body>
<header>
<c:url var="saveUrl1" value="/balla/ballframe" />
<form:form  action="${saveUrl1}" method="get">
<input type=hidden name="userid" value="${user.id}"/>
					<input type=hidden name="product" value="${product}"/>
					<input type=hidden name="info" value="${info}"/>
<input type="submit" value="回水晶球">        
</form:form>
<c:url var="saveUrl0" value="/balla/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</header>
<div id="maintable">
<h2>資料輸入選單</h2>
     <table border="1">
        <tr>
            <th>區分</th>
            <th>操作區</th>
            <th></th>
            <th></th>
            <th>備註</th>
        </tr>
        <tr>
                <td>方式一：</td>
                <td>單筆輸入</td>
                <td></td>
                <td>
                <c:url var="saveUrl13" value="/balla/singleinput/${user.id}" />
                <form:form  action="${saveUrl13}" method="get">
					<input type="submit" value="連到輸入畫面">        
					</form:form></td>					 
				   <td></td>                
         </tr>
         <tr>
                <td>方式二：</td>
                 <td>以資料名稱讀取網址JSON資料</td>
                 <td>請選取資料名稱：</td>
                 <td>
                 <form name="datasetform" id="datasetform" action="getbydataname" method="post">
   <select name="dataurl" size=8>
   <option value="http://data.coa.gov.tw/Service/OpenData/FromM/FarmTransData.aspx" selected>前1日農產品交易行情</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=061">每月盛產農產品產地</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=B82">東部地區時令水果產期資訊</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/PoultryTransBoiledChickenData.aspx">家禽交易行情(白肉雞/雞蛋)</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/PoultryTransLocalChickenData.aspx">家禽交易行情(土雞/紅羽土雞/黑羽土雞)</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/PoultryTransLocalRedChickenData.aspx">家禽交易行情(紅羽土雞)</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/PoultryTransLocalBlackChickenData.aspx">家禽交易行情(黑羽土雞)</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/PoultryTransGooseDailyPriceData.aspx">家禽交易行情(養鵝協會當日行情)</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/PoultryTransGooseWeeklyPriceData.aspx">家禽交易行情(養鵝協會近期鵝價)</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/PoultryTransGooseDuckData.aspx">家禽交易行情(肉鵝/番鴨/鴨蛋)</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/AnimalTransData.aspx">毛豬交易行情</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/SheepTransDataDetail.aspx">市場羊隻日市況資料</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/SheepTransData.aspx">市場羊隻日行情資料</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/FromM/TownCropData.aspx">農情調查</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=113">臺灣地區蔬菜生產概況</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=120">臺灣地區蔬菜生產概況-菇類</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=138">臺灣地區稻作種植、收穫面積及產量</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=134">臺灣地區雜糧生產概況</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=136">臺灣地區特用作物生產概況</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=135">臺灣地區果品生產概況</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=137">臺灣地區花卉生產概況</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=378">臺灣地區農產品生產量值</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225102040100">畜禽產品生產量值統計-家畜產值</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225104020100">家畜供應屠宰活體重</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225104010100">家畜供應屠宰頭數</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225104020100">家畜供應屠宰屠體重</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225102140100">畜禽產品生產量值統計-家禽產值</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225104040100">家禽供應屠宰隻數</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225104050100">家禽供應屠宰屠體重</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=C77">農業生產預測</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=244201070240&dimension_code=$QA01TOTAL&dimension_group_code_1=QA02">農產品進口貿易重量_CCC代碼</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=244201070240&dimension_code=$QA01TOTAL&dimension_group_code_1=QA03">農產品進口貿易重量_COA代碼</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=244201060240&dimension_code=$QA01TOTAL&dimension_group_code_1=QA03">農產品出口貿易重量_COA代碼</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/TransService.aspx?UnitId=rxGClMbwHDNX">滾動倉貯釋出量、庫存量</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=055">蔬果重要害蟲防疫旬報</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/EIR3010304.aspx">水稻疫情現況區</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=652">農產品產地價格(月平均價格)</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225102020100">家畜飼養頭數</option>
		<option value="http://data.coa.gov.tw/service/opendata/agrstatUnit.aspx?item_code=225102120100">家禽飼養隻數</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=279">臺閩地區牛飼養場數及在養頭數</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/DataFileService.aspx?UnitId=278">臺閩地區產乳牛頭數及產乳量值</option>
		<option value="http://data.coa.gov.tw/Service/OpenData/BeefPriceService.aspx">肥育乳公牛550公斤以上</option>
		<option value="http://opendata.epa.gov.tw/ws/Data/ATM00431/?$skip=0&$top=1000&format=json">有人氣象測站基本資料</option>
		<option value="http://opendata.epa.gov.tw/ws/Data/ATM00445/?$format=json">無人氣象測站基本資料</option>
		</select>
		<input type=hidden name="userid" value="${user.id}"/>
					<input type=hidden name="product" value="${product}"/>
					<input type=hidden name="info" value="${info}"/>
		<input type="submit" value="確認選項">
		</form>
		</td>
                <td>
                 </td>                          
         </tr>
         <tr>
                <td>方式三：</td>
               <td>以網址(url)讀取網址JSON資料</td>
               <td>請貼上網址：</td>
                <td>
                <form name="urljsonform" id="urljsonform">
                <input id="dataurl" type="text" width=20% name="dataurl"/>                
		<input type="submit" value="確認選項">
		</form>
		</td>
                <td>		
                 </td>                 
         </tr>
         <tr>
              <td>方式四：</td>
               <td>以網址下載檔案</td>
                 <td>請貼上網址：</td>
                 <td>
                 <form name="urldownloadform" id="urldownloadform">
                <input id="dataurl" type="text" width=20% name="dataurl"/>                
		<input type="submit" value="確認選項">
		</form>
		</td>
              <td></td>    
         </tr> 
         <tr>
         <td>方式五：</td>
         <td>從本機檔案讀取資料</td>
                <td>請選擇檔案:</td>
                <td>
                 <form name="urldownloadform" id="urldownloadform">
                <input id="myfile"  type="file"/>               
		<input type="submit" value="確認選項">
		</form>
		</td>
				   <td></td> 
         </tr>
         <tr>
         <td>方式六：</td>
         <td>自動串接</td>
                <td>依事先設定</td>
                <td></td>
				   <td><input type="submit" value="開始串接">
				   </td> 
         </tr>
         
         
                 
    </table>
    </div>
     <hr>
<footer>
<c:url var="saveUrl1" value="/balla/ballframe" />
<form:form  action="${saveUrl1}" method="get">
<input type=hidden name="userid" value="${user.id}"/>
					<input type=hidden name="product" value="${product}"/>
					<input type=hidden name="info" value="${info}"/>
<input type="submit" value="回水晶球">        
</form:form>

<c:url var="saveUrl0" value="/balla/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</footer>
</body>
</html>