<%@ page language="java" contentType="application/hwp;charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html lang="kr">

	<table border="1" width="560" style="text-align: center;" id="report">
                                            <tr height="50">
                                            	<td>������ȣ</td>
                                                <td>001</td>
                                                <td>��ǥ��</td>
                                                <td colspan="3">�����</td>
                                            </tr>
                                            <tr>
                                            	<td rowspan="2" height="50">Ȱ��</td>
                                                <td height="25">BEST</td>
                                                <td height="25">�����</td>
                                                <td height="25">AHA</td>
                                                <td height="25">LINC+</td>
                                                <td height="25">3����</td>
                                            </tr>
                                            <tr height="25">
                                            	<td>O</td>
                                            	<td>O</td>
                                            	<td>O</td>
                                            	<td>O</td>
                                            	<td>O</td>
                                            </tr>
                                            <tr height="50">
                                            	<td>������</td>
                                                <td>2018�� 12��</td>
                                                <td>�򰡹��</td>
                                                <td colspan="3">����</td>
                                            </tr>
                                            <tr height="50">
                                            	<td>�������</td>
                                                <td>��������</td>
                                                <td>�򰡱���</td>
                                                <td colspan="3">����������ȹ ��ǥ ������</td>
                                            </tr>
                                            <tr height="50">
                                            	<td>�����μ�</td>
                                                <td colspan="5">�������ó</td>
                                            </tr>
                                            <tr height="50">
                                            	<td>�����</td>
                                                <td colspan="5">(�����/��������)/100</td>
                                            </tr>
                                            <tr height="150">
                                            	<td>���<br>����</td>
                                                <td colspan="5">
                                                	<span>A(��δ��б� �������):����ǥ�� ��ǥ �� ��� �޼��� 100% �̻�</span><br>
                                                	<span>B(������ �������): ����ǥ�� ��ǥ�� ��� �޼��� 70% �̻�</span><br>
                                                	<span>D(�����յ��): �� ��ǥ�� ��ǥ�� ��� �޼��� 70% ����</span><br>
                                                	<span>�޼��� : �ǽó⵵ ������ / ���⵵ ������</span>
                                                </td>
                                            </tr>
                                            <tr height="150">
                                                <td colspan="6" align="center">
                                                	<table border="1" width="550" id="report_grade">
                                                		<tr height="25">
                                                			<td>��ǥ��</td>
                                                			<td colspan="3">75.6</td>
                                                		</tr>
                                                		<tr height="25">
                                                			<td>���簪</td>
                                                			<td colspan="3">67.9</td>
                                                		</tr>
                                                		<tr height="25">
                                                			<td>�򰡳⵵</td>
                                                			<td>2017�⵵</td>
                                                			<td>2018�⵵</td>
                                                			<td>2019�⵵</td>
                                                		</tr>
                                                		<tr height="25">
                                                			<td>���</td>
                                                			<td>A</td>
                                                			<td>B</td>
                                                			<td>B</td>
                                                		</tr>
                                                		<tr height="25">
                                                			<td>�޼���</td>
                                                			<td>100</td>
                                                			<td>95</td>
                                                			<td>89.81</td>
                                                		</tr>
                                                	</table>
                                                </td>
                                            </tr>
                                            
                                            <tr height="50">
                                                <td colspan="3">
                                                	��ǥ �� ���� �� 
                                                </td>
                                                <td colspan="3">
                                                	�޼���
                                                </td>
                                            </tr>
                                            <tr height="150">
                                                <td class="border-top-0  px-8 py-16 font-14" colspan="3" align="center">
                                                	<img width="300" height="200" src="<c:url value='http://localhost:8181/img/chart1.png'/>" alt="��Ʈ">
                                                 </td>
                                                <td class="border-top-0  px-8 py-16 font-14" colspan="3" align="center">
                                                	<img width="300" height="200" src="<c:url value='http://localhost:8181/img/chart1.png'/>" alt="��Ʈ">
                                                </td>
                                            </tr>
                                            <tr height="25">
                                                <td>
                                                	��� 
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
            text: '��ǥ ���� �� ��Ʈ'
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
            name: '��ǥ��',
            data: [100, 95, 89]
        }, {
            name: '���簪',
            data: [120, 90, 88]
        }]
    });
    Highcharts.chart('container2', {

        chart: {
            type: 'column'
        },

        title: {
            text: '�޼��� ��Ʈ'
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
            name: '�޼���',
            data: [120,90, 92]
        }]
    });
    
    </script>
</html>