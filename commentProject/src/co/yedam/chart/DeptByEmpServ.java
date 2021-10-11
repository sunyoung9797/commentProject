package co.yedam.chart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;

@WebServlet("/DeptByEmpServ")
public class DeptByEmpServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeptByEmpServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		EmpDAO dao = new EmpDAO();
		Map<String, Integer> map = dao.getDeptByEmp();
		Set<Entry<String, Integer>>set = map.entrySet(); // 반복된 내용은 받아 주지 않는 set컬렉션
		JsonArray outerAry = new JsonArray();
		for(Entry<String, Integer> entry : set) {
			JsonArray innerAry = new JsonArray();
			innerAry.add(entry.getKey());
			innerAry.add(entry.getValue());
			outerAry.add(innerAry);
		}
		
		Gson gson = new GsonBuilder().create();
		out.println(gson.toJson(outerAry));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
