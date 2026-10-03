<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>EditPro - Home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Orbitron&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      height: 100vh;
      display: flex;
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, #141e30, #243b55);
      color: #ffffff;
    }

    .left-panel, .right-panel {
      flex: 1;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 40px;
    }

    .left-panel {
      flex-direction: column;
      background: rgba(255,255,255,0.05);
      backdrop-filter: blur(10px);
      text-align: center;
    }

    .left-panel h1 {
      font-family: 'Orbitron', sans-serif;
      font-size: 36px;
      margin-bottom: 20px;
      color: #00f2fe;
    }

    .left-panel .nav {
      margin-top: 30px;
    }

    .left-panel .nav a {
      display: block;
      margin: 10px 0;
      padding: 12px 25px;
      background-color: #00f2fe;
      color: #111;
      border-radius: 8px;
      font-weight: bold;
      text-decoration: none;
      transition: all 0.3s ease;
    }

    .left-panel .nav a:hover {
      background-color: #00c9d7;
      color: #fff;
    }

    .right-panel {
      flex-direction: column;
      justify-content: center;
      background: rgba(0, 0, 0, 0.2);
      backdrop-filter: blur(10px);
    }

    form {
      width: 100%;
      max-width: 350px;
      background-color: rgba(255, 255, 255, 0.05);
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
    }

    form h2 {
      margin-bottom: 20px;
      color: #00f2fe;
    }

    .input-field {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: none;
      border-radius: 8px;
      background: #1e1e1e;
      color: #00f2fe;
      font-size: 14px;
    }

    .login-btn {
      width: 100%;
      padding: 12px;
      margin-top: 15px;
      border: none;
      border-radius: 8px;
      background: #00f2fe;
      color: #111;
      font-weight: bold;
      font-size: 16px;
      cursor: pointer;
      transition: 0.3s ease;
    }

    .login-btn:hover {
      background-color: #00c9d7;
      color: #fff;
    }

    @media (max-width: 768px) {
      body {
        flex-direction: column;
      }

      .left-panel, .right-panel {
        flex: none;
        width: 100%;
      }

      .left-panel {
        padding: 20px;
      }

      .right-panel {
        padding: 30px;
      }
    }
  </style>
</head>
<body>

  <!-- Left: Welcome + Nav -->
  <div class="left-panel">
    <h1><i class="fas fa-pen-nib"></i> EditPro</h1>
    <p>Text Editing Simplified</p>
    <div class="nav">
      <a href="Admin.jsp"><i class="fas fa-user-shield"></i> Admin Panel</a>
      <a href="Editor.jsp"><i class="fas fa-edit"></i> Text Editor</a>
      <a href="login.html"><i class="fas fa-user"></i> User Login</a>
    </div>
  </div>

  <!-- Right: Login Form -->
  <div class="right-panel">
    <form action="Admin" method="post">
      <h2>Admin Login</h2>
      <input type="text" name="username" class="input-field" placeholder="Username" required>
      <input type="password" name="password" class="input-field" placeholder="Password" required>
      <button type="submit" class="login-btn">Login</button>
    </form>
  </div>

</body>
</html>
