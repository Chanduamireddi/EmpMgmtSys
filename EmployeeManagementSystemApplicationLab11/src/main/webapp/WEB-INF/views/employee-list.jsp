<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
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
            max-width: 1200px;
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

        .btn.add-btn {
            background-color: #343a40;
        }

        .btn.add-btn:hover {
            background-color: #23272b;
        }

        .btn.delete-btn {
            background-color: #dc3545;
        }

        .btn.delete-btn:hover {
            background-color: #a71d2a;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #dee2e6;
        }

        th {
            background-color: #343a40;
            color: #ffffff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e9ecef;
        }

        .actions a {
            margin: 0 5px;
            font-size: 13px;
        }

        .add-employee-btn {
            margin-top: 20px;
            text-align: center;
        }

        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }

            table, th, td {
                font-size: 14px;
            }

            .btn {
                padding: 8px 15px;
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Employee Management System</h1>
    </header>
    <div class="container">
        <h2>Employee List</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="employee" items="${employees}">
                    <tr>
                        <td>${employee.id}</td>
                        <td>${employee.name}</td>
                        <td>${employee.email}</td>
                        <td class="actions">
                            <a href="/employees/edit/${employee.id}" class="btn">Edit</a>
                            <a href="/employees/delete/${employee.id}" class="btn delete-btn" onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="add-employee-btn">
            <a href="/employees/add" class="btn add-btn">Add Employee</a>
        </div>
    </div>
</body>
</html>
