<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
        String No =(String) session.getAttribute("id");
        if (No == null) 
        {
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="L1.css">

    </head>
    <body id="login">
        <%@include file="header.jsp" %>
        <div id="data">
            <center>                
                <form action="StLogin.jsp">
                    <table id="table" cellpadding="20px">
                        <tr>
                            <td>Mobile No</td>
                            <td><input  type="text" id='number' name="u1" ></td>
                        </tr>
                        <tr>
                            <th colspan="2"><button type="button" style="background-color:green;width: 100px;height: 30px;" onclick="OTP()">Send Otp</button></th>
                        </tr>
                        <tr>
                             <th colspan="2"><input  type="text" id='otp' name="u2" ></th>
                        </tr>
                        <tr>
                            <th colspan="2"><input id="btn" type="submit" onclick='return Valid()' value="Login" name="sub" ></th>
                        </tr>
                    </table>
                </form>
            </center> 
        </div>

        <script>
            var ch = Math.floor(1000 + Math.random() * 9000);
            function OTP() 
            {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function (){
                    if (this.readyState == 4 && this.status == 200)
                    {
                        //document.getElementById("demo").innerHTML = this.responseText;
                    }
                };
                var num = document.getElementById("number").value;
                //alert(num);
                xhttp.open("GET", "https://www.fast2sms.com/dev/bulk?authorization=WM7EV9OTgK1qoP2J4ltzfvNC0cL5rhmbdXSHjuZAU8IGFyYsQRyp5htjnO3BfMkuZiPFco1bS74NQrJU&sender_id=FSTSMS&language=english&route=qt&numbers=" + num + "&message=25746&variables={AA}&variables_values=" + ch + "", true);
                xhttp.send();
                
            }
            function Valid()
            { 
                var otp=document.getElementById("otp").value;
                if(otp==ch)
                {
                    return true;
                }
                else
                {
                    alert("InValid or Wrong OTP");
                    return false;
                    
                }
            }
            
//             console.log("shubham");
             console.log("ch="+ch+"otp="+otp);
            
        </script>
       <%    
        //-------------------------------------------------------------------------
                if (request.getParameter("sub") != null)
                {
                    if (5<2){}
                    else {
                        String u1 = request.getParameter("u1");
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minor?useSSL=false", "root", "Shubh@123");
                            Statement st = con.createStatement();
                            String q1 = "select *from Student where Phno='"+ u1 +"' ";
                            ResultSet rs1 = st.executeQuery(q1);
                            if (rs1.next()) 
                            {
                                response.sendRedirect("StHome.jsp");
                                session.setAttribute("id","Login"); //ye inse session bna liya hai browser mai
                                session.setAttribute("Mobile",u1); //ye inse session bna liya hai browser mai
                            }
                         else
                          {
                              session.setAttribute("regis",true);
                              response.sendRedirect("StRegis.jsp");
                         }
                            con.close();
                        } catch (Exception e) {
                            out.println(e.getMessage());
                            out.println("yha aya error");
                        }
                    }
                }
   //-------------------------------------------------------------------------    
         }
       else
         {
           response.sendRedirect("StHome.jsp");
         }
       %> 
    </body>
</html>