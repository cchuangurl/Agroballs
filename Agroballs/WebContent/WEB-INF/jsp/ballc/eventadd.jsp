<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增單一事件</title>
</head>
<body>
<h2>新增單一事件</h2>
    <c:url var="saveUrl1" value="/ballb/eventsave" />
    <form:form modelAttribute="newevent" action="${saveUrl1}" method="POST">
        <table border="1">
        <tr>
            <th width=10%>欄位中文名稱</th>
            <th width=30%>請填入欄位內容</th>
            <th width=20%>填寫說明</th>
           </tr>
           <%--  <tr>
                <td>ID:</td>
                <td><form:input path="id" readonly="true"/></td>
                <td></td>
            </tr> --%>
            <tr>
                <td>資料年度:</td>
                <td><form:input path="a01year"/></td>
                <td>4位數西元年</td>
              </tr>
          <tr>
                <td>資料有效期間:</td>
                <td><form:input path="a02timespan"/></td>
               <td>請填年數；若各年持續有效請填99；若為累積值填0</td>
            </tr>            
            <tr>
                <td>資料中文名稱:</td>
                <td><form:input path="a04datumnamech"/></td>
                <td>請搭配資料值及資料單位，賦予適當中文名稱</td>
            </tr>
            <tr>
            <td>資料值:</td>
                <td><form:input path="a05datum"/></td>
                <td>填數值，請搭配資料中文名稱及資料單位</td>
            </tr>
            <tr>
                <td>資料單位:</td>
                <td><form:input path="a06datumunit"/></td>
                <td>請搭配資料中文名稱及資料值</td>
            </tr>
            <tr>
                <td>註解:</td>
                <td><form:input path="a07datumnote"/></td>
                <td>資料名稱，數值及單位尚無法完整表達時，請加註解</td>
            </tr>
            <tr>
                <td>資料英文名稱:</td>
                <td><form:input path="a03datumnameen"/></td>
                <td>依資料中文名稱翻成同義英文</td>
            </tr>
                <tr>
                <td>資料層面:</td>
                <td><form:select path="a08dimension">
                <option value="outcome">農業呈現結果</option>
                <option value="activity">農業產銷活動</option>
                <option value="factor">農業生產因素</option>
                <option value="base">農業基礎條件</option>
                <option value="policy">農業制度法規政策</option>
                <option value="atmosphere">當年經濟社會條件</option>
                <option value="structure">外部結構因素</option>
                <option value="null" selected>請選擇</option>
                </form:select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>資料面向:</td>
                <td><form:select path="a09aspect">
                <option value="marketing">農業行銷</option>
                <option value="safety">農業安全</option>
                <option value="paradigm">典範農業</option>
                <option value="rural">農村發展</option>
                <option value="ecology">生態</option>
                <option value="agro-tech">農業科技</option>
                <option value="environment">環境維護</option>
                <option value="institution">農業組織及制度</option>
                <option value="legislation">農業法規</option>
                <option value="climate">天候氣象</option>
                <option value="trend">大潮流趨勢</option>
                <option value="society">社會因素</option>
                <option value="economics">經濟指標</option>
                <option value="politics">政治及非農業制度法規</option>
                <option value="null" selected>請選擇</option>
                </form:select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>事件發生可能性:</td>
                <td><form:select path="a10possibility">
                <option value="statistic">實際統計</option>
                <option value="estimate">調查或統計初估值</option>
                <option value="program">政策方案或計畫</option>
                <option value="goal">預期目標</option>
                <option value="planning">規劃中</option>
                <option value="prediction">預測值</option>
                <option value="possible">些許可能</option>
                <option value="null" selected>請選擇</option>
                </form:select>
                </td>
                <td></td>
            </tr>
            <tr>
            <td>地理範圍:</td>
                <td><form:select path="a11areacover">
                <option value="worldwide">全球</option>
                <option value="trans-nation">區域或國際組織</option>
                <option value="inter-nation">我國跟他國</option>
                <option value="nationwide">全國</option>
                <option value="region">跨縣市</option>
                <option value="county">單縣市</option>
                <option value="null" selected>請選擇</option>
                </form:select>             
                </td>
                <td></td>
            </tr>
            <tr>
                <td>與農業關聯度:</td>
                <td><form:select path="a12relative">
                <option value="strong">強相關(70%以上)</option>
                <option value="high">高度相關(45％至70%)</option>
                <option value="medium">中度相關(20％至45%)</option>
                <option value="low">少許相關(20％以下)</option>
                <option value="null" selected>請選擇</option>
                </form:select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>對農業影響面:</td>
                <td><form:select path="a13impactto1">
                <option value="agriculture-s">整體農業供給</option>
                <option value="crop-s">作物供給</option>
                <option value="livestock-s">畜牧供給</option>
                <option value="fishery-s">漁業供給</option>
                <option value="forest-s">林業供給</option>
                <option value="agro-tech">農業科技</option>
                <option value="agriculture-d">整體農業需求</option>
                <option value="crop-d">作物需求</option>
                <option value="livestock-d">畜產需求</option>
                <option value="fishery-d">漁產需求</option>
                <option value="wood-d">木材需求</option>
                <option value="recreatio"> 農業休閒</option>
                <option value="null" selected>請選擇</option>
                </form:select>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>影響方向:</td>
                <td><form:select path="a14impactsign1">
                 <option value="positive">正向影響</option>
                <option value="neutral">中性</option>
                <option value="negative">負向影響</option>
                <option value="null" selected>請選擇</option>
                </form:select>      
                </td>
                <td>請選擇</td>
            </tr>
            <tr>
                <td>特別編碼欄:</td>
                <td><form:input path="a19special"/></td>
                <td>保留欄，例如註明是KPI</td>
            </tr>
            <tr>
                <td>資料來源:</td>
                <td><form:input path="a20source"/></td>
                <td>請填資料來源，中英文或代碼均可</td>
            </tr>
            <tr>
                <td><input type=hidden name="userid" value="${userid}"/>
						<input type=hidden name="dimension" value="${dimension}"/>
						<input type=hidden name="info" value="${info}"/>
                	<input type="submit" value="確定送出"></td>
                <td> <c:url var="saveUrl3" value="/ballb/eventlist" />
						<form:form  action="${saveUrl3}" method="get">
						<input type=hidden name="userid" value="${userid}"/>
						<input type=hidden name="dimension" value="${dimension}"/>
						<input type=hidden name="info" value="${info}"/>
						<input type="submit" value="回事件清單">        
						</form:form></td>
               </tr>
        </table>
        </form:form>
   
  
    <br>
    <hr>
<c:url var="saveUrl0" value="/ballc/start" />
<form:form  action="${saveUrl0}" method="get">
<input type="submit" value="回首頁">        
</form:form>
</body>
</html>