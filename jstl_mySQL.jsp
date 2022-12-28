<%-- 
    Document   : JSTLSql
    Created on : 26-Oct-2022, 4:21:38 pm
    Author     : mkjam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- jstl function tags -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/alumni" user="root" password="root"/>
        
    <sql:query var="rs" dataSource="${db}">
        select * from jobs
    </sql:query>
        
        <c:forEach items="${rs.rows}" var="job">
            <br/><c:out value="${job.id}"></c:out>:<c:out value="${job.job_title}"></c:out>:<c:out value="${job.company}"></c:out>
        
        </c:forEach>
    </body>
</html>
