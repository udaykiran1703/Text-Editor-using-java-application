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
<title>Approved Files | EditPro</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap"
	rel="stylesheet">
<style>
body {
	margin: 0;
	padding: 30px 20px;
	font-family: 'Inter', sans-serif;
	background: linear-gradient(to right, #141e30, #243b55);
	color: #fff;
	min-height: 100vh;
}

.card-grid {
	display: flex;
	justify-content: center;
	gap: 25px;
	flex-wrap: wrap;
	margin-bottom: 40px;
}

.card {
	background: rgba(255, 255, 255, 0.05);
	padding: 20px 30px;
	border-radius: 10px;
	backdrop-filter: blur(10px);
	box-shadow: 0 0 20px rgba(0, 255, 255, 0.1);
	transition: transform 0.3s ease;
	text-align: center;
}

.card a {
	text-decoration: none;
	color: #00ffe7;
	font-weight: 600;
	font-size: 16px;
}

.card:hover {
	transform: translateY(-5px);
	background-color: rgba(0, 255, 255, 0.08);
}

h2 {
	text-align: center;
	margin-top: 30px;
	color: #00ffe7;
}

table {
	width: 90%;
	margin: 30px auto;
	border-collapse: collapse;
	background: rgba(255, 255, 255, 0.05);
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 0 25px rgba(0, 255, 255, 0.1);
}

thead {
	background-color: rgba(0, 255, 255, 0.08);
}

th, td {
	padding: 15px;
	text-align: center;
	font-size: 14px;
}

tr:not(:last-child) {
	border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

.no-data {
	text-align: center;
	font-size: 18px;
	margin-top: 40px;
	color: #ff6f61;
}

@media ( max-width : 768px) {
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

	<!-- Action Cards -->
	<div class="card-grid">
	
	    <div class="card">
			<a href="uhome.jsp">Home</a>
		</div>
		<div class="card">
			<a href="Upload.jsp"> Upload Files</a>
		</div>
		<div class="card">
			<a href="ViewUploadeddata.jsp"> View Data</a>
		</div>
		<div class="card">
			<a href="EditContent.jsp">Edit Content</a>
		</div>
		<div class="card">
			<a href="login.html"> Logout</a>
		</div>
	</div>

	<h2>Approved Files by Editor</h2>

	<%
  String user = (String) session.getAttribute("user");
  Connection con = Database.getConnection();
  String sql = "SELECT * FROM uploaded_files WHERE userid=? AND Approvement='Approved'";
  PreparedStatement ps = con.prepareStatement(sql);
  ps.setString(1, user);
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
				<td><%=rs.getInt(1) %></td>
				<td><%=rs.getString(2)%></td>

				<td><%=rs.getString(5) %></td>
			</tr>
			<%
      }
    %>
		</tbody>
	</table>

	<% if (!hasData) { %>
	<div class="no-data">No Approval Found from Editor</div>
	<% } %>

</body>
</html>
