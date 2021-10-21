package co.yedam.hotel;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@WebServlet("/HotelServlet")
public class HotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public HotelServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		Gson gson = new GsonBuilder().create();
		
		String cmd = request.getParameter("cmd");
		System.out.println(cmd);
		HotelDAO dao = HotelDAO.getInstance();
		
		if(cmd == null) {
			out.println("<h1>빈페이지입니다</h1>");
		} else if (cmd.equals("bookable")) {
			System.out.println("<h1>예약가능리스트페이지입니다</h1>");
			
			String frDate = request.getParameter("frDate");
			String toDate = request.getParameter("toDate");
			String rooms = request.getParameter("rooms");
			String adults = request.getParameter("adults");
			String children = request.getParameter("children");
			
//			String frDate = "20211021";
//			String toDate = "20211023";
//			String rooms = "2";
			
			List<RoomInfo> list = dao.getBookableList(frDate, toDate, rooms);
			
			out.println(gson.toJson(list));
			
		} else if (cmd.equals("grpInfo")) {
			System.out.println("<h1>룸그룹정보페이지입니다</h1>");
			
			String grpCd = request.getParameter("grpCd");
			
			List<RoomInfo> list = dao.getGrpInfo(grpCd);
			
			out.println(gson.toJson(list));
			
		} else if (cmd.equals("save")) {
			System.out.println("<h1>예약저장</h1>");
			
			String id = request.getParameter("id");
			String gender = request.getParameter("gender");
			String grpCd = request.getParameter("grpCd");
			String checkIn = request.getParameter("checkIn").replace("-", "");
			String checkOut = request.getParameter("checkOut").replace("-", "");
			String adults = request.getParameter("adults");
			String children = request.getParameter("children");
			String roomCnt = request.getParameter("roomCnt");
			String adultsBf = request.getParameter("adultsBf");
			String childrenBf = request.getParameter("childrenBf");
			String extraBed = request.getParameter("extraBed");
			String adultsBfP = request.getParameter("adultsBfP");
			String childrenBfP = request.getParameter("childrenBfP");
			String extraBedP = request.getParameter("extraBedP");
			String roomPrice = request.getParameter("roomPrice");
			String tax = request.getParameter("tax");
			String totalPrice = request.getParameter("totalPrice");
			String cmt = request.getParameter("cmt");
			String rsvName = request.getParameter("rsvName");
			String engNm = request.getParameter("engNm");
			String nationality = request.getParameter("nationality");
			String phoneNum = request.getParameter("phoneNum");
			String email = request.getParameter("email");
			String cardType = request.getParameter("cardType");
			String cardNum = request.getParameter("cardNum");
			String expDate = request.getParameter("expDate");
			String cardPw = request.getParameter("cardPw");
			String birth = request.getParameter("birth");
			
//			System.out.println("id : " + id);
//			System.out.println("gender : " + gender);
//			System.out.println("grpCd : " + grpCd);
//			System.out.println("checkIn : " + checkIn);
//			System.out.println("checkOut : " + checkOut);
//			System.out.println("adults : " + adults);
//			System.out.println("children : " + children);
//			System.out.println("roomCnt : " + roomCnt);
//			System.out.println("adultsBf : " + adultsBf);
//			System.out.println("childrenBf : " + childrenBf);
//			System.out.println("extraBed : " + extraBed);
//			System.out.println("adultsBfP : " + adultsBfP);
//			System.out.println("childrenBfP : " + childrenBfP);
//			System.out.println("extraBedP : " + extraBedP);
//			System.out.println("roomPrice : " + roomPrice);
//			System.out.println("tax : " + tax);
//			System.out.println("totalPrice : " + totalPrice);
//			System.out.println("cmt : " + cmt);
//			System.out.println("rsvName : " + rsvName);
//			System.out.println("engNm : " + engNm);
//			System.out.println("nationality : " + nationality);
//			System.out.println("phoneNum : " + phoneNum);
//			System.out.println("email : " + email);
//			System.out.println("cardType : " + cardType);
//			System.out.println("cardNum : " + cardNum);
//			System.out.println("expDate : " + expDate);
//			System.out.println("cardPw : " + cardPw);
//			System.out.println("birth : " + birth);
			
			ReserveInfo reserve = new ReserveInfo();
			
			reserve.setReserveId(id);
			reserve.setGender(gender);
			reserve.setGrpCd(grpCd);
			reserve.setCheckIn(checkIn);
			reserve.setCheckOut(checkOut);
			reserve.setAdults(Integer.parseInt(adults));
			reserve.setChildren(Integer.parseInt(children));
			//reserve.setroomCnt(roomCnt);
			reserve.setAdultsBf(Integer.parseInt(adultsBf));
			reserve.setChildrenBf(Integer.parseInt(childrenBf));
			reserve.setExtraBed(Integer.parseInt(extraBed));
			reserve.setAdultsBfP(adultsBfP);
			reserve.setChildrenBfP(childrenBfP);
			reserve.setExtraBedP(extraBedP);
			reserve.setRoomPrice(roomPrice);
			reserve.setTax(tax);
			reserve.setTotalPrice(totalPrice);
			reserve.setCmt(cmt);
			reserve.setRsvName(rsvName);
			reserve.setEngName(engNm);
			reserve.setNationality(nationality);
			reserve.setPhoneNum(phoneNum);
			reserve.setEmail(email);
			reserve.setCardType(cardType);
			reserve.setCardNum(cardNum);
			reserve.setExpDate(expDate);
			reserve.setCardPw(cardPw);
			reserve.setBirth(birth);
			
			String roomCd = "";
			roomCd = dao.insertRsvInfo(reserve);
			
			if(!roomCd.equals("")) {
				//{"retCode":"success", "roomCd":?}
				//out.println("{\"retCode\":\"success\", \"roomCd\":\""+ roomCd +"\"}");
				response.getWriter().println("{\"retCode\":\"success\", \"roomCd\":\""+ roomCd +"\"}");
				System.out.println("{\"retCode\":\"success\", \"roomCd\":\""+ roomCd +"\"}");
			} else {
				// {"retCode":"fail"}
				//out.println("{\"retCode\":\"fail\"}");
				response.getWriter().println("{\"retCode\":\"fail\"}");
				System.out.println("{\"retCode\":\"fail\"}");
			}
		} else if (cmd.equals("chkRsv")) {
			System.out.println("<h1>조회확인페이지입니다</h1>");
			
			String bookingCd = request.getParameter("bookingCd");
			
			List<ReserveInfo> list = dao.getRsvInfo(bookingCd);
			
			out.println(gson.toJson(list));
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
