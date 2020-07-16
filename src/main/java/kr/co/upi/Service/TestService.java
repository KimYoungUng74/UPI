package kr.co.upi.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.co.upi.DAO.TestDao;
import kr.co.upi.DTO.TestDTO;


@Service("ITestService")
public class TestService {

		@Autowired
		public TestDao dao;
		
		// ȸ�� ���� ��ȸ
		public TestDTO DBTest() {
			// TODO Auto-generated method stub
			return dao.DBTest();

		}
}
