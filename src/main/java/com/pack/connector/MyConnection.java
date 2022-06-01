package com.pack.connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MyConnection {

	public static void main(String[] args) {
		   try {
			   Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");//Establishing connection
			   System.out.println("Connected With the database successfully");
			   //Creating PreparedStatement object
			   PreparedStatement preparedStatement=connection.prepareStatement("insert into adminlogin values(?,?,?)");
			   //Setting values for Each Parameter
			   preparedStatement.setString(1,"1");
			            preparedStatement.setString(2,"Mehtab");
			            preparedStatement.setString(3, "Computer");
			           
			            //Executing Query
			            preparedStatement.executeUpdate();
			            System.out.println("data inserted successfully");
			   } catch (SQLException e) {
			   System.out.println("Error while connecting to the database");
			   }
			   }
			    
			   }