package employee.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import employee.model.service.EmployeeService;
import employee.model.vo.Employee;

/**
 * Servlet implementation class EmpAdminListServlet
 */
@WebServlet("/emplist.ad")
public class EmpAdminListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpAdminListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 관리자용 회원 전체 조회 처리용 컨트롤러
		
		HttpSession session = request.getSession();
		
		ArrayList<Employee> list = new EmployeeService().selectList(session.getAttribute("comp"));
				
		RequestDispatcher view = null;
			if(list.size() > 0) {
				view = request.getRequestDispatcher("views/groupware/employee/gwAdminListView.jsp");
				request.setAttribute("list", list);
				view.forward(request, response);
			}else {
				view = request.getRequestDispatcher("views/groupware/common/error.jsp");
				request.setAttribute("message", "회원 전체 조회 실패!");
				view.forward(request, response);
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
