package mini;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberDTO;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet implementation class MiniJoiner
 */
@WebServlet("/MiniJoiner")
public class MiniJoiner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MiniJoiner() {
        super();
        // TODO Auto-generated constructor stub
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
		
			request.setCharacterEncoding("UTF-8");
			
			String shopid = request.getParameter("shopid");
			String shoppw = request.getParameter("shoppw");
			String shopname = request.getParameter("shopname");
			String shopzipnum = request.getParameter("shopzipnum");
			String shopaddres1 = request.getParameter("shopaddres1");
			String shopaddres2 = request.getParameter("shopaddres2");
			String shopphone = request.getParameter("shopphone");
			String shopemail = request.getParameter("shopemail");
			
			MemberDTO memberDto = new MemberDTO(shopid, shoppw, shopname, shopzipnum, shopaddres1, shopaddres2, shopphone, shopemail);
			MemberDAO memberDao = new MemberDAO();
			memberDao.MemberJoin(memberDto);
			
			// ("설정할 이름", 받을 변수이름)  을 담는다.
			request.setAttribute("shopname", shopname);
			// forward 방식으로 이동할 페이지 설정
			RequestDispatcher dis = request.getRequestDispatcher("welcome.jsp");
			dis.forward(request, response);
	}

}
