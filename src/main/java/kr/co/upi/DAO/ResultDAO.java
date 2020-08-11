package kr.co.upi.DAO;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.upi.DTO.GradeCountDTO;
import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.DTO.RecordDTO;

@Repository
public class ResultDAO {

	@Autowired
	public SqlSessionTemplate mybatis;

	// 해당 년도 지표값들 가져오기
	public List<RecordDTO> selectResultListAll(String YEAR) {

		return mybatis.selectList("ResultMapper.ResultGridList", YEAR);
	}

	// 해당 년도별 지표값들 가져오기 ( NULL 포함 )
	public List<RecordDTO> selectYearList(String YEAR) {

		return mybatis.selectList("ResultMapper.ResultYearList", YEAR);
	}

	// 해당 년도별 등급 갯수 가져오기
	public List<GradeCountDTO> selectYearGrade(String YEAR) {

		return mybatis.selectList("ResultMapper.ResultYearGrade", YEAR);
	}

	// 사업별 등급 갯수 가져오기
	public List<RecordDTO> selectBusinessGrade(String YEAR) {

		return mybatis.selectList("ResultMapper.ResultBusinessGrade", YEAR);
	}
	
	// 년도별 등급 갯수 퍼센트 사용 할 때 사용
	public List<GradeCountDTO> BusinessGradePer(String YEAR){
			
			return mybatis.selectList("ResultMapper.BusinessGradePer", YEAR);
	}

	// 특정 지표의 최신값 가져오기
	public List<RecordDTO> selectListIncd(int INDICATORS_NUM) {

		return mybatis.selectList("ResultMapper.ResultListIncd", INDICATORS_NUM);
	}

	// 특정 등급의 최신값 가져오기
	public List<RecordDTO> selectListGrade(String GRADE) {
		return mybatis.selectList("ResultMapper.ResultListGrade", GRADE);
	}
	
	// 사업별 갯수 리스트 가져오기
	public List<RecordDTO> selectListBussiness(String BUSINESS) {
		return mybatis.selectList("ResultMapper.ResultListBussiness", BUSINESS);
	}

	// 등급 기준 가져오기
	public List<GradeDTO> selectResultGradeStandard() {
		
		return mybatis.selectList("ResultMapper.ResultGradeStandard");
	}

}
