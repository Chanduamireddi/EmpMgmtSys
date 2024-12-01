<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            color: #212529;
        }

        .main-header {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 15px 0;
            font-size: 24px;
            font-weight: bold;
        }

        h1 {
            text-align: center;
            color: #343a40;
            margin-top: 20px;
            font-size: 22px;
        }

        form {
            width: 40%;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        div {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #343a40;
            font-size: 14px;
        }

        input {
            width: 80%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        .btn-submit {
            background-color: #343a40;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #23272b;
        }

        .error {
            color: #dc3545;
            font-size: 12px;
            margin-top: 5px;
        }

        @media (max-width: 768px) {
            form {
                width: 80%;
                padding: 20px;
            }

            .btn-submit {
                padding: 10px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="main-header">
        Employee Management System
    </div>

    <h1>Add New Employee</h1>

    <form:form modelAttribute="employee" method="post">
        <div>
            <label for="name">Name:</label>
            <form:input path="name" id="name"/>
            <form:errors path="name" cssClass="error" />
        </div>
        <div>
            <label for="email">Email:</label>
            <form:input path="email" id="email"/>
            <form:errors path="email" cssClass="error" />
        </div>
        <button type="submit" class="btn-submit">Submit</button>
    </form:form>
</body>
</html>
