<%@ page language="java" contentType="application/hwp;charset=UTF-8" pageEncoding="UTF-8"%>
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
                                                	<table border="1" width="550">
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
                                                <td colspan="3">
                                                	<img  width="200" height="200" src="<c:url value='http://localhost:8181/img/chart1.png'/>" alt="차트">
                                               	</td>
                                                <td colspan="3">
                                                	<img width="200" height="200" src="<c:url value='http://localhost:8181/img/chart1.png'/>" alt="차트">
                                                </td>
                                            </tr>
                                            <tr height="25">
                                                <td>
                                                	비고 
                                                </td>
                                                <td colspan="5"></td>
                                            </tr>
                                    </table>
                      
                      
<script
	src="<c:url value='/resources/template/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js'/>"></script>
<script
	src="<c:url value='/resources/template/dist/js/pages/dashboards/dashboard1.min.js'/>"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>	              
<script type="text/javascript">
    Highcharts.chart('container', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '등급별 성과지표, 2020'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: [{
            name: '비율',
            colorByPoint: true,
            data: [{
                name: 'A등급',
                y: 61.41,
                sliced: true,
                selected: true
            }, {
                name: 'B등급',
                y: 11.84
            }, {
                name: 'D등급',
                y: 10.85
            }, {
                name: '기타',
                y: 15.9
            }]
        }]
    });
    </script>
</html>