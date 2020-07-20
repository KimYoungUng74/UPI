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

//[DB���� ����] 3. �������̽� �޾Ƽ� Ŭ���� ����
@Repository
public class ResultDAO {
	// �����̳ʰ� ��ü�� �ڵ����� ���� Autowired

	@Autowired
	public SqlSessionTemplate mybatis;

	// ������Ʈ ��� ��ȸ
	public List<RecordDTO> selectResultListAll() {

		return mybatis.selectList("ResultMapper.ResultGridList");
	}

}
