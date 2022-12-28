
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import ="java.util.ArrayList"%>
<%@include file="header.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan">
        <%   
            
                String url="jdbc:mysql://localhost:3306/alumni";
                String username="root";
                String password="root";
                String query="select * from jobs where id=10";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection(url,username,password);
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                rs.next();

        %>
        
        Job Title:<%=rs.getString(2)%>        
        Start date:<%=rs.getString(4)%>

        <!-- All These Delimeters are called servlet -->
               
    </body>
</html>
