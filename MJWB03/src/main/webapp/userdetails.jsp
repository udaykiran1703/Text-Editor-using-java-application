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
  <title>User Details - Admin Panel</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #232526, #414345);
      color: #fff;
    }

    .navbar {
      background: rgba(0,0,0,0.7);
      display: flex;
      justify-content: center;
      padding: 15px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.3);
    }

    .navbar a {
      margin: 0 20px;
      text-decoration: none;
      color: #00f2fe;
      font-weight: 600;
      padding: 8px 16px;
      border-radius: 5px;
      transition: 0.3s ease;
    }

    .navbar a:hover {
      background-color: #00f2fe;
      color: #111;
    }

    .container {
      padding: 30px;
      max-width: 1000px;
      margin: 0 auto;
    }

    h1 {
      text-align: center;
      margin-bottom: 30px;
      color: #00f2fe;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background-color: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(10px);
      border-radius: 10px;
      overflow: hidden;
    }

    th, td {
      padding: 12px 16px;
      text-align: left;
      border-bottom: 1px solid #444;
    }

    th {
      background-color: rgba(0, 242, 254, 0.2);
      color: #00f2fe;
    }

    tr:hover {
      background-color: rgba(255,255,255,0.1);
    }

    @media screen and (max-width: 768px) {
      .navbar {
        flex-direction: column;
        align-items: center;
      }

      table, thead, tbody, th, td, tr {
        display: block;
      }

      thead {
        display: none;
      }

      tr {
        margin-bottom: 15px;
      }

      td {
        padding-left: 50%;
        position: relative;
      }

      td::before {
        content: attr(data-label);
        position: absolute;
        left: 10px;
        top: 12px;
        font-weight: bold;
        color: #00f2fe;
      }
    }
  </style>
</head>
<body>

  <!-- Navigation -->
  <div class="navbar">
    <a href="adminDashboard.jsp">Home</a>
    <a href="userdetails.jsp">View User Details</a>
    <a href="filedetails.jsp">View File Details</a>
    <a href="index.html">Logout</a>
  </div>

  <div class="container">
    <h1>Registered Users</h1>
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Mobile</th>
          <th>Address</th>
        </tr>
      </thead>
      <tbody>
        <%
          Connection con = Database.getConnection();
          String sql = "SELECT * FROM users";
          PreparedStatement ps = con.prepareStatement(sql);
          ResultSet rs = ps.executeQuery();

          while (rs.next()) {
        %>
        <tr>
          <td data-label="ID"><%= rs.getInt(1) %></td>
          <td data-label="Name"><%= rs.getString(2) %></td>
          <td data-label="Email"><%= rs.getString(3) %></td>
          <td data-label="Mobile"><%= rs.getString(4) %></td>
          <td data-label="Address"><%= rs.getString(6) %></td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>

</body>
</html>
