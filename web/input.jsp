<%-- 
    Document   : input
    Created on : Jul 18, 2016, 4:51:26 PM
    Author     : Irvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Entry your Data</h1>
        <form name="inputForm" action="index.jsp" method="POST">
            <table border="0" width="auto">
                <tbody>
                    <tr>
                        <td width="170">Full Name</td>
                        <td width="170">Date Of Birth</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="fullName" value="" /></td>
                        <td><input type="date" name="dob" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>Job</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="email" value="" /></td>
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
                                        <td><input type="submit" value="login" /></td>
                                        <td><input type="reset" value="reset" /></td>
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
