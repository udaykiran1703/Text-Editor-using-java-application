<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>User Registration</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, #2e2e2e, #434343);
      height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    header {
      width: 100%;
      padding: 20px 40px;
      background: rgba(255, 255, 255, 0.05);
      display: flex;
      justify-content: space-between;
      align-items: center;
      backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(255, 255, 255, 0.1);
      position: fixed;
      top: 0;
      z-index: 100;
    }

    .logo {
      color: #ffffffcc;
      font-size: 22px;
      font-weight: bold;
    }

    .nav-links a {
      margin-left: 20px;
      color: #ddd;
      text-decoration: none;
      font-weight: 500;
      transition: color 0.3s ease;
    }

    .nav-links a:hover {
      color: #fff;
    }

    .main {
      margin-top: 100px;
      display: flex;
      justify-content: center;
      align-items: center;
      width: 100%;
    }

    .glass-card {
      background: rgba(255, 255, 255, 0.05);
      padding: 40px;
      border-radius: 16px;
      width: 420px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
      backdrop-filter: blur(15px);
      color: #fff;
      animation: fadeInUp 1s ease;
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
      font-size: 26px;
    }

    .input-group {
      margin-bottom: 15px;
    }

    .input-group label {
      display: block;
      margin-bottom: 6px;
      font-weight: 500;
    }

    .input-group input,
    .input-group select {
      width: 100%;
      padding: 12px;
      border: none;
      border-radius: 8px;
      background: rgba(255, 255, 255, 0.1);
      color: #fff;
      font-size: 15px;
      transition: background 0.3s;
    }

    .input-group input:focus,
    .input-group select:focus {
      background: rgba(255, 255, 255, 0.15);
      outline: none;
    }

    .btn {
      margin-top: 10px;
      width: 100%;
      padding: 14px;
      background: #667eea;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 17px;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s;
    }

    .btn:hover {
      background: #5a67d8;
    }

    @keyframes fadeInUp {
      from {
        transform: translateY(40px);
        opacity: 0;
      }
      to {
        transform: translateY(0px);
        opacity: 1;
      }
    }
  </style>
</head>
<body>

  <header>
    <div class="logo">EditPro - Text Editing Simplified</div>
    <div class="nav-links">
      <a href="Admin.jsp">Admin Panel</a>
      <a href="Editor.jsp">Text Editor</a>
      <a href="login.html">Login</a>
    </div>
  </header>

  <div class="main">
    <div class="glass-card">
      <h2>Create an Account</h2>
      <form id="registrationForm" action="RegisterServlet" method="post">
        <div class="input-group">
          <label for="name">Full Name</label>
          <input type="text" id="name" name="name" required />
        </div>
        <div class="input-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" required />
        </div>
        <div class="input-group">
          <label for="mobile">Mobile Number</label>
          <input type="tel" id="mobile" name="mobile" required />
        </div>
        <div class="input-group">
          <label for="gender">Gender</label>
          <select id="gender" name="gender" required>
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
          </select>
        </div>
        <div class="input-group">
          <label for="address">Address</label>
          <input type="text" id="address" name="address" required />
        </div>
        <div class="input-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" required />
        </div>
        <div class="input-group">
          <label for="confirmPassword">Confirm Password</label>
          <input type="password" id="confirmPassword" name="confirmPassword" required />
        </div>
        <button class="btn" type="submit">Register</button>
      </form>
    </div>
  </div>

</body>
</html>
