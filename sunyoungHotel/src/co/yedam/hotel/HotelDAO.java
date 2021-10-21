package co.yedam.hotel;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
				+ "values(?,?,?,?,?,?)";
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
	
	public String insertRsvInfo(ReserveInfo reserve) {		
		System.out.println(reserve.getGrpCd());
		System.out.println(reserve.getCheckIn());
		System.out.println(reserve.getCheckOut());
		
		String roomCd = "";
		roomCd = getEmptyRoomCd(reserve.getGrpCd(), reserve.getCheckIn(), reserve.getCheckOut());
		System.out.println("aa" + roomCd);
		if (roomCd.equals("")) {
			return "";
		}
		
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss"); 
		String strToday = sdf.format(today);
		
		connect();
		
		try {
			conn.setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		try {
			psmt = conn.prepareStatement("INSERT INTO reservation (room_cd, check_in, reserve_id, use_yn, enroll_date)\r\n"
					                   + "VALUES (?, ?, ?, 'Y', sysdate) "); 
			System.out.println("bb");
			System.out.println(roomCd);
			System.out.println(reserve.getCheckIn());
			System.out.println(reserve.getReserveId());
			psmt.setString(1, roomCd);
			psmt.setString(2, reserve.getCheckIn());
			psmt.setString(3, reserve.getReserveId());
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력");
			
			System.out.println("cc");
			
			psmt = conn.prepareStatement("INSERT INTO bookingInfo\r\n"
									   + "(booking_cd, id, gender, check_in , check_out, room_cd, adults, children, adults_bf, \r\n"
									   + " children_bf, extra_bed, adults_bf_p, children_bf_p, extra_bed_p, room_price, tax, \r\n"
									   + " total_price, cmt, rsv_name, eng_name, nationality, phone_num, email, card_type, \r\n"
									   + " card_num, exp_date, card_pw, birth, idinfo_agree, noshow_agree, enroll_date )\r\n"
									   + " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'Y', 'Y', sysdate ) ");
			//                                    1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8
			
			psmt.setString(1,  strToday + reserve.getReserveId());
			psmt.setString(2,  reserve.getReserveId());
			psmt.setString(3,  reserve.getGender());
			psmt.setString(4,  reserve.getCheckIn());
			psmt.setString(5,  reserve.getCheckOut());
			psmt.setString(6,  roomCd);
			psmt.setInt(7,  reserve.getAdults());
			psmt.setInt(8,  reserve.getChildren());
			psmt.setInt(9,  reserve.getAdultsBf());
			psmt.setInt(10,  reserve.getChildrenBf());
			psmt.setInt(11,  reserve.getExtraBed());
			psmt.setString(12,  reserve.getAdultsBfP());
			psmt.setString(13,  reserve.getChildrenBfP());
			psmt.setString(14,  reserve.getExtraBedP());
			psmt.setString(15,  reserve.getRoomPrice());
			psmt.setString(16,  reserve.getTax());
			psmt.setString(17,  reserve.getTotalPrice());
			psmt.setString(18,  reserve.getCmt());
			psmt.setString(19,  reserve.getRsvName());
			psmt.setString(20,  reserve.getEngName());
			psmt.setString(21,  reserve.getNationality());
			psmt.setString(22,  reserve.getPhoneNum());
			psmt.setString(23,  reserve.getEmail());
			psmt.setString(24,  reserve.getCardType());
			psmt.setString(25,  reserve.getCardNum());
			psmt.setString(26,  reserve.getExpDate());
			psmt.setString(27,  reserve.getCardPw());
			psmt.setString(28,  reserve.getBirth());
			r = psmt.executeUpdate();
			
			System.out.println(r + "건 입력");
			
			conn.commit();
			
			return strToday + reserve.getReserveId() + ":" + roomCd;
			
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			return "";
		} finally {
			disconnect();
		}
	}
	
	public String getEmptyRoomCd(String grpCd, String CheckIn, String CheckOut) {
		connect();
		
		try {
			String sql = "SELECT room_cd \r\n"
					   + "FROM room\r\n"
					   + "WHERE use_yn = 'Y'\r\n"
					   + "AND grp_cd = ? \r\n"
					   + "AND room_cd NOT IN (SELECT room_cd \r\n"
					   + "FROM reservation\r\n"
					   + "WHERE check_in >= ? \r\n"
					   + "AND check_in < ? \r\n"
					   + "AND use_yn = 'Y')\r\n"
					   + "ORDER BY 1 ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, grpCd);
			psmt.setString(2, CheckIn);
			psmt.setString(3, CheckOut);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				return rs.getString("room_cd");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		
		return "";
	}
	
	//예약가능 리스트 조회  //나중에 인원수 방수에 맞춰서 수정할 것
	public List<ReserveInfo> getRsvInfo(String bookingCd) {
		connect();
		List<ReserveInfo> list = new ArrayList();
		
		try {
			String sql = "SELECT * FROM bookingInfo WHERE booking_cd = ? ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, bookingCd);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ReserveInfo info = new ReserveInfo();
				info.setReserveId(rs.getString("booking_cd"));
				info.setGender(rs.getString("gender"));
				info.setRoomCd(rs.getString("room_cd"));
				info.setGrpCd(rs.getString("room_cd").substring(0, 4));
				info.setCheckIn(rs.getString("check_in"));
				info.setCheckOut(rs.getString("check_out"));
				info.setAdults(rs.getInt("adults"));
				info.setChildren(rs.getInt("children"));
				info.setAdultsBf(rs.getInt("adults_bf"));
				info.setChildrenBf(rs.getInt("children_bf"));
				info.setExtraBed(rs.getInt("extra_bed"));
				info.setAdultsBfP(rs.getString("adults_bf_p"));
				info.setChildrenBfP(rs.getString("children_bf_p"));
				info.setExtraBedP(rs.getString("extra_bed_p"));
				info.setRoomPrice(rs.getString("room_price"));
				info.setTax(rs.getString("tax"));
				info.setTotalPrice(rs.getString("total_price"));
				info.setCmt(rs.getString("cmt"));
				info.setRsvName(rs.getString("rsv_name"));
				info.setEngName(rs.getString("eng_name"));
				info.setNationality(rs.getString("nationality"));
				info.setPhoneNum(rs.getString("phone_num"));
				info.setEmail(rs.getString("email"));
				info.setCardType(rs.getString("card_type"));
				info.setCardNum(rs.getString("card_num"));
				info.setExpDate(rs.getString("exp_date"));
				info.setCardPw(rs.getString("card_pw"));
				info.setBirth(rs.getString("birth"));
				
				list.add(info);
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
