package kr.co.upi.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.upi.DAO.ResultDAO;
import kr.co.upi.DTO.GradeCountDTO;
import kr.co.upi.DTO.RecordDTO;

@Service("IResultService")
public class ResultService {

	@Autowired
	public ResultDAO dao;

	// 해당 년도 지표값들 가져오기
	public List<RecordDTO> selectResultListAll(String YEAR) {

		return dao.selectResultListAll(YEAR);
	}

	// 해당 년도별 지표값들 가져오기 ( NULL 포함 )
	public List<RecordDTO> selectYearList(String YEAR) {

		return dao.selectYearList(YEAR);
	}

	// 해당 년도별 등급 갯수 가져오기
	public List<GradeCountDTO> selectYearGrade(String YEAR) {

		return dao.selectYearGrade(YEAR);
	}

	// 사업별 등급 갯수 가져오기
	public List<RecordDTO> selectBusinessGrade(String YEAR) {

		return dao.selectBusinessGrade(YEAR);
	}

	// 년도별 등급 갯수 퍼센트 사용할 때 사용
	public List<GradeCountDTO> BusinessGradePer(String YEAR) {

		return dao.BusinessGradePer(YEAR);
	}

	// 특정 지표의 최신값 가져오기
	public List<RecordDTO> selectListIncd(int INDICATORS_NUM) {

		return dao.selectListIncd(INDICATORS_NUM);
	}

	// 특정 등급의 최신값 가져오기
	public List<RecordDTO> selectListGrade(String GRADE) {
		return dao.selectListGrade(GRADE);
	}

	// 사업별 갯수 리스트 가져오기
	public List<RecordDTO> selectListBussiness(String BUSINESS) {
		return dao.selectListBussiness(BUSINESS);
	}
	
}
