package kr.co.upi.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.upi.DAO.ReportDAO;
import kr.co.upi.DTO.ReportDTO;

@Service("IReportService")
public class ReportService {

	@Autowired
	public ReportDAO dao;
	
	// 리스트 전체 검색
	public List<ReportDTO> selectAll() {
		return dao.selectAll();
	}
		
	// 관리번호로 하나 검색
	public List<ReportDTO> selectListIndc(ReportDTO dto) {
		return dao.selectListIndc(dto);
	}


}
