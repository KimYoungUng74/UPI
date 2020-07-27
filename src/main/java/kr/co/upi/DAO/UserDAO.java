package kr.co.upi.DAO;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.upi.DTO.GradeCountDTO;
import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.DTO.UserDTO;

@Repository
public class UserDAO {
	

	@Autowired
	public SqlSessionTemplate mybatis;

	//사용자 ID check
	public UserDTO IDCheck(UserDTO dto) {
		return mybatis.selectOne("UserMapper.IDCheck", dto);
	}
}
