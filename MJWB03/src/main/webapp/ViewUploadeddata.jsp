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
  <title>User Files | EditPro</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Inter', sans-serif;
    }

    body {
      min-height: 100vh;
      background: linear-gradient(to right, #141e30, #243b55);
      color: #fff;
      padding: 40px 20px;
    }

    .card-grid {
      display: flex;
      justify-content: center;
      gap: 25px;
      flex-wrap: wrap;
      margin-bottom: 50px;
    }

    .card {
      background: rgba(255, 255, 255, 0.05);
      padding: 25px 30px;
      border-radius: 12px;
      backdrop-filter: blur(12px);
      box-shadow: 0 0 20px rgba(0, 255, 255, 0.15);
      transition: 0.3s;
      text-align: center;
    }

    .card a {
      color: #00ffe7;
      font-weight: 600;
      text-decoration: none;
      font-size: 16px;
    }

    .card:hover {
      background: rgba(0, 255, 255, 0.07);
      transform: translateY(-5px);
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
      font-size: 28px;
      color: #00ffe7;
    }

    table {
      width: 90%;
      max-width: 1000px;
      margin: auto;
      border-collapse: collapse;
      background: rgba(255, 255, 255, 0.05);
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 0 30px rgba(0, 255, 255, 0.1);
    }

    thead {
      background-color: rgba(0, 255, 255, 0.08);
    }

    th, td {
      padding: 16px;
      text-align: center;
      font-size: 14px;
    }

    tr:not(:last-child) {
      border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    }

    .edit-btn {
      background: #00ffe7;
      color: #1e1e1e;
      padding: 6px 12px;
      border-radius: 6px;
      font-weight: bold;
      text-decoration: none;
      transition: 0.3s ease;
    }

    .edit-btn:hover {
      background-color: #00cbbd;
    }

    @media (max-width: 768px) {
      .card-grid {
        flex-direction: column;
        align-items: center;
      }

      table {
        font-size: 12px;
      }
    }
  </style>
</head>
<body>

<%
  String user = (String) session.getAttribute("user");
%>

<!-- Action Cards -->
<div class="card-grid">
  <div class="card"><a href="uhome.jsp"> Home</a></div>
  <div class="card"><a href="Upload.jsp"> Upload Files</a></div>
  <div class="card"><a href="ViewUploadeddata.jsp"> View Data</a></div>
  <div class="card"><a href="EditContent.jsp"> Edit Content</a></div>
  <div class="card"><a href="login.html"> Logout</a></div>
</div>

<h2> Your Uploaded Files</h2>

<!-- File Table -->
<table>
  <thead>
    <tr>
      <th>File ID</th>
      <th>File Name</th>
      <th>Content</th>
      <th>User ID</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <%
      Connection con = Database.getConnection();
      String sql = "SELECT * FROM uploaded_files WHERE Userid = ?";
      PreparedStatement ps = con.prepareStatement(sql);
      ps.setString(1, user);
      ResultSet rs = ps.executeQuery();

      while (rs.next()) {
    %>
    <tr>
      <td><%= rs.getInt(1) %></td>
      <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(3) %></td>
      <td><%= rs.getString(4) %></td>
      <td>
        <a class="edit-btn" href="edit.jsp?fileid=<%= rs.getInt(1) %>&filename=<%= rs.getString(2) %>&fileContent=<%= rs.getString(3) %>&Userid=<%= rs.getString(4) %>">
          Edit
        </a>
      </td>
    </tr>
    <%
      }
    %>
  </tbody>
</table>

</body>
</html>
