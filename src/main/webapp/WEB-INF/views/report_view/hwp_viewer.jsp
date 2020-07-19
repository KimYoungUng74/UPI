<%@ page language="java" contentType="application/hwp;charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html lang="kr">

	<table border="1" width="560" style="text-align: center;" id="report">
                                            <tr height="50">
                                            	<td>관리번호</td>
                                                <td>001</td>
                                                <td>지표명</td>
                                                <td colspan="3">취업률</td>
                                            </tr>
                                            <tr>
                                            	<td rowspan="2" height="50">활용</td>
                                                <td height="25">BEST</td>
                                                <td height="25">기관평가</td>
                                                <td height="25">AHA</td>
                                                <td height="25">LINC+</td>
                                                <td height="25">3유형</td>
                                            </tr>
                                            <tr height="25">
                                            	<td>O</td>
                                            	<td>O</td>
                                            	<td>O</td>
                                            	<td>O</td>
                                            	<td>O</td>
                                            </tr>
                                            <tr height="50">
                                            	<td>기준일</td>
                                                <td>2018년 12월</td>
                                                <td>평가방법</td>
                                                <td colspan="3">정량</td>
                                            </tr>
                                            <tr height="50">
                                            	<td>수집방법</td>
                                                <td>정보공시</td>
                                                <td>평가기준</td>
                                                <td colspan="3">중장기발전계획 목표 측정값</td>
                                            </tr>
                                            <tr height="50">
                                            	<td>관리부서</td>
                                                <td colspan="5">입학취업처</td>
                                            </tr>
                                            <tr height="50">
                                            	<td>산출식</td>
                                                <td colspan="5">(취업자/취업대상자)/100</td>
                                            </tr>
                                            <tr height="150">
                                            	<td>등급<br>기준</td>
                                                <td colspan="5">
                                                	<span>A(경민대학교 인증등급):평가지표별 목표 값 대비 달성도 100% 이상</span><br>
                                                	<span>B(잠재적 인증등급): 평가지표별 목표값 대비 달성도 70% 이상</span><br>
                                                	<span>D(부적합등급): 평가 지표별 목표값 대비 달성도 70% 이하</span><br>
                                                	<span>달성도 : 실시년도 실적값 / 전년도 실적값</span>
                                                </td>
                                            </tr>
                                            <tr height="150">
                                                <td colspan="6" align="center">
                                                	<table border="1" width="550" id="report_grade">
                                                		<tr height="25">
                                                			<td>목표값</td>
                                                			<td colspan="3">75.6</td>
                                                		</tr>
                                                		<tr height="25">
                                                			<td>현재값</td>
                                                			<td colspan="3">67.9</td>
                                                		</tr>
                                                		<tr height="25">
                                                			<td>평가년도</td>
                                                			<td>2017년도</td>
                                                			<td>2018년도</td>
                                                			<td>2019년도</td>
                                                		</tr>
                                                		<tr height="25">
                                                			<td>등급</td>
                                                			<td>A</td>
                                                			<td>B</td>
                                                			<td>B</td>
                                                		</tr>
                                                		<tr height="25">
                                                			<td>달성도</td>
                                                			<td>100</td>
                                                			<td>95</td>
                                                			<td>89.81</td>
                                                		</tr>
                                                	</table>
                                                </td>
                                            </tr>
                                            
                                            <tr height="50">
                                                <td colspan="3">
                                                	목표 및 현재 값 
                                                </td>
                                                <td colspan="3">
                                                	달성도
                                                </td>
                                            </tr>
                                            <tr height="150">
                                                <td class="border-top-0  px-8 py-16 font-14" colspan="3" align="center">
                                                	<img width="300" height="200" src="<c:url value='http://localhost:8181/img/chart1.png'/>" alt="차트">
                                                 </td>
                                                <td class="border-top-0  px-8 py-16 font-14" colspan="3" align="center">
                                                	<img width="300" height="200" src="<c:url value='http://localhost:8181/img/chart1.png'/>" alt="차트">
                                                </td>
                                            </tr>
                                            <tr height="25">
                                                <td>
                                                	비고 
                                                </td>
                                                <td colspan="5" id="container3"></td>
                                            </tr>
                                    </table>
                      

<script src="http://code.highcharts.com/highcharts.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script type="text/javascript">
    Highcharts.chart('container1', {

        chart: {
            type: 'column'
        },

        title: {
            text: '목표 현재 값 차트'
        },


        legend: {
            align: 'right',
            verticalAlign: 'middle',
            layout: 'vertical'
        },

        xAxis: {
            categories: ['2018', '2019', '2020'],
            labels: {
                x: -10
            }
        },

        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Amount'
            }
        },

        series: [{
            name: '목표값',
            data: [100, 95, 89]
        }, {
            name: '현재값',
            data: [120, 90, 88]
        }]
    });
    Highcharts.chart('container2', {

        chart: {
            type: 'column'
        },

        title: {
            text: '달성도 차트'
        },


        legend: {
            align: 'right',
            verticalAlign: 'middle',
            layout: 'vertical'
        },

        xAxis: {
            categories: ['2018', '2019', '2020'],
            labels: {
                x: -10
            }
        },

        yAxis: {
            allowDecimals: false,
            title: {
                text: '%'
            }
        },

        series: [{
            name: '달성도',
            data: [120,90, 92]
        }]
    });
    
    </script>
</html>