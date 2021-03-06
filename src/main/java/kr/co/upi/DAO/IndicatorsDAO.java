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

	// 리스트 전체 검색
	public List<IndicatorsDTO> selectAll() {
		return mybatis.selectList("IndicatorsMapper.IndicatorsListAll");
	}

	// 리스트 카테고리 검색
	public List<IndicatorsDTO> selectKategorie(IndicatorsDTO dto) {
		return mybatis.selectList("IndicatorsMapper.IndicatorsListKategorie", dto);
	}

	// 관리번호로 한개 검색
	public IndicatorsDTO selectOne(IndicatorsDTO dto) {
		return mybatis.selectOne("IndicatorsMapper.IndicatorsOne", dto);
	}

	// 평가 등급 기준
	public GradeDTO selectGrade() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("IndicatorsMapper.NowGradeSelect");
	}

	// 평가 등급 수정
	public int modifyGrade(GradeDTO dto) {
	
			mybatis.insert("IndicatorsMapper.GradeModify", dto);
		
		return 1;
	}

	// 새 지표 등록
	public int indicators_write(IndicatorsDTO dto) {
		try {
			mybatis.insert("IndicatorsMapper.Indicators_write", dto);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	// 지표 수정
	public int indicators_modify(IndicatorsDTO dto) {
		try {
			mybatis.insert("IndicatorsMapper.Indicators_modify", dto);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	// 보고서 입력
	public int report_write(RecordDTO dto) {
		
		
			mybatis.insert("IndicatorsMapper.Report_write", dto);
		return 1;
	}

	// 지표 로그
	public List<IndicatorsDTO> selectIndiLog() {
		
		return  mybatis.selectList("IndicatorsMapper.selectIndiLog");
	}

	// 보고서 로그
	public List<RecordDTO> selectRecordLog() {
		// TODO Auto-generated method stub
		return  mybatis.selectList("IndicatorsMapper.selectRecordLog");
	}

	public List<GradeDTO> selectGradeLog() {
		// TODO Auto-generated method stub
		return mybatis.selectList("IndicatorsMapper.selectGradeLog");
	}
}
