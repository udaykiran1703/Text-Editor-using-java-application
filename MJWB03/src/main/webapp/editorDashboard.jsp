<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>Editor Dashboard</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    body {
      background: linear-gradient(to right, #2c3e50, #3498db);
      min-height: 100vh;
      padding: 40px 20px;
      color: #fff;
    }

    .dashboard-container {
      max-width: 1000px;
      margin: auto;
    }

    .dashboard-header {
      text-align: center;
      margin-bottom: 40px;
    }

    .dashboard-header h1 {
      font-size: 32px;
      margin-bottom: 10px;
    }

    .dashboard-header p {
      font-size: 16px;
      color: #d1ecff;
    }

    .card-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 20px;
    }

    .card {
      background-color: rgba(255, 255, 255, 0.1);
      padding: 25px;
      border-radius: 15px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease, background 0.3s ease;
    }

    .card:hover {
      transform: translateY(-8px);
      background-color: rgba(255, 255, 255, 0.15);
    }

    .card h3 {
      font-size: 20px;
      margin-bottom: 10px;
    }

    .card p {
      font-size: 14px;
      color: #e0e0e0;
    }

    .action-link {
      display: inline-block;
      margin-top: 15px;
      padding: 10px 18px;
      background-color: #00c3ff;
      color: #fff;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    .action-link:hover {
      background-color: #008ecc;
    }
  </style>
</head>
<body>

  <div class="dashboard-container">
    <div class="dashboard-header">
      <h1>Welcome, Editor</h1>
      <p>Your central workspace to manage and review edited content.</p>
    </div>

    <div class="card-grid">
      <div class="card">
        <h3> Edited Documents</h3>
        <p>You have edited <strong>42 documents</strong> this week.</p>
        <a href="editedData.jsp" class="action-link">View Documents</a>
      </div>

      <div class="card">
        <h3> Recent Edits</h3>
        <p>Check the latest content you've modified or reviewed.</p>
        <a href="approvedbyeditor.jsp" class="action-link">View Recent</a>
      </div>

      <div class="card">
        <h3> Logout</h3>
        <p>Securely log out of your session and return to home.</p>
        <a href="index.html" class="action-link">Logout</a>
      </div>
    </div>
  </div>

</body>
</html>
