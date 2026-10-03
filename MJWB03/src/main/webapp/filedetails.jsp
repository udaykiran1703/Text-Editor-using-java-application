<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Dao.Database"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>File Details - Admin Panel</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #141e30, #243b55);
      color: #fff;
    }

    .navbar {
      background: rgba(0, 0, 0, 0.6);
      display: flex;
      justify-content: center;
      padding: 16px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.4);
    }

    .navbar a {
      margin: 0 15px;
      text-decoration: none;
      color: #00c9ff;
      font-weight: 600;
      padding: 10px 20px;
      border-radius: 6px;
      transition: 0.3s;
    }

    .navbar a:hover {
      background-color: #00c9ff;
      color: #000;
    }

    .container {
      padding: 40px 20px;
      max-width: 1000px;
      margin: auto;
    }

    h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #00c9ff;
      font-size: 32px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(10px);
      border-radius: 10px;
      overflow: hidden;
    }

    th, td {
      padding: 14px 20px;
      text-align: left;
      border-bottom: 1px solid #444;
    }

    th {
      background-color: rgba(0, 201, 255, 0.2);
      color: #00c9ff;
    }

    tr:hover {
      background-color: rgba(255, 255, 255, 0.08);
    }

    @media screen and (max-width: 768px) {
      .navbar {
        flex-direction: column;
      }

      table, thead, tbody, th, td, tr {
        display: block;
      }

      thead {
        display: none;
      }

      tr {
        margin-bottom: 20px;
        background-color: rgba(255, 255, 255, 0.05);
        border-radius: 10px;
        padding: 10px;
      }

      td {
        padding-left: 50%;
        position: relative;
      }

      td::before {
        content: attr(data-label);
        position: absolute;
        left: 20px;
        top: 12px;
        font-weight: bold;
        color: #00c9ff;
      }
    }
  </style>
</head>
<body>

  <!-- Navigation Bar -->
  <div class="navbar">
    <a href="adminDashboard.jsp">Home</a>
    <a href="userdetails.jsp">View User Details</a>
    <a href="filedetails.jsp">View File Details</a>
    <a href="index.html">Logout</a>
  </div>

  <div class="container">
    <h2>Uploaded File Details</h2>
    <table>
      <thead>
        <tr>
          <th>File ID</th>
          <th>File Name</th>
          <th>Content</th>
          <th>User ID</th>
        </tr>
      </thead>
      <tbody>
        <%
          Connection con = Database.getConnection();
          String sql = "SELECT * FROM uploaded_files";
          PreparedStatement ps = con.prepareStatement(sql);
          ResultSet rs = ps.executeQuery();

          while (rs.next()) {
        %>
        <tr>
          <td data-label="File ID"><%= rs.getInt(1) %></td>
          <td data-label="File Name"><%= rs.getString(2) %></td>
          <td data-label="Content"><%= rs.getString(3) %></td>
          <td data-label="User ID"><%= rs.getString(4) %></td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>

</body>
</html>
