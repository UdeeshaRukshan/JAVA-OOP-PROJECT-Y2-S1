<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Admin</title>
	<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        table td {
            padding: 10px;
            border: 1px solid #ccc;
        }
        
        input[type="text"] {
            width: 100%;
            padding: 8px;
            font-size: 14px;
        }
        
        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<h1>Customer Account Delete</h1>
    <form action="delete" method="post">
        <table>
            <tr>
                <td>Admin ID</td>
                <td><input type="text" name="cusid" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Admin Name</td>
                <td><input type="text" name="name" value="<%= name %>" readonly></td>
            </tr>
            <tr>
                <td>Admin Email</td>
                <td><input type="text" name="email" value="<%= email %>" readonly></td>
            </tr>
            <tr>
                <td>Admin Phone number</td>
                <td><input type="text" name="phone" value="<%=phone%>" readonly></td>
            </tr>
            <tr>
                <td>Admin User name</td>
                <td><input type="text" name="uname" value="<%= userName %>" readonly></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" value="Delete My Account">
    </form>
</body>

</body>
</html>