<%
    String No = (String)session.getAttribute("id");
    String sub=request.getParameter("sub");
    session.setAttribute("sub",sub);
    if (No == null) {

        String St[] = {"Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat", "Haryana", "Himachal Pradesh",
            "Jammu and Kashmir", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha",
            "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttarakhand", "Uttar Pradesh", "West Bengal", "Andaman and Nicobar Islands", "Chandigarh",
            "Dadra and Nagar Haveli", "Daman and Diu", "Delhi", "Lakshadweep", "Puducherry"};
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="Search.css">
        <link href="headerSearch.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="cardbody">
        <%@include file="header.jsp" %>
    <center>
        <div id="card1">
            <div class="card text-white bg-warning mb-3" id="card11" style="max-width: 40rem;">
                <div class="card-header" style="font-size: 24px;color:black">Location</div>
                <div class="card-body" style="max-width: 40rem;">
                    <h5 class="card-title">For A Better Result Please Select State</h5>
                    <form action="Search1.jsp">                      
                    <div style="margin-top: 50px">  
                        <font style="font-size: 24px;color:black;font-family: BOLD">STATE</font>&nbsp;&nbsp;&nbsp;
                                <select name="state">
                                    <% for (int i = 0; i < St.length; i++) {%>
                                    <option value="<%=St[i]%>"><%=St[i]%></option>
                                    <%}%>   
                                </select>
                              
                      </div>    
                                <input type="submit" style="margin-top: 80px;width:150px;font-size: 20px" class="btn btn-success" > 

                     </form>           
                 </div> 
            </div>
    </center>        


    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <%} else {
            response.sendRedirect("SearchResult.jsp");
        }
    %>       
</body>
</html>
