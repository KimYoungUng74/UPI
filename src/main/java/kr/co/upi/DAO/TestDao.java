package kr.co.upi.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.upi.DTO.TestDTO;

@Repository
public class TestDao {
	// �����̳ʰ� ��ü�� �ڵ����� ���� Autowired
		@Autowired
		public SqlSessionTemplate mybatis;

	public TestDTO DBTest() {
		// TODO Auto-generated method stub
		 mybatis.insert("TestMapper.DBTestInsert");
		return mybatis.selectOne("TestMapper.DBTest");
	}

}
