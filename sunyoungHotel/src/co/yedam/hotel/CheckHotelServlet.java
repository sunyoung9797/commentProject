package co.yedam.hotel;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.hotel.HotelDAO;


@WebServlet("/CheckHotelServlet")
public class CheckHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CheckHotelServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("checkId");

		PrintWriter out = response.getWriter();
		
		HotelDAO dao = new HotelDAO();
		if(dao.checkId(id)) {
			
			out.println("{\"retCode\":\"OK\"}");
			
		} else {
			
			out.println("{\"retCode\":\"NG\"}");
		}
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
