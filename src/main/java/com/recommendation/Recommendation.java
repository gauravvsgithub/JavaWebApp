package com.recommendation;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.recommendation.dao.RecommendationDao;

@WebServlet("/Recommendation")
public class Recommendation extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String genre = request.getParameter("genre");
		
		RecommendationDao dao  = new RecommendationDao();
		ArrayList<String> movies = new ArrayList<>();
		movies = dao.check(genre);
		for(String movie:movies) System.out.println(movie+"\n");
		if(movies.size()!=0)
		{
			
//			HttpSession session = request.getSession();
			request.setAttribute("movies", movies);
			request.setAttribute("genre", genre);
//			response.sendRedirect("recommendtionResult.jsp");
			 RequestDispatcher rd = 
		             request.getRequestDispatcher("results.jsp");
			 
			 rd.forward(request, response);
	        
		}
		else
		{
			
			response.sendRedirect("recommendation.jsp");
		}
	}
}