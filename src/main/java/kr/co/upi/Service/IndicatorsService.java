package kr.co.upi.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.upi.DAO.IndicatorsDAO;
import kr.co.upi.DAO.ResultDAO;
import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.DTO.UserDTO;

@Service("IIndicatiorsService")
public class IndicatorsService {

	@Autowired
	public IndicatorsDAO dao;
	// 리스트 전체 검색
	public List<IndicatorsDTO> selectAll() {
		return dao.selectAll();
	}
	// 리스트 카테고리 검색
	public List<IndicatorsDTO> selectKategorie(IndicatorsDTO dto) {
		return dao.selectKategorie(dto);
	}
	
	// 관리번호로 한개 검색
	public IndicatorsDTO selectOne(IndicatorsDTO dto) {
		return dao.selectOne(dto);
	}
	
	// 현재 평가 등급 불러오기
	public GradeDTO selectGrade() {
		// TODO Auto-generated method stub
		return dao.selectGrade();
	}

	// 평가 등급 수정
	public int modifyGrade(GradeDTO dto) {
		return dao.modifyGrade(dto);
	}
	
	// 새 지표 등록
	public int indicators_write(IndicatorsDTO dto) {
		return dao.indicators_write(dto);
	}
	
	// 지표 수정
	public int indicators_modify(IndicatorsDTO dto) {
		// TODO Auto-generated method stub
		return dao.indicators_modify(dto);
	}
	
	// 보고서 작성
	public int report_write(RecordDTO dto) {
		// TODO Auto-generated method stub
		return dao.report_write(dto);
	}
	public List<IndicatorsDTO> selectIndiLog() {
		// TODO Auto-generated method stub
		return dao.selectIndiLog();
	}
	public List<RecordDTO> selectRecordLog() {
		// TODO Auto-generated method stub
		return dao.selectRecordLog();
	}
	public List<GradeDTO> selectGradeLog() {
		// TODO Auto-generated method stub
		return  dao.selectGradeLog();
	}

}
