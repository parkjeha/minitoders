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
 * Servlet implementation class MiniLogin
 */
@WebServlet("/MiniLogin")
public class MiniLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MiniLogin() {
        super();
     
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		HttpSession session = request.getSession();
		
		String shopid = request.getParameter("login_id").trim();
		String shoppw = request.getParameter("login_pw").trim();
		
		
		
		MemberDTO memberDto = new MemberDTO();
		MemberDAO memberDao = new MemberDAO();
		memberDto = memberDao.cklogin(shopid, shoppw);
		
		String code;
		// 로그인 체크
		if(memberDto.getShopid() != null && memberDto.getShoppw() != null){
			//전에 남아있던 아이디(찌거기) 값 초기화
			session.removeAttribute("shopid");
			session.setAttribute("loginUser", memberDto);
		
			code = "Main.jsp";
			
		} else {
			
			code = "LoginPage.jsp";
			request.setAttribute("code", "2");
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher(code);
		dis.forward(request, response);
	}

}
