<%-- 
    Document   : JSTLFunction
    Created on : 26-Oct-2022, 5:12:02 pm
    Author     : mkjam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="func" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="str" value="Mike is hero"/>
        length:${func:length(str)}
        index:${func:indexOf(str,"is")}
        Is there? ${func:contains(str,"hero")}
        <c:if test="${func:contains(str,'JSP')}">
            JSP is present
        </c:if>
        <!--We are splitting our String on the basis of one 
        space ,whenever space will come split it and store
        it in a variable s -->
        <c:forEach items="${func:split(str,' ')}" var="s">
            </br><!-- comment -->
            ${s}
        </c:forEach>
    </body>
</html>
