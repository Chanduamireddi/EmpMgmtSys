<!DOCTYPE html>
<html>
<head>
    <title>Search Employee</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #212529;
        }

        header {
            background-color: #343a40;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 24px;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #343a40;
            margin-bottom: 20px;
        }

        form {
            max-width: 100%;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #343a40;
            font-weight: bold;
        }

        input[type="text"] {
            width: 60%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            padding: 10px 20px;
            background-color: #343a40;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        button:hover {
            background-color: #23272b;
        }

        .center-btn {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            text-decoration: none;
            display: inline-block;
            padding: 10px 20px;
            font-size: 14px;
            font-weight: bold;
            color: #ffffff;
            background-color: #007bff;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }

            form, input[type="text"], button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Employee Management System</h1>
    </header>

    <div class="container">
        <h2>Search Employee</h2>

        <form action="/employees/search/results" method="get">
            <label for="searchTerm">Enter Name or Department</label>
            <input type="text" id="searchTerm" name="searchTerm" placeholder="Search..." required>
            <button type="submit">Search</button>
        </form>

        <div class="center-btn">
            <a href="/employees" class="btn">Back to List</a>
        </div>
    </div>
</body>
</html>
