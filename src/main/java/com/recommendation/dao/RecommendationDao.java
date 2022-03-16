package com.recommendation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RecommendationDao {

	public ArrayList<String> check(String genre)
	{
		ArrayList<String> Movies = new ArrayList<String>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:oracle:thin:@localhost:1521:xe","system","manager");  
			      
			PreparedStatement ps=con.prepareStatement(  
			"select * from Movies where genre=?");  
			ps.setString(1,genre);  
			ResultSet rs=ps.executeQuery();  
			
			while(rs.next())
			{
				Movies.add(rs.getString(1));
//				return Movies;
			}
		} catch (Exception e) { 
			e.printStackTrace();
			
		}
		return Movies;
	}
}