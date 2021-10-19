package co.yedam.serv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.hotel.HotelDAO;

@WebServlet("/LoginHotelServlet")
public class LoginHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginHotelServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		HotelDAO dao = new HotelDAO();
		int result = dao.login(id, password);
		if(result == 1) {
			out.println("{\"msg\":\"로그인 성공입니다.\"}");
		} else if(result == 0) {
			out.println("{\"msg\":\"로그인 실패입니다.\"}");
		} else if (result == -1) {
			out.println("{\"msg\":\"존재하지 않는 아이디입니다.\"}");
		} else if (result == -2) {
			out.println("{\"msg\":\"데이터베이스에 오류가 발생했습니다.\"}");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
