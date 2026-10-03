<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Editor Login | EditPro</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Fira+Code&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Fira Code', monospace;
    }

    body {
      height: 100vh;
      background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
      overflow: hidden;
      position: relative;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      color: #00ffcc;
    }

    /* Nav Bar */
    .navbar {
      width: 100%;
      position: fixed;
      top: 0;
      left: 0;
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(10px);
      padding: 15px 40px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      z-index: 999;
      border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    }

    .navbar .logo {
      color: #00ffcc;
      font-size: 20px;
      font-weight: bold;
    }

    .navbar .nav-links a {
      margin-left: 20px;
      color: #00ffcc;
      text-decoration: none;
      font-weight: 500;
      transition: color 0.3s;
    }

    .navbar .nav-links a:hover {
      color: #ffffff;
    }

    .header {
      text-align: center;
      font-size: 24px;
      font-weight: bold;
      padding: 15px 30px;
      border-radius: 10px;
      backdrop-filter: blur(12px);
      background-color: rgba(255, 255, 255, 0.05);
      box-shadow: 0 0 12px rgba(0, 255, 255, 0.2);
      margin-bottom: 30px;
      z-index: 2;
      margin-top: 70px;
    }

    .login-container {
      background: rgba(255, 255, 255, 0.05);
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 0 25px rgba(0, 255, 255, 0.2);
      backdrop-filter: blur(12px);
      text-align: center;
      width: 320px;
      z-index: 2;
    }

    .login-container h2 {
      font-size: 22px;
      margin-bottom: 20px;
    }

    .input-field {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      background-color: #1e1e1e;
      border: none;
      color: #00ffcc;
      border-radius: 8px;
      outline: none;
      font-size: 14px;
      transition: 0.3s;
    }

    .input-field:focus {
      box-shadow: 0 0 8px #00ffcc;
    }

    .login-btn {
      width: 100%;
      padding: 12px;
      margin-top: 15px;
      background-color: #00ffcc;
      border: none;
      border-radius: 8px;
      color: #1e1e1e;
      font-weight: bold;
      cursor: pointer;
      font-size: 15px;
      transition: background-color 0.3s ease;
    }

    .login-btn:hover {
      background-color: #00997a;
    }

    /* Background Circles */
    .circle {
      position: absolute;
      border-radius: 50%;
      background: rgba(0, 255, 255, 0.07);
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      box-shadow: 0 0 20px rgba(0, 255, 255, 0.3);
      animation: float 8s ease-in-out infinite;
      z-index: 0;
    }

    .circle img {
      width: 80px;
      height: 80px;
      object-fit: contain;
      opacity: 0.9;
    }

    .top-left {
      top: 20px;
      left: 20px;
      width: 150px;
      height: 150px;
    }

    .bottom-right {
      bottom: 20px;
      right: 20px;
      width: 180px;
      height: 180px;
      animation-delay: 2s;
    }

    @keyframes float {
      0% { transform: translateY(0) rotate(0deg); }
      50% { transform: translateY(15px) rotate(180deg); }
      100% { transform: translateY(0) rotate(360deg); }
    }

    @media (max-width: 500px) {
      .circle img {
        width: 60px;
        height: 60px;
      }

      .login-container {
        width: 90%;
      }
    }
  </style>
</head>
<body>

  <!-- Navigation Bar -->
  <div class="navbar">
    <div class="logo">EditPro</div>
    <div class="nav-links">
      <a href="Admin.jsp">Admin Panel</a>
      <a href="Editor.jsp">Text Editor</a>
      <a href="login.html">User Login</a>
    </div>
  </div>

  <!-- Animated Circles with Images -->
  <div class="circle top-left">
    <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Editor Icon">
  </div>
  <div class="circle bottom-right">
    <img src="https://cdn-icons-png.flaticon.com/512/219/219983.png" alt="User Icon">
  </div>

  <!-- Title -->
  <div class="header">EditPro - Text Editing Simplified</div>

  <!-- Login Form -->
  <div class="login-container">
    <form action="EditorLogin" method="post">
      <h2>Editor Login</h2>
      <input type="text" name="username" class="input-field" placeholder="Username" required>
      <input type="password" name="password" class="input-field" placeholder="Password" required>
      <button type="submit" class="login-btn">Login</button>
    </form>
  </div>

</body>
</html>
