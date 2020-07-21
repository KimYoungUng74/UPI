package kr.co.upi.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import kr.co.upi.DTO.ReportDTO;

@Repository
public class ReportDAO {
	@Autowired
	public SqlSessionTemplate mybatis;
	
	// 리스트 전체 검색
	public List<ReportDTO> selectAll() {
		return mybatis.selectList("ReportMapper.ReportListAll");
	}
	
	// 관리번호로 하나 검색
	public List<ReportDTO> selectListIndc(ReportDTO dto) {
		return mybatis.selectList("ReportMapper.ReportListIndc",dto);
	}

}
