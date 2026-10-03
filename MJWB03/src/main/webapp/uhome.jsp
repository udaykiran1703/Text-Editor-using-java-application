<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>User Dashboard | EditPro</title>
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
      height: 100vh;
      background: linear-gradient(to right, #141e30, #243b55);
      display: flex;
      flex-direction: column;
      color: #fff;
    }

    nav {
      width: 100%;
      padding: 20px 60px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(10px);
      position: fixed;
      top: 0;
      z-index: 1000;
    }

    .nav-logo {
      font-size: 22px;
      font-weight: bold;
      color: #00ffe7;
    }

    .nav-links a {
      margin-left: 25px;
      color: #fff;
      text-decoration: none;
      font-weight: 500;
      position: relative;
      transition: color 0.3s ease;
    }

    .nav-links a::after {
      content: "";
      height: 2px;
      background: #00ffe7;
      width: 0%;
      position: absolute;
      left: 0;
      bottom: -5px;
      transition: width 0.3s ease;
    }

    .nav-links a:hover::after {
      width: 100%;
    }

    main {
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding-top: 100px;
    }

    .welcome {
      font-size: 28px;
      font-weight: 600;
      margin-bottom: 30px;
      color: #00ffe7;
      text-align: center;
    }

    .card-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 25px;
      width: 80%;
      max-width: 1000px;
    }

    .card {
      background: rgba(255, 255, 255, 0.05);
      border-radius: 15px;
      padding: 30px 20px;
      text-align: center;
      backdrop-filter: blur(10px);
      box-shadow: 0 0 20px rgba(0, 255, 255, 0.1);
      transition: transform 0.3s ease, background 0.3s ease;
    }

    .card:hover {
      transform: translateY(-5px);
      background: rgba(0, 255, 255, 0.07);
    }

    .card a {
      text-decoration: none;
      color: #ffffff;
      font-weight: 500;
      font-size: 18px;
      display: block;
    }

    @media (max-width: 768px) {
      nav {
        padding: 15px 30px;
        flex-direction: column;
        align-items: flex-start;
      }

      .nav-links {
        margin-top: 10px;
      }

      main {
        padding-top: 120px;
      }

      .welcome {
        font-size: 22px;
      }
    }
  </style>
</head>
<body>

<%
  String user = (String) session.getAttribute("user");
%>

<!-- Navigation Bar -->
<nav>
  <div class="nav-logo">EditPro</div>
  <div class="nav-links">
    <a href="Upload.jsp">Transfer</a>
    <a href="ViewUploadeddata.jsp">View Data</a>
    <a href="EditContent.jsp">Edit Content</a>
    <a href="login.html">Logout</a>
  </div>
</nav>

<!-- Main Content -->
<main>
  <div class="welcome"> Welcome, <%= user %>!</div>

  <div class="card-grid">
    <div class="card">
      <a href="Upload.jsp"> Upload Files</a>
    </div>
    <div class="card">
      <a href="ViewUploadeddata.jsp"> View Data</a>
    </div>
    <div class="card">
      <a href="EditContent.jsp"> Edit Content</a>
    </div>
    <div class="card">
      <a href="login.html"> Logout</a>
    </div>
  </div>
</main>

</body>
</html>
