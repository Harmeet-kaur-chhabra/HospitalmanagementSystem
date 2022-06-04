package com.Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DBConnection;

/**
 * Servlet implementation class DocterLoginServlet
 */
@WebServlet("/DocterLoginServlet")
public class DocterLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String id;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocterLoginServlet() {
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
		PrintWriter out=response.getWriter();
				
		String name= request.getParameter("name");
		String password= request.getParameter("password");
		
		String sql ="SELECT * FROM doctor where name='"+name+"'";
		Connection con;
		PreparedStatement st;
		
		try {
			con = DBConnection.getConnection();

			st = con.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery(sql);
		
			String pwd = null;
			while (rs.next()) {
				password = rs.getString("password");
				id= Integer.toString(rs.getInt("did"));
			}
			if (password.equalsIgnoreCase(pwd)) {
				System.out.println("Login");
				request.getRequestDispatcher("doctordash.jsp?did="+id+"&name="+name+"").forward(request, response);
				
				out.println("login invalid");
			}

			else {
				request.setAttribute("error", "Invalid username/password.");
				request.getRequestDispatcher("docterlogin.jsp").forward(request, response);
				out.println("login invalid"+"home.jsp");
			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}