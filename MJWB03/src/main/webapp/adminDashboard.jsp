<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<style>
  body {
    margin: 0;
    padding: 0;
    background: linear-gradient(to right, #141e30, #243b55);
    font-family: 'Poppins', sans-serif;
    color: #fff;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .container {
    background: rgba(255, 255, 255, 0.05);
    border-radius: 16px;
    padding: 40px;
    width: 350px;
    box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
    backdrop-filter: blur(10px);
    text-align: center;
  }

  h2 {
    margin-bottom: 30px;
    color: #00ffff;
  }

  .nav-links {
    display: flex;
    flex-direction: column;
    gap: 20px;
  }

  .nav-links a {
    text-decoration: none;
    padding: 12px;
    background-color: rgba(0, 255, 255, 0.1);
    color: #00ffff;
    border: 1px solid #00ffff;
    border-radius: 10px;
    transition: all 0.3s ease-in-out;
    font-weight: 600;
  }

  .nav-links a:hover {
    background-color: #00ffff;
    color: #141e30;
    transform: scale(1.05);
  }

  @media screen and (max-width: 480px) {
    .container {
      width: 90%;
      padding: 25px;
    }

    .nav-links a {
      font-size: 14px;
    }
  }
</style>
</head>
<body>

<div class="container">
  <h2>Admin Dashboard</h2>
  <div class="nav-links">
    <a href="userdetails.jsp"> View User Details</a>
    <a href="filedetails.jsp"> View File Details</a>
    <a href="index.html"> Logout</a>
  </div>
</div>

</body>
</html>
