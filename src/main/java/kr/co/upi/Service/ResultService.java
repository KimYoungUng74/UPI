package kr.co.upi.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.upi.DAO.ResultDAO;
import kr.co.upi.DTO.RecordDTO;

@Service("IResultService")
public class ResultService {

	@Autowired
	public ResultDAO dao;

	public List<RecordDTO> selectResultListAll(String YEAR) {

		return dao.selectResultListAll(YEAR);
	}
	
	public List<RecordDTO> selectYearList(String YEAR) {

		return dao.selectYearList(YEAR);
	}
	
	// 특정 지표의 최신값 가져오기
	public List<RecordDTO> selectListIncd(int INDICATORS_NUM) {

		return dao.selectListIncd(INDICATORS_NUM);
	}
	
	// 특정 등급의 최신값 가져오기
	public List<RecordDTO> selectListGrade(String GRADE) {
		return dao.selectListGrade(GRADE);
	}
}
