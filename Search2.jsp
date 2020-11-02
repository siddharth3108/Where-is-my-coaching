<%@page import="java.sql.*" %>
<%
    if (session.getAttribute("id")!= null) 
    {
        String u1=(String)session.getAttribute("Mobile");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minor?useSSL=false", "root", "Shubh@123");
            Statement st = con.createStatement();
            String q1 = "select *from StLocation where Phno='" + u1 + "' ";
            ResultSet rs = st.executeQuery(q1);
            while (rs.next()) 
            {
                session.setAttribute("state",rs.getString(2));
                session.setAttribute("city",rs.getString(3));
            }
            response.sendRedirect("SearchResult.jsp");
              con.close();      

        } 
        catch (Exception e)
        {
            out.println(e.getMessage());
        }
       

    }
    else
    {
        String s = request.getParameter("city");
        session.setAttribute("city", s);
         response.sendRedirect("SearchResult.jsp");
    }

%>