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
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
