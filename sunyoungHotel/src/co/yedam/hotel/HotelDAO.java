package co.yedam.hotel;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HotelDAO extends DAO {
	private static HotelDAO instance = new HotelDAO();
	
	public static HotelDAO getInstance() {
		return instance;
	}
	
	//로그인
	public String login(String id, String password) {
		connect();
		String sql = "select password, name from member where id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password)) {
					return rs.getString(2);
				} else {
					return "0";
				}
			}
			return "-1";
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return "-2";
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
		String sql ="insert into member (id, password, name, identity_number, email, call_number) "
				+ "value(?,?,?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, login.getId());
			psmt.setString(2, login.getPassword());
			psmt.setString(3, login.getName());
			psmt.setString(4, login.getIdentityNumber());
			psmt.setString(5, login.getEmail());
			psmt.setString(6, login.getCallNumber());
			
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
	
	//예약가능 리스트 조회  //나중에 인원수 방수에 맞춰서 수정할 것
	public List<RoomInfo> getBookableList(String frDate, String toDate, String rooms) {
		connect();
		List<RoomInfo> list = new ArrayList();
		
		try {
			String sql = "SELECT *\r\n"
						+ "FROM\r\n"
						+ "(SELECT *\r\n"
						+ "FROM roomgrp\r\n"
						+ "WHERE use_yn='Y'\r\n"
						+ "AND grp_cd not in (SELECT grp_cd \r\n"
						+ "FROM room\r\n"
						+ "WHERE use_yn = 'Y'\r\n"
						+ "AND room_cd = (SELECT room_cd \r\n"
						+ "FROM reservation\r\n"
						+ "WHERE check_in >= ? \r\n"
						+ "AND check_in < ? \r\n"
						+ "AND use_yn = 'Y')) )a,\r\n"
						+ "(SELECT grp_cd, count(room_cd) cnt_room \r\n"
						+ "FROM room\r\n"
						+ "WHERE use_yn = 'Y'\r\n"
						+ "AND grp_cd not in (SELECT grp_cd \r\n"
						+ "FROM room\r\n"
						+ "WHERE use_yn = 'Y'\r\n"
						+ "AND room_cd = (SELECT room_cd \r\n"
						+ "FROM reservation\r\n"
						+ "WHERE check_in >= ? \r\n"
						+ "AND check_in < ? \r\n"
						+ "AND use_yn = 'Y'))\r\n"
						+ "GROUP BY grp_cd) b\r\n"
						+ "WHERE a.grp_cd = b.grp_cd\r\n"
						+ "ORDER BY 1 ";
			//System.out.println(sql);
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, frDate);
			psmt.setString(2, toDate);
			psmt.setString(3, frDate);
			psmt.setString(4, toDate);
			//System.out.println(frDate + " : " + toDate);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				RoomInfo room = new RoomInfo();
				room.setGrpCd(rs.getString("grp_cd"));
				room.setGrpNm(rs.getString("grp_nm"));
				room.setGrpFloor(rs.getString("grp_floor"));
				room.setBeds(rs.getString("beds"));
				room.setRoomSize(rs.getString("room_size"));
				room.setFeatures(rs.getString("features"));
				room.setViews(rs.getString("views"));
				room.setPrice(rs.getString("price"));
				room.setAdults(rs.getInt("adults"));
				room.setChildren(rs.getInt("children"));
				room.setCntRoom(rs.getInt("cnt_room"));
				
				list.add(room);
			}
			
			System.out.println(list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}
	
	//룸 그룹정보 조회
	public List<RoomInfo> getGrpInfo(String grpCd) {
		connect();
		List<RoomInfo> list = new ArrayList();
		
		try {
			String sql = "SELECT * FROM roomgrp WHERE grp_cd=? ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, grpCd);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				RoomInfo room = new RoomInfo();
				room.setGrpCd(rs.getString("grp_cd"));
				room.setGrpNm(rs.getString("grp_nm"));
				room.setGrpFloor(rs.getString("grp_floor"));
				room.setBeds(rs.getString("beds"));
				room.setRoomSize(rs.getString("room_size"));
				room.setFeatures(rs.getString("features"));
				room.setViews(rs.getString("views"));
				room.setPrice(rs.getString("price"));
				room.setAdults(rs.getInt("adults"));
				room.setChildren(rs.getInt("children"));
				
				list.add(room);
			}
			
			System.out.println(list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}
	
	
	
}
