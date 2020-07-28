package kr.co.upi.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.upi.DAO.UserDAO;
import kr.co.upi.DTO.UserDTO;

@Service("IUserService")
public class UserService {

	@Autowired
	public UserDAO dao;

	// 해당 년도 지표값들 가져오기
	public int IDCheck(UserDTO dto) {

		return dao.IDCheck(dto);
	}
}
