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
 * Servlet implementation class PatientLoginServlet
 */
@WebServlet("/PatientLoginServlet")
public class PatientLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String id;
    
    public PatientLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("name");
		String password = request.getParameter("password");

		System.out.println("username: " + username);
		System.out.println("password: " + password);
		String sql ="SELECT * FROM patient where name='"+username+"'";
		Connection con;
		PreparedStatement st;
		try {
			con = DBConnection.getConnection();

			st = con.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery(sql);
			
		
			String pwdd = null;
			while (rs.next()) {
				pwdd = rs.getString("password");
				id= Integer.toString(rs.getInt("pid"));
			}
			if (password.equalsIgnoreCase(pwdd)) {
				System.out.println("Login");
				request.getRequestDispatcher("patientPage.jsp?Pid="+id+"").forward(request, response);
			}

			else {
				request.setAttribute("error", "Invalid username/password.");
				request.getRequestDispatcher("patientlogin.jsp").forward(request, response);
			}
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}