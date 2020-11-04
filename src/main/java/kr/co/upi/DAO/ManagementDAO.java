package kr.co.upi.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.upi.DTO.UserDTO;

@Repository
public class ManagementDAO {
	@Autowired
	public SqlSessionTemplate mybatis;

	// 유저 등록
	public int user_reg(UserDTO dto) {
		try {
			mybatis.insert("ManagementMapper.User_reg", dto);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	public int pw_init(UserDTO dto) {
		try {
			mybatis.update("ManagementMapper.PW_init", dto);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	public int user_modify(UserDTO dto) {
		try {
			mybatis.update("ManagementMapper.User_modify", dto);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	public int user_delete(UserDTO dto) {
		try {
			mybatis.update("ManagementMapper.User_delete", dto);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}
}
