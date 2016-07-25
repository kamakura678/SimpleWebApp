<%-- 
    Document   : input
    Created on : Jul 18, 2016, 4:51:26 PM
    Author     : Irvan
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="artist" scope="request" class="com.simplewebapp.model.Artist" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <% 
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-YYYY");
            String fullName = (artist.getFullName() != null ? artist.getFullName() : "");
            String dob = (artist.getDob() != null ? sdf.format(artist.getDob()) : "");
            String email = (artist.getEmail() != null ? artist.getEmail() : "");
//            String job = (artist.getJob() != null ? artist.getJob() : "");
        %>
        <h1>Entry your Data</h1>
        <form name="inputForm" action="IndexController" method="POST">
            <table border="0" width="auto">
                <tbody>
                    <tr>
                        <td width="170">Full Name</td>
                        <td width="170">Date Of Birth</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="fullName" value="<%= fullName %>" /></td>
                        <td><input type="date" name="dob" value="<%= dob %>" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>Job</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="email" value="<%= email %>" /></td>
                        <td>
                            <select name="job">
                                <option value="None">-</option>
                                <option value="Consultant">Consultant</option>
                                <option value="Engineer">Engineer</option>
                                <option value="Trainer">Trainer</option>
                            </select>
                        </td>
                    </tr>
                    <tr><td><br/></td></tr>
                    <tr>
                        <td>
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td><input type="submit" value="Submit" /></td>
                                        <td><input type="reset" value="Reset" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
