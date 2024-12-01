<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
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
            max-width: 500px;
            margin: 40px auto;
            padding: 20px 30px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            color: #343a40;
            margin-bottom: 25px;
        }

        form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #495057;
            font-size: 14px;
        }

        form input[type="text"],
        form input[type="email"],
        form input[type="number"] {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 8px;
            font-size: 14px;
            color: #495057;
            background-color: #f8f9fa;
            box-sizing: border-box;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        form input:focus {
            border-color: #007bff;
            box-shadow: 0 0 4px rgba(0, 123, 255, 0.5);
            outline: none;
        }

        .form-buttons {
            display: flex;
            justify-content: space-between;
            gap: 10px;
            margin-top: 20px;
        }

        .form-buttons button,
        .form-buttons a {
            flex: 1;
            padding: 10px;
            font-size: 14px;
            font-weight: bold;
            color: #ffffff;
            text-align: center;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.2s;
            background-color: #343a40;
        }

        .form-buttons button:hover,
        .form-buttons a:hover {
            background-color: #212529;
            transform: scale(1.02);
        }

        @media (max-width: 768px) {
            .container {
                margin: 20px;
                padding: 15px;
            }

            form label, form input, .form-buttons button, .form-buttons a {
                font-size: 13px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Employee Management System</h1>
    </header>
    <div class="container">
        <h2>Add Employee</h2>
        <form action="/employees/add" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter full name" required>

            <label for="department">Department</label>
            <input type="text" id="department" name="department" placeholder="Enter department" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter email address" required>

            <label for="salary">Salary</label>
            <input type="number" id="salary" name="salary" placeholder="Enter salary (e.g., 50000)" step="0.01" required>

            <div class="form-buttons">
                <button type="submit">Add Employee</button>
                <a href="/employees" class="btn">Back to Employee List</a>
            </div>
        </form>
    </div>
</body>
</html>
