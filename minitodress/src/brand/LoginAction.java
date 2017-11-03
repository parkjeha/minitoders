package brand;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberDTO;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAction() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost loginAction");
		HttpSession session = request.getSession();
		
		String id = request.getParameter("input_id"); 
		String pw = request.getParameter("input_pw");
		
		System.out.println(id);
		System.out.println(pw);
		
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto = new MemberDTO();
	
	session.removeAttribute("shopid");
	session.setAttribute("longinUser", mDto ); //세션이름
	
	RequestDispatcher dis = request.getRequestDispatcher("");
	dis.forward(request, response);

	}	

}
