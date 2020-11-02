<%
session.removeAttribute("id");
session.removeAttribute("mobile");
session.removeAttribute("sub");
session.removeAttribute("city");
session.removeAttribute("state");
response.sendRedirect("Home.jsp");
%>