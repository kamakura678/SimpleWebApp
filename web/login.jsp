<%-- 
    Document   : login
    Created on : Jul 25, 2016, 5:46:42 PM
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
        <p>Please enter your username and password</p>
        <form action="j_security_check" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td align="right">Username : &nbsp;</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td align="right">Password : &nbsp;</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="login" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
