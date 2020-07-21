package kr.co.upi.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.RecordDTO;

@Repository
public class IndicatorsDAO {
	@Autowired
	public SqlSessionTemplate mybatis;
	
	public List<IndicatorsDTO> selectAll() {
		return mybatis.selectList("IndicatorsMapper.IndicatorsListAll");
	}
	
	public List<IndicatorsDTO> selectKategorie(IndicatorsDTO dto) {
		return mybatis.selectList("IndicatorsMapper.IndicatorsListKategorie",dto);
	}

	// 평가 등급 기준 
	public GradeDTO selectGrade(GradeDTO gradeDto) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("IndicatorsMapper.NowGradeSelect",gradeDto);
	}

	// 평가 등급 수정
	public int modifyGrade(GradeDTO dto) {
		// TODO Auto-generated method stub
		return mybatis.insert("IndicatorsMapper.GradeModify",dto);
	}

}
