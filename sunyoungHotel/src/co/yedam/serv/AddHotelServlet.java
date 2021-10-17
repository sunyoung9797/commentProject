package co.yedam.serv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.hotel.HotelDAO;
import co.yedam.hotel.HotelVO;

@WebServlet("/AddHotelServlet")
public class AddHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddHotelServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String identity = request.getParameter("identity");
		String email = request.getParameter("email");
		String call = request.getParameter("call");
		
		System.out.println("id: " + id + ",password: " + password + ",name: " + name + ",identity: " + identity + ",email: " + email  + ",call: " + call);
		
		HotelVO hotel = new HotelVO();
		hotel.setId(id);
		hotel.setPassword(password);
		hotel.setName(name);
		hotel.setIdentityNumber(Integer.parseInt(identity));
		hotel.setEmail(email);
		hotel.setCallNumber(Integer.parseInt(call));
		
		HotelDAO dao = new HotelDAO();
		PrintWriter out = response.getWriter();
		if (dao.insertHotel(hotel)) {
			// {"id":"?","password":"?","name":"?","identity":"?","email":"?","call":"?"}
			out.println("{\"id\":\""+id+"\",\"password\":\""+password+"\",\"name\":\""+name+"\",\"identity\":\""+identity+"\",\"email\":\""+email+"\",\"call\":\""+call+"\"}");
			
		} else {
			out.println("{\"msg\":\"실행중 에러가 발생\"}");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
