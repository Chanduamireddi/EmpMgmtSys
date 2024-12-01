<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
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

        .button-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px;
        }

        button {
            flex: 1;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            color: #ffffff;
            background-color: #000000;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        button:hover {
            background-color: #343a40;
            transform: scale(1.02);
        }

        @media (max-width: 768px) {
            .container {
                margin: 20px;
                padding: 15px;
            }

            form label, form input, button {
                font-size: 13px;
            }

            .button-container {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Employee Management System</h1>
    </header>
    <div class="container">
        <h2>Update Employee</h2>
        <form action="/employees/update/${employee.id}" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" value="${employee.name}" required>

            <label for="department">Department</label>
            <input type="text" id="department" name="department" value="${employee.department}" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="${employee.email}" required>

            <label for="salary">Salary</label>
            <input type="number" id="salary" name="salary" step="0.01" value="${employee.salary}" required>

            <div class="button-container">
                <button type="submit">Update Employee</button>
                <button type="button" onclick="location.href='/employees'">Back to Employee List</button>
            </div>
        </form>
    </div>
</body>
</html>
