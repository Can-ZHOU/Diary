package web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.User;
import util.DbUtil;

public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	DbUtil dbUtil = new DbUtil();
	UserDao userDao = new UserDao();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		Connection con = null;
		try {
			con = dbUtil.getCon();
			User user = new User(userName, password);
			User currentUser = userDao.login(con, user);
			if(currentUser==null) {
				System.out.println("error");
			} else {
				System.out.println("success");
				session.setAttribute("currentUser", currentUser);
				response.sendRedirect("main.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	
}
