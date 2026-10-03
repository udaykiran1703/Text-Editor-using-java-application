<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Dao.Database"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editor Review Panel</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
    color: #fff;
  }

  .container {
    max-width: 1100px;
    margin: auto;
    padding: 30px 20px;
  }

  h2 {
    text-align: center;
    color: #00ffff;
    margin-bottom: 30px;
  }

  .nav-links {
    display: flex;
    justify-content: center;
    gap: 30px;
    margin-bottom: 40px;
  }

  .nav-links a {
    text-decoration: none;
    padding: 12px 25px;
    background: rgba(255, 255, 255, 0.1);
    color: #00ffff;
    border-radius: 8px;
    transition: background 0.3s;
  }

  .nav-links a:hover {
    background: rgba(0, 255, 255, 0.2);
  }

  table {
    width: 100%;
    border-collapse: collapse;
    background: rgba(255, 255, 255, 0.05);
    box-shadow: 0 0 15px rgba(0, 255, 255, 0.1);
    border-radius: 10px;
    overflow: hidden;
  }

  th, td {
    padding: 15px 12px;
    text-align: center;
    font-size: 15px;
  }

  thead {
    background-color: rgba(0, 255, 255, 0.1);
  }

  tbody tr:hover {
    background-color: rgba(255, 255, 255, 0.08);
  }

  .no-data {
    margin-top: 30px;
    text-align: center;
    color: #ff8080;
    font-size: 18px;
  }

  @media (max-width: 768px) {
    table, th, td {
      font-size: 12px;
    }

    .nav-links {
      flex-direction: column;
      gap: 15px;
    }
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

  <h2> Approved Files by Editor</h2>

  <%
    String user = (String) session.getAttribute("user");
    Connection con = Database.getConnection();
    String sql = "SELECT * FROM uploaded_files WHERE Approvement='Approved'";
    PreparedStatement ps = con.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();

    boolean hasData = false;
  %>

  <table>
    <thead>
      <tr>
        <th>File Id</th>
        <th>File Name</th>
        <th>Edited Data</th>
      </tr>
    </thead>
    <tbody>
      <%
        while (rs.next()) {
          hasData = true;
      %>
      <tr>
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(5) %></td>
      </tr>
      <%
        }
      %>
    </tbody>
  </table>

  <% if (!hasData) { %>
    <div class="no-data"> No Approval Found from Editor</div>
  <% } %>
</div>

</body>
</html>
