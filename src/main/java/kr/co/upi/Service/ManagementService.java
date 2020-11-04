package kr.co.upi.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.upi.DAO.ManagementDAO;
import kr.co.upi.DTO.UserDTO;

@Service("IManagementService")
public class ManagementService {

	@Autowired
	public ManagementDAO dao;
	
	// 유저 등록
	public int user_reg(UserDTO dto) {
		return dao.user_reg(dto);
	}
	
	// 유저 비밀번호 초기화
	public int pw_init(UserDTO dto) {
		return dao.user_reg(dto);
	}

	// 유저 정보 수정
	public int user_modify(UserDTO dto) {
		return dao.user_reg(dto);
	}

}
