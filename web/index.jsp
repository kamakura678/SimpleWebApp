<%@page import="com.simplewebapp.model.Artist"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <c:when test="${requestScope.noDataStatus == 'TRUE'}">
                <form action="AddArtist">
                <p>
                    No Data Available 
                    <input type="submit" value="Add" name="addButton" />
                </p>
                </form>
            </c:when>
            <c:when test="${requestScope.noDataStatus == 'FALSE'}">
                <form action="AddArtist">
                <p>
                    <input type="submit" value="Add" name="addButton" />
                </p>
                </form>
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
                    <c:forEach var="artistList" items="${sessionScope.artistList}">
                        <tr>
                            <td>${artistList.fullName}</td>
                            <td><fmt:formatDate value="${artistList.dob}" pattern="dd-MMM-yyyy" /></td>
                            <td>${artistList.email}</td>
                            <td>${artistList.job}</td>
                            <td>
                                <table border="0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <form action="AddArtist">
                                                    <input type="hidden" name="fullName" value="${artistList.fullName}" />
                                                    <input type="hidden" name="dob" value=<fmt:formatDate value="${artistList.dob}" pattern="dd-MM-yyyy" /> />
                                                    <input type="hidden" name="email" value="${artistList.email}" />
                                                    <input type="hidden" name="job" value="${artistList.job}" />
                                                    <input type="submit" value="Edit" />
                                                </form>
                                            </td>
                                            <td>
                                                <form action="RemoveArtist" method="POST">
                                                    <input type="hidden" name="fullName" value="${artistList.fullName}" />
                                                    <input type="hidden" name="dob" value=<fmt:formatDate value="${artistList.dob}" pattern="dd-MM-yyyy" /> />
                                                    <input type="hidden" name="email" value="${artistList.email}" />
                                                    <input type="hidden" name="job" value="${artistList.job}" />
                                                    <input type="submit" value="Remove" />
                                                </form>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            </c:when>
        </c:choose>
    </body>
</html>
