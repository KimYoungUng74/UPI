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
import kr.co.upi.utill.SHA256;

@Repository
public class UserDAO {
	

	@Autowired
	public SqlSessionTemplate mybatis;

	//사용자 ID check
	public String IDCheck(UserDTO dto) {
		System.out.println("로그인 검사 시작");
		String result = "";
		System.out.println(dto.toString());
		// ID에 포함된 정보를 가져옵니다.
		UserDTO userdto = mybatis.selectOne("UserMapper.IDCheck", dto);
		if (userdto != null) {
			System.out.println(userdto.toString());
		}else {
			System.out.println("result data null");
		}
		if (userdto == null) {
			result = "1"; // id가 없을경우
		} else if (!userdto.getUSER_PW().equals(SHA256.getSHA256(dto.getUSER_PW()))) {
			result = "2";// pw가 맞지않을경우
		} else {
			result = "3";// 로그인 성공
		}
		return result;
	}
	
	//로그인후 사용자 정보 가져오기
	public UserDTO loginOK(UserDTO dto) {
		dto.setUSER_PW(SHA256.getSHA256(dto.getUSER_PW()));
		return mybatis.selectOne("UserMapper.loginOk", dto);
	}
}
