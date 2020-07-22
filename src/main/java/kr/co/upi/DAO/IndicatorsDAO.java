package kr.co.upi.DAO;

import java.sql.SQLDataException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.DTO.UserDTO;

@Repository
public class IndicatorsDAO {
	@Autowired
	public SqlSessionTemplate mybatis;
	// 리스트 전체 검색
	public List<IndicatorsDTO> selectAll() {
		return mybatis.selectList("IndicatorsMapper.IndicatorsListAll");
	}
	// 리스트 카테고리 검색 
	public List<IndicatorsDTO> selectKategorie(IndicatorsDTO dto) {
		return mybatis.selectList("IndicatorsMapper.IndicatorsListKategorie",dto);
	}
	
	// 관리번호로 한개 검색
	public IndicatorsDTO selectOne(IndicatorsDTO dto) {
		return mybatis.selectOne("IndicatorsMapper.IndicatorsOne",dto);
	}
	
	
	// 평가 등급 기준 
	public GradeDTO selectGrade(GradeDTO gradeDto) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("IndicatorsMapper.NowGradeSelect",gradeDto);
	}

	// 평가 등급 수정
	public int modifyGrade(GradeDTO dto, UserDTO userDto) {
		try {
			dto.setUSER_ID(userDto.getUSER_ID());
			dto.setUSER_NAME(userDto.getUSER_NAME());
			dto.setACTION_CODE(2);
			mybatis.insert("IndicatorsMapper.GradeModify",dto);
		} catch(Exception e) {
			return 0;
		}
		return 1;
	}
}
