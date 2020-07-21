package kr.co.upi.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.upi.DAO.IndicatorsDAO;
import kr.co.upi.DAO.ResultDAO;
import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.RecordDTO;

@Service("IIndicatiorsService")
public class IndicatorsService {

	@Autowired
	public IndicatorsDAO dao;
	
	public List<IndicatorsDTO> selectAll() {
		return dao.selectAll();
	}
	
	public List<IndicatorsDTO> selectKategorie(IndicatorsDTO dto) {
		return dao.selectKategorie(dto);
	}
	
	// 현재 평가 등급 불러오기
	public GradeDTO selectGrade(GradeDTO gradeDto) {
		// TODO Auto-generated method stub
		return dao.selectGrade(gradeDto);
	}

	// 평가 등급 수정
	public int modifyGrade(GradeDTO dto) {
		// TODO Auto-generated method stub
		return dao.modifyGrade(dto);
	}

}
