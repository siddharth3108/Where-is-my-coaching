<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
    
    String No =(String) session.getAttribute("id");
        if (No == null) 
        {
    
    //String s=(String)session.getAttribute("reg");
    String St[] = {"Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana","Himachal Pradesh",
        "Jammu and Kashmir","Jharkhand","Karnataka", "Kerala","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha",
        "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttarakhand","Uttar Pradesh","West Bengal","Andaman and Nicobar Islands","Chandigarh",
        "Dadra and Nagar Haveli", "Daman and Diu", "Delhi","Lakshadweep","Puducherry"};
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="c1.css">
        <script>
          if(<%=session.getAttribute("regis")%>)
          {
              alert("you are not a registered user please register first");
          <% session.removeAttribute("regis"); %>
          }
        </script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="data">
            <center>
                <form>
                    <form action="StRegis.jsp">
                        <table cellpadding="20px" id="table" style="font-size:20px;margin-top: 60px" >
                            <tr>
                                <td>Name</td>
                                <td><input type="text" name="u1" required></td>
                            </tr>
                            <tr>
                                <td>E-mail</td>
                                <td><input type="text" name="u2"></td>
                            </tr>
                            <tr>
                                <td>Phone-no</td>
                                <td><input type="text" name="u3"><font style="color: red;font-size: 20px;">*</font></td>
                            </tr>
                            <tr>
                                <td>State</td>
                                <td>
                                    <select name="u4" style="height:30px; ">
                                   <% for(int i=0;i<St.length;i++){%>
                                        <option value="<%=St[i]%>"><%=St[i]%></option>
                                     <%}%>   
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>City</td>
                                <td>Bhopal<input type="radio" name="u7" >
                                Indore<input type="radio" name="u7" >
                                Gwalior<input type="radio" name="u7" ></td>
                            </tr>
                            <tr>
                                <td>Area</td>
                                <td><input type="text" name="u8" ></td>
                            </tr>
                            <tr>
                                <th colspan="2"><input id="btn" type="submit" value="Register" name="sub"></th>
                            </tr>
                        </table>
                    </form>
            </center> 
        </div>  
        <%
            if (request.getParameter("sub") != null) {
                String name = request.getParameter("u1");//name
                String email = request.getParameter("u2");//Email
                String s = request.getParameter("u3");//contact
                long contact = Long.parseLong(s);
                String state = request.getParameter("u6");//state
                String city = request.getParameter("u7");//city
                String area = request.getParameter("u8");//area
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minor?useSSL=false", "root", "Shubh@123");
                    Statement st = con.createStatement();
                    String q1 = "insert into Student values('" + name + "','" + email + "'," + contact + ")";
                    st.executeUpdate(q1);
                    String q2 = "insert into StLocation values(" + contact + ",'" + state + "','" + city + "','" + area + "')";
                    st.executeUpdate(q2);
                    response.sendRedirect("StLogin.jsp");
                    con.close();
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
            }
         }
        else
         {
           response.sendRedirect("StHome.jsp");
         }
       %>   

    </body>
</html>