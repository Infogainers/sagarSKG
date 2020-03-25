package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.dao;

/**
 * Servlet implementation class Loginprocess
 */
public class Loginprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginprocess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("un");
		String pwd=request.getParameter("pwd"); 
		String role=request.getParameter("role");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		if(!username.isEmpty()||!pwd.isEmpty()||!role.isEmpty()) {
			
			try
			{
				if(dao.check(username,pwd,role))
				{
					out.println("Login Success");
					if(role.equalsIgnoreCase("Engineer"))
					{
						request.getRequestDispatcher("engineer_form.jsp").include(request, response);
					}
					else if(role.equalsIgnoreCase("Manager"))
					{
						request.getRequestDispatcher("manager_form.jsp").forward(request, response);
					}
					else if(role.equalsIgnoreCase("BM"))
					{
						request.getRequestDispatcher("BMLogin.jsp").forward(request, response);
					}
					else
					{
						out.println("Error");
					}
				}
				else {
					out.println("Sorry, Access is denied");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			request.getRequestDispatcher("index.jsp").include(request, response);
		}
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
