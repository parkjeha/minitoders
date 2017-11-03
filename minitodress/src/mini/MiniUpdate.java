package mini;

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

/**
 * Servlet implementation class JoinUpdate
 */
@WebServlet("/MiniUpdate")
public class MiniUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MiniUpdate() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doGet Update");
		HttpSession session = request.getSession();
		session.getAttribute("loginUser");
	
		if(session.getAttribute("loginUser") == null){
			response.sendRedirect("LoginPage.jsp");
			System.out.println("로그인이 안되있음");
		
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("Update.jsp");
			dis.forward(request, response);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("doPost Update");
		
		request.setCharacterEncoding("UTF-8");
		
		String shoppw = request.getParameter("updatepw");
		String shopname = request.getParameter("updatename");
		String shopzipnum = request.getParameter("updatezipnum");
		String shopaddres1 = request.getParameter("updateaddres1");
		String shopaddres2 = request.getParameter("updateaddres2");
		String shopphone = request.getParameter("updatephone");
		String shopemail = request.getParameter("updateemail");
		String shopid = request.getParameter("updateid");
		
		MemberDTO memberDto = new MemberDTO(shopid, shoppw, shopname, shopzipnum, shopaddres1, shopaddres2, shopphone, shopemail);
		MemberDAO memberDao = new MemberDAO();
		memberDao.MemberUpdate(memberDto);
		
		RequestDispatcher dis = request.getRequestDispatcher("Main.jsp");
		dis.forward(request, response);
		
		
	}

}
