package com.SignUp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBConnection;

/**
 * Servlet implementation class DocterReg
 */
@WebServlet("/DocterReg")
public class DocterReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocterReg() {
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
		//doGet(request, response);
		String insertquery = "INSERT INTO docter VALUE(?,?,?,?,?,?,?,?,?)";
		Connection con;
		try {
			con = DBConnection.getConnection();
			PreparedStatement st = con.prepareStatement(insertquery);
			
			st.setInt(1, Integer.parseInt(request.getParameter("did")));
			st.setString(2, request.getParameter("name"));


			st.setString(3, request.getParameter("address"));

			st.setString(4, request.getParameter("password"));
			st.setString(5, request.getParameter("number"));
			st.setInt(6, Integer.parseInt(request.getParameter("age")));
			st.setString(7, request.getParameter("gender"));
			st.setString(8, request.getParameter("degree"));
			st.setString(9, request.getParameter("specification"));
			
			int row = st.executeUpdate();
			System.out.println(row + " row inserted");
			PrintWriter out = response.getWriter();
			out.print("Sucessfully inserted" + row);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}