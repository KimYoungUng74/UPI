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
	
	public List<RecordDTO> selectResultListAll() {
		
		dao.selectResultListAll();
		return null;
	}
}
