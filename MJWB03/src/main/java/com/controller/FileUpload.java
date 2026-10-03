package com.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.Dao.Database;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/FileUploadServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5) // 5MB limit
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUpload() {
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
		 PrintWriter out = response.getWriter();
	        Part filePart = request.getPart("file");
	        String filename=request.getParameter("file_name");
	        if (filePart != null) {
	            InputStream inputStream = filePart.getInputStream();
	                 BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
	                
	                StringBuilder fileContent = new StringBuilder();
	                String line;
	                while ((line = reader.readLine()) != null) {
	                    fileContent.append(line).append("\n");
	                }
	                HttpSession session=request.getSession();
	                String s=(String)session.getAttribute("user");
	                Random random = new Random();
	                int randomNumber = 10000 + random.nextInt(90000); // Generates a number between 10000 and 99999
	                System.out.println("Random 5-digit number: " + randomNumber);
	                
	                try {
	                // Store content in the database
	               
	                Connection conn = Database.getConnection();
	                
	                String sql = "INSERT INTO uploaded_files  VALUES (?,?,?,?,?,?)";
	                PreparedStatement stmt = conn.prepareStatement(sql);
	                
	                
	                stmt.setInt(1, randomNumber);
	                stmt.setString(2, filename);
	                stmt.setString(3, fileContent.toString());
	                stmt.setString(4, s);
	                stmt.setString(5, "No Modified Data");
	                stmt.setString(6, "editor Approvement");
	                int result = stmt.executeUpdate();
	                if (result > 0) {
	                    out.println("<h2>File uploaded and stored successfully!</h2>");
	                response.sendRedirect("uhome.jsp");
	                } else {
	                    out.println("<h2>File upload failed.</h2>");
	                }
	                
	                stmt.close();
	                conn.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	                out.println("<h2>Error: " + e.getMessage() + "</h2>");
	            }
	        } else {
	            out.println("<h2>No file uploaded!</h2>");
	        }
	}

}
