package kr.co.upi.DAO;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import kr.co.upi.DTO.RecordDTO;

@Repository
public class ResultDAO {
	

	@Autowired
	public SqlSessionTemplate mybatis;

	// 총괄결과표
	public List<RecordDTO> selectResultListAll(String YEAR) {

		return mybatis.selectList("ResultMapper.ResultGridList",YEAR);
	}


}
