package com.Login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBConnection;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("UserName");
		String password = request.getParameter("password");
		String sql ="SELECT password FROM admin where username='"+name+"'";
		Connection con;
		PreparedStatement st;
		try {
			con = DBConnection.getConnection();

			st = con.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery(sql);
		
			String pwd = null;
			while (rs.next()) {
				pwd = rs.getString("password");
			}
			if (password.equalsIgnoreCase(pwd)) {
				System.out.println("Login succesfull");
				request.getRequestDispatcher("admindashboard.jsp").forward(request, response);
			}

			else {
				request.setAttribute("error", "Invalid username/password.");
				request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}