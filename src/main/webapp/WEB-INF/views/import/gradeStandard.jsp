<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><b>평가 등급 기준</b></h4>
                                <p class="text-muted font-13">
                                    	각 등급의 평가 기준을 확인하실 수 있습니다.
                                </p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-center" rowspan="2">등급</th>
                                                <th class="text-center" rowspan="2">평 가 등 급 기 준</th>
                                                <th class="text-center" rowspan="2">등급별 조치</th>
                                                
                                            </tr>
                                           
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th class="text-center" scope="row">A</th>
                                                <td>평가지표별 목표 값 대비 달성도 100% 이상</td>
                                                <td>차년도 달성값 이상 유지</td>                                           
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">B</th>
                                                <td>평가지표별 목표 값 대비 달성도 70% 이상</td>
                                                <td>문제점/개선사항 마련</td>                                            
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">D</th>
                                                <td>평가지표별 목표 값 대비 달성도 70% 이하</td>
                                                <td>목표 값 검토 및 문제/개선사항</td>                                            
                                            </tr>
                                        
                                        </tbody>
                                    </table>
                                </div> <!-- end table-responsive-->

                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>