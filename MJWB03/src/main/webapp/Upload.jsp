<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Upload File</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background styling */
        body {
            background: linear-gradient(135deg, #f3f4f6, #ffffff);
            font-family: 'Poppins', sans-serif;
            color: #333;
        }

        /* Navigation Bar */
        .navbar {
            background: #007bff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 123, 255, 0.3);
            text-align: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-weight: 600;
            transition: 0.3s;
            display: inline-block;
        }

        .navbar a:hover {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
        }

        /* Centering the upload form */
        .container {
            max-width: 600px;
            margin-top: 100px;
        }

        /* Glassmorphism effect */
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

        /* File preview */
        .file-preview {
            margin-top: 10px;
            font-size: 14px;
            color: #555;
        }

        /* Upload button styling */
        .btn-primary {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            background: linear-gradient(90deg, #007bff, #0056b3);
            border: none;
            transition: 0.3s ease-in-out;
            font-weight: 600;
        }

        /* Upload button hover effect */
        .btn-primary:hover {
            background: linear-gradient(90deg, #0056b3, #004494);
            box-shadow: 0 4px 10px rgba(0, 91, 187, 0.4);
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
<nav class="navbar">
    <a href="uhome.jsp"> Home</a>
    <a href="Upload.jsp"> Transfer</a>
    <a href="ViewUploadeddata.jsp"> View Data</a>
    <a href="EditContent.jsp"> Edit Content</a>
    <a href="login.html"> Logout</a>
</nav>
<center>
<div class="container">
    <div class="card">
        <h3 class="text-center text-primary"> Upload Your File</h3>

        <form action="FileUploadServlet" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label class="form-label">File Name:</label>
                <input type="text" class="form-control" name="file_name" required>
            </div><br>

            <div class="mb-3">
                <label class="form-label">Select File (.txt only):</label>
                <input type="file" class="form-control" name="file" accept=".txt" required onchange="previewFileName()">
                <p id="file-name" class="file-preview"></p>
            </div><br>

            <button type="submit" class="btn btn-primary"> Upload</button>
        </form>
    </div>
</div>
</center>
<script>
    function previewFileName() {
        const input = document.querySelector('input[type="file"]');
        const fileNameDisplay = document.getElementById("file-name");
        
        if (input.files.length > 0) {
            fileNameDisplay.innerText = "Selected file: " + input.files[0].name;
        } else {
            fileNameDisplay.innerText = "";
        }
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
