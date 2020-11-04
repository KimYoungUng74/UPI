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

	// 이미 존재하는 회원인지 체크
	public int isUser(UserDTO dto) {
		return dao.isUser(dto);
	}

	// 유저 비밀번호 초기화
	public int pw_init(UserDTO dto) {
		return dao.pw_init(dto);
	}

	// 유저 정보 수정
	public int user_modify(UserDTO dto) {
		return dao.user_modify(dto);
	}

	// 유저 삭제
	public int user_delete(UserDTO dto) {
		return dao.user_delete(dto);
	}

}
