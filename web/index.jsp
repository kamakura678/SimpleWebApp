<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : Jul 18, 2016, 4:08:05 PM
    Author     : Irvan
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="artist" scope="request" class="com.simplewebapp.model.Artist" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Welcome Agans!</h1>
        <c:choose>
            <c:when test="${param.noDataStatus == 'TRUE'}">
                <form action="AddArtist">
                <p>
                    No Data Available 
                    <input type="submit" value="Add" name="addButton" />
                </p>
            </form>
            </c:when>
            <c:when test="${param.noDataStatus == 'FALSE'}">
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
                        <td><jsp:getProperty name="artist" property="fullName" /></td>
                        <td><% SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-YYYY"); %>
                            <%= sdf.format(artist.getDob()) %>
                        </td>
                        <td><jsp:getProperty name="artist" property="email" /></td>
                        <td><jsp:getProperty name="artist" property="job" /></td>
                        <td>
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <form action="AddArtist" method="POST">
                                                <input type="hidden" name="fullName" value="<%= artist.getFullName() %>" />
                                                <input type="hidden" name="dob" value="<%= sdf.format(artist.getDob()) %>" />
                                                <input type="hidden" name="email" value="<%= artist.getEmail() %>" />
                                                <input type="hidden" name="job" value="<%= artist.getJob() %>" />
                                                <input type="submit" value="Edit" />
                                            </form>
                                        </td>
                                        <td><input type="submit" value="Remove" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            </c:when>
        </c:choose>
    </body>
</html>
