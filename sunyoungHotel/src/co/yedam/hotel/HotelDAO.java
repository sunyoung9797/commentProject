package co.yedam.hotel;

import java.sql.SQLException;

import co.yedam.common.DAO;

public class HotelDAO extends DAO{
	
	//로그인
	public boolean login(String id, String password) {
		connect();
		String sql = "select password from member where id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password)) {
					return true;
				} else {
					return false;
				}
			}
			return false;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return false;
	}
	
	//아이디체크
	public boolean checkId(String id) {
		connect();
		String sql = "select * from member where id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				return false;
			} else {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}		
		return false;
	}
	
	//가입
	public boolean insertHotel(LoginVO login) {
		connect();
		String sql ="insert into member (id,password,name,identity_number,email,call_nember)"
				+ "value(?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, login.getId());
			psmt.setString(2, login.getPassword());
			psmt.setString(3, login.getName());
			psmt.setInt(4, login.getIdentityNumber());
			psmt.setString(5, login.getEmail());
			psmt.setInt(6, login.getCallNumber());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "입력됨");
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		
	}
	
	
}
