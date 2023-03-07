package com.assessment.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;
		try
		{
		String firstName=request.getParameter("ufname");
		String secondName=request.getParameter("ulname");
		long phone=Integer.parseInt(request.getParameter("uphone"));
		String email=request.getParameter("uemail");
		String[] languege=request.getParameterValues("languege");
		String password=request.getParameter("upassword");
	
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/client","root","root");
			con.setAutoCommit(false);
			
			
			PreparedStatement psmt=con.prepareStatement("insert into user values(?,?,?,?,?)");
			psmt.setString(1, firstName);
			psmt.setString(2, secondName);
			psmt.setLong(3, phone);
			psmt.setString(4, email);
			psmt.setString(5, password);
			
			
			int count=psmt.executeUpdate();
			
//			if(count>0)
//			{
//				for(int i=0;i<languege.length;i++)
//				{
//					System.out.println(languege[i]);
//					PreparedStatement ps=con.prepareStatement("insert into languege values(?,?)");
//					
//					ps.setString(1, email);
//					ps.setString(2, languege[i]);
//					ps.execute();
//				}
//				con.commit();
//			}
//			}catch(NumberFormatException e)
//			{
//				response.setContentType("text/html");
//				PrintWriter pw=response.getWriter();
//				pw.print("Number missing");
//				con.rollback();
//				
//			}
			
		
			
			for(int i=0;i<languege.length;i++)
			{
				System.out.println(languege[i]);
				PreparedStatement ps=con.prepareStatement("insert into languege values(?,?)");
				
				ps.setString(1, email);
				ps.setString(2, languege[i]);
				ps.execute();
			}
			if(count>0)
			{
				PrintWriter out = response.getWriter();
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Register Successfully');");
				out.println("location='Selection.jsp';");
				out.println("</script>");
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		}
	}


