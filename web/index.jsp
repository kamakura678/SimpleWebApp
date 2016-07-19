<%-- 
    Document   : index
    Created on : Jul 18, 2016, 4:08:05 PM
    Author     : Irvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Welcome Agans!</h1>
        <% if(request.getParameter("fullName") == null) { %>
            <form action="input.jsp">
                <p>
                    No Data Available 
                    <input type="submit" value="Add" name="addButton" />
                </p>
            </form>
        <% } 
           else {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th width="170">Full Name</th>
                    <th width="170">Date Of Birth</th>
                    <th width="170">Email</th>
                    <th width="170">Job Title</th>
                    <th width="170"></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= request.getParameter("fullName") %></td>
                    <td><%= request.getParameter("dob") %></td>
                    <td><%= request.getParameter("email") %></td>
                    <td><%= request.getParameter("job") %></td>
                    <td>
                        <form action="input.jsp" method="POST">
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td><input type="submit" value="Edit" /></td>
                                        <td><input type="submit" value="Remove" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

        <% } %>
    </body>
</html>
