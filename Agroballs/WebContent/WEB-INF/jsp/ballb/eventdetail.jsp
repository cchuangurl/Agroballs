<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>編輯或刪除單一事件</title>
</head>
<body>
<ul>
<li><h2>若要編輯，請修改原內容後，按確定修正鈕。</h2></li>
<li><h2>若要刪除，請按確定刪除鈕。</h2></li>
</ul>
    <c:url var="saveUrl1" value="/ballb/eventupdate/${eventx.id}" />
    <form:form modelAttribute="eventx" action="${saveUrl1}" method="POST">
        <table border="1">
        <tr>
            <th width=10%>欄位中文名稱</th>
            <th width=20%>欄位內容</th>
            <th width=60%>填寫說明</th>
           </tr>
            <tr>
                <td>ID:</td>
                <td><form:input path="id" readonly="true"/></td>
                <td></td>
            </tr>
            <tr>
                <td>資料年度:</td>
                <td><form:input path="a01year"/></td>
                <td>依左列格式修改</td>
              </tr>
          <tr>
                <td>資料有效期間:</td>
                <td><form:input path="a02timespan"/></td>
               <td>請填年數；若各年持續有效請填99；若為累積值填0</td>
            </tr>
            <tr>
                <td>資料英文名稱:</td>
                <td><form:input path="a03datumnameen"/></td>
                <td>依左列格式修改</td>
            </tr>
            <tr>
                <td>資料中文名稱:</td>
                <td><form:input path="a04datumnamech"/></td>
                <td>依左列格式修改</td>
            </tr>
            <tr>
            <td>資料值:</td>
                <td><form:input path="a05datum"/></td>
                <td>依左列格式修改</td>
            </tr>
            <tr>
                <td>資料單位:</td>
                <td><form:input path="a06datumunit"/></td>
                <td>依左列格式修改</td>
            </tr>
            <tr>
                <td>註解:</td>
                <td><form:input path="a07datumnote"/></td>
                <td>依左列格式修改</td>
            </tr>
            <tr>
                <td>資料層面:</td>
                <td><form:input path="a08dimension"/></td>
                <td>農業呈現結果：outcome； 農業產銷活動：activity； 農業生產因素：factor； 農業制度法規政策：policy; 農業基礎條：base； 當年經社條件：atmosphere； 外部結構因素：structure</td>
            </tr>
               <tr>
                <td>資料層面:</td>
                <td><form:input path="a09aspect"/></td>
                <td>農業行銷：marketing； 農業安全：safety； 典範農業：paradigm； 農村發展：rural; 生態：ecology； 農業科技：agro-tech； 環境保護：environment； 農業組織及制度：institution； 農業法規：legislation； 天候氣象：climate； 普世價值：universe； 社會因素：society； 經濟指標：economics; 政治及非農業制度法規：politics</td>
            </tr>
            
            <tr>
                <td>事件發生可能性:</td>
                <td><form:input path="a10possibility"/></td>
                <td>實際統計：statistic； 統計初估值：estimate； 政策方案或計畫：program； 預期目標：goal; 規劃中:planning； 預測值：prediction； 有可能：possible</td>
            </tr>
            <tr>
            <td>地理範圍:</td>
                <td><form:input path="a11areacover"/></td>
                <td>全球：worldwide； 區域或國際組織：trans-nation； 我國跟他國：inter-nation； 全國：nationwide; 跨縣市:region； 單縣市：county</td>
            </tr>
            <tr>
                <td>與農業關聯度:</td>
                <td><form:input path="a12relative"/></td>
                <td>強相關：strong； 高度相關：high； 中度相關：medium； 少許相關：low</td>
            </tr>
            <tr>
                <td>對農業影響面:</td>
                <td><form:input path="a13impactto1"/></td>
                <td>整體農業供給：agriculture-s； 作物供給：crop-s； 畜牧供給：livestock-s； 漁業供給：fishery-s; 林業供給:forest-s； 農業科技：agro-tech； 整體農業需求：agriculture-d； 作物需求：crop-d； 畜產需求：livestock-d； 漁產需求：fishery-d; 木材需求:wood-d； 農業休閒：agro-recreation</td>
            </tr>
            <tr>
                <td>影響方向:</td>
                <td><form:input path="a14impactsign1"/></td>
                <td>正向影響：positive； 中性：neutral； 負向影響：negative</td>
            </tr>
            <tr>
                <td>特別編碼欄:</td>
                <td><form:input path="a19special"/></td>
                <td>依左列格式修改</td>
            </tr>
            <tr>
                <td>資料來源:</td>
                <td><form:input path="a20source"/></td>
                <td>依左列格式修改</td>
           </table>
        <input type=hidden name="userid" value="${userid}"/>
						<input type=hidden name="dimension" value="${dimension}"/>
						<input type=hidden name="info" value="${info}"/>
                	<input type="submit" value="確定修正">
          	</form:form>
    <br>
     <c:url var="saveUrl3" value="/ballb/backtolist" />
						<form:form  action="${saveUrl3}" method="get">
						<input type=hidden name="userid" value="${userid}"/>
						<input type=hidden name="dimension" value="${dimension}"/>
						<input type=hidden name="info" value="${info}"/>
						<input type="submit" value="回事件清單">        
						</form:form>
	<br>
						<c:url var="saveUrl4" value="/ballb/eventdel/${eventx.id}" />
						<form:form  action="${saveUrl4}" method="get">
						<input type=hidden name="userid" value="${userid}"/>
						<input type=hidden name="dimension" value="${dimension}"/>
						<input type=hidden name="info" value="${info}"/>
						<input type="submit" value="確定刪除">        
						</form:form>						
    <hr>
<c:url var="saveUrl0" value="/ballb/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>