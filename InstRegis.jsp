<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 String St[] = {"Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana","Himachal Pradesh",
        "Jammu and Kashmir","Jharkhand","Karnataka", "Kerala","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha",
        "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttarakhand","Uttar Pradesh","West Bengal","Andaman and Nicobar Islands","Chandigarh",
        "Dadra and Nagar Haveli", "Daman and Diu", "Delhi","Lakshadweep","Puducherry"};


String Ct[] = {"INDORE", "Balaghat", " Barwani","Betul","Bharhut","Bhind", "Bhojpur","Bhopal","BurhanpurChhatarpur",
                      "Chhindwara","Damoh","Datia","Dewas","Dhar","Guna","Gwalior","Hoshangabad","Indore","Itarsi","Jabalpur",
                      "Jhabua","Khajuraho","Khandwa","Khargon", "Khargon", "Mandla", "Mandsaur",
"Mhow","Morena" ,"Murwara" ,"Narsimhapur," ,"Narsinghgarh", "Narwar","Neemuch" ,"Nowgong" ,"Orchha" ,"Panna" ,"Raisen","Rajgarh",
"Ratlam", "Rewa" ,"Sagar", "Sarangpur", "Satna", "Sehore" ,"Seoni" ,"Shahdol" ,"Shajapur", "Sheopur" ,"Shivpuri" ,"UjjainVidisha"};


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Institute Registration</title>
        <link rel="stylesheet" href="L1.css">
    </head>
    <body id="Inst">
        <%@include file="header.jsp" %>
    <center>
        <div>
            <form>
                <table cellpadding="15px" id="table">
                    <tr>
                        <td>Name OF Institute</td>
                        <td ><input style="width:500px" type="text" name="u1"></td>
                    </tr>
                    <tr>
                        <td>Contact.No</td>
                        <td><input type="text" name="u2"></td>
                    </tr>
                    <tr>
                        <td>State/City/Area</td>
                        <td>
                            <select name="u3" style="height:30px; ">
                                   <% for(int i=0;i<St.length;i++){%>
                                        <option value="<%=St[i]%>"><%=St[i]%></option>
                                     <%}%>   
                              </select>
                             <select name="u4" style="height:30px; ">
                                   <% for(int i=0;i<Ct.length;i++){%>
                                        <option value="<%=Ct[i]%>"><%=Ct[i]%></option>
                                     <%}%>   
                              </select>
                              <input type="text" name="u5">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Classes
                        </td>
                        <td>
                            <input type="checkbox" name="u6" value="PROG">Programming courses
                            &nbsp;&nbsp;<input type="checkbox" name="u6" value="UGPG">UG & PG
                             &nbsp;&nbsp;<input type="checkbox" name="u6" value="ART">Art & Craft
                             &nbsp;&nbsp;<input type="checkbox" name="u6" value="DANCE">Dance Clases
                             &nbsp;&nbsp;<input type="checkbox" name="u6" value="SCHOOL">School Tution
                        </td>
                    <tr>
                        <td>Description</td>
                        <td><textarea rows = "5" cols = "60" name = "about"> </textarea>
                    </tr>
                    <tr>
                        <th colspan="2"><input id="btn" type="submit"  value="Regis" name="sub" ></th>
                    </tr>
                </table> 
            </form>
        </div>
    </center> 
</body>
</html>

<%
    if (request.getParameter("sub") != null) {
        String name = request.getParameter("u1");
        String contact = request.getParameter("u2");
        String state = request.getParameter("u3");
        String city = request.getParameter("u4");
        String area = request.getParameter("u5");
        String disc = request.getParameter("about");
        String sp[]=new String[5];
        String temp[] = request.getParameterValues("u6");
        for(int i=0;i<temp.length;i++)
            {
                sp[i]=temp[i];
            }
        
        
//        out.println(sp[0]);
//        out.println(sp[1]);
//        out.println(sp[2]);
//        out.println(sp[3]);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minor?useSSL=false", "root", "Shubh@123");
            Statement st = con.createStatement();
            String q1 = "insert into Institute values('" + name + "','" +contact + "','" + disc + "')";
            st.executeUpdate(q1);
            String q2 = "insert into InsLocation values('" + name + "','" + state + "','" + city + "','" + area + "')";
            st.executeUpdate(q2);
            String q3 = "insert into InsClasses values('" + name + "','" + sp[0] + "','" + sp[1] + "','" + sp[2] + "','" + sp[3] + "','" + sp[4] + "')";
            st.executeUpdate(q3);
            response.sendRedirect("Home.jsp");
            con.close();
        } catch (Exception e) {
            out.println(e.getMessage());
        }
    }
%>