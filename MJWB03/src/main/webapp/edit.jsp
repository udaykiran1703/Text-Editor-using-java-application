<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit File</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background styling */
        body {
            background: linear-gradient(135deg, #dfe9f3, #ffffff);
            font-family: 'Poppins', sans-serif;
            color: #333;
        }

        /* Navigation Bar */
        .navbar {
            background: #007bff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 123, 255, 0.3);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            font-weight: 600;
            transition: 0.3s;
        }

        .navbar a:hover {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
        }

        /* Centering the card */
        .container {
            max-width: 700px;
            margin-top: 30px;
        }

        /* Glassmorphism card effect */
        .card {
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.85);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: 25px;
            backdrop-filter: blur(10px);
        }

        /* Form label styling */
        .form-label {
            font-weight: 600;
            color: #444;
        }

        /* Input fields */
        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
            transition: 0.3s ease-in-out;
        }

        /* Input focus effect */
        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }

        /* Button styling */
        .btn-primary {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            background: linear-gradient(90deg, #007bff, #0056b3);
            border: none;
            transition: 0.3s ease-in-out;
            font-weight: 600;
        }

        /* Button hover effect */
        .btn-primary:hover {
            background: linear-gradient(90deg, #0056b3, #004494);
            box-shadow: 0 4px 10px rgba(0, 91, 187, 0.4);
        }

        /* Read-only text area */
        .readonly-textarea {
            background-color: #f8f9fa;
            border: 1px solid #ddd;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .container {
                max-width: 90%;
            }
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar d-flex justify-content-center">
    <a href="Upload.jsp"> Transfer</a>
    <a href="ViewUploadeddata.jsp"> View Data</a>
    <a href="EditContent.jsp"> Edit Content</a>
    <a href="login.html">Logout</a>
</nav>

<%
    String fileid = request.getParameter("fileid");
    String filename = request.getParameter("filename");
    String fcontent = request.getParameter("fileContent");
    String userid = (String) session.getAttribute("user");
%>
<center>
<div class="container">
    <div class="card">
        <h3 class="text-center text-primary"> Edit Your File</h3>

        <div class="mb-3">
            <label class="form-label">Uploaded Data:</label>
            <textarea class="form-control readonly-textarea" rows="5" readonly><%= fcontent %></textarea>
        </div><br>

        <form action="Edit" method="post">
            <div class="mb-3">
                <label class="form-label">File ID:</label>
                <input type="text" class="form-control" name="fid" value="<%= fileid %>" readonly>
            </div><br>

            <div class="mb-3">
                <label class="form-label">File Name:</label>
                <input type="text" class="form-control" name="fname" value="<%= filename %>" readonly>
            </div><br>

            <div class="mb-3">
                <label class="form-label">Update Content:</label>
                <textarea class="form-control" rows="10" name="newdata"><%= fcontent %></textarea>
            </div><br>

            <button type="submit" class="btn btn-primary"> Save Changes</button>
        </form>
    </div>
</div>
</center>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
