<%@page import="java.sql.*" %>
<%
    String subj = (String) session.getAttribute("sub");
//    out.println(subj);
//    out.println(session.getAttribute("state"));
//    out.println(session.getAttribute("city"));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Institutes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
          <link rel="stylesheet" href="headerSearch.css">
    </head>
    <body>
        <%@include file="headerSearch.jsp" %>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minor?useSSL=false", "root", "Shubh@123");
                Statement st = con.createStatement();
                String q1 = "select *from InsClasses where c1='" + subj + "' or c2='" + subj + "' or c3='" + subj + "' or c4='" + subj + "' or c5='" + subj + "' ";
                ResultSet rs = st.executeQuery(q1);
                while (rs.next()) {
                  
        
                       %>
        <div class="card">
            <div class="card-header">
                <%=subj%>
            </div>
            <div class="card-body">
                <h5 class="card-title" style="font-size:24px;color: red "><%=rs.getString(1)%></h5>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Click for More</a>
            </div>
        </div>   
        <%}

            } catch (Exception e) {
                out.println(e.getMessage());
            }

        %>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </body>
</html>
