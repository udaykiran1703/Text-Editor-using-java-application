<%@page import="com.Dao.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>Editor Review Panel</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Inter', sans-serif;
      background: linear-gradient(to right, #3a7bd5, #00d2ff);
      margin: 0;
      padding: 40px 20px;
      color: #333;
    }

    .container {
      max-width: 1100px;
      margin: auto;
      background: rgba(255, 255, 255, 0.9);
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #2c3e50;
    }

    .nav-links {
      text-align: center;
      margin-bottom: 25px;
    }

    .nav-links a {
      margin: 0 10px;
      text-decoration: none;
      color: #007bff;
      font-weight: 600;
      padding: 8px 16px;
      border-radius: 8px;
      background: #e0f0ff;
      transition: background 0.3s;
    }

    .nav-links a:hover {
      background: #007bff;
      color: white;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 10px;
    }

    thead {
      background-color: #007bff;
      color: white;
    }

    th, td {
      padding: 14px 16px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    tr:hover {
      background-color: #f1f1f1;
    }

    .btn {
      padding: 8px 14px;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      text-decoration: none;
      margin-right: 6px;
    }

    .approve-btn {
      background-color: #28a745;
      color: white;
    }

    .reject-btn {
      background-color: #dc3545;
      color: white;
    }

    .btn:hover {
      opacity: 0.85;
    }
  </style>
</head>
<body>

  <div class="container">
    <h2>Editor Review Panel - Files Awaiting Approval</h2>

    <div class="nav-links">
      <a href="editorDashboard.jsp">Home</a>
      <a href="editedData.jsp"> View Documents</a>
      <a href="approvedbyeditor.jsp"> View Recent</a>
      <a href="index.html"> Logout</a>
    </div>

    <table>
      <thead>
        <tr>
          <th>File ID</th>
          <th>File Name</th>
          <th>File Content</th>
          <th>Edited Data</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <%
          String user = (String) session.getAttribute("user");
          Connection con = Database.getConnection();
          String sql = "SELECT * FROM uploaded_files WHERE Approvement='editor Approvement'";
          PreparedStatement ps = con.prepareStatement(sql);
          ResultSet rs = ps.executeQuery();

          while (rs.next()) {
        %>
        <tr>
          <td><%= rs.getInt(1) %></td>
          <td><%= rs.getString(2) %></td>
          <td><%= rs.getString(3) %></td>
          <td><%= rs.getString(5) %></td>
          <td>
            <a class="btn approve-btn"
              href="Approve.jsp?fileid=<%= rs.getInt(1) %>&filename=<%= rs.getString(2) %>&fileContent=<%= rs.getString(3) %>&newdata=<%= rs.getString(5) %>">
              Approve
            </a>
            <a class="btn reject-btn"
              href="Reject.jsp?fileid=<%= rs.getInt(1) %>&filename=<%= rs.getString(2) %>&fileContent=<%= rs.getString(3) %>&newdata=<%= rs.getString(5) %>">
              Reject
            </a>
          </td>
        </tr>
        <% } %>
      </tbody>
    </table>
  </div>

</body>
</html>
