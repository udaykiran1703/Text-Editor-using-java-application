package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.Database;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit() {
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
		
		
		String name=request.getParameter("fid");
		String fname=request.getParameter("fname");
		String newdata=request.getParameter("newdata");
		try {
		String sql="update uploaded_files set Edited_Data='"+newdata+"' where File_id='"+name+"'";
		Connection con=Database.getConnection();
		PreparedStatement ps=con.prepareStatement(sql);
		int i=ps.executeUpdate();
		if (i > 0) {
            request.setAttribute("message", "Data updated successfully!");
        } else {
            request.setAttribute("message", "Failed to update data. Try again.");
        }
        
        request.getRequestDispatcher("EditContent.jsp").forward(request, response);
    } catch (Exception e) {
        e.printStackTrace();
        request.setAttribute("message", "Error occurred while updating.");
        request.getRequestDispatcher("edit.jsp").forward(request, response);
    }
		
		}

}
