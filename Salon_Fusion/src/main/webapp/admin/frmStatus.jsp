<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../includes/conn.jsp" %>

<%

int pid=Integer.parseInt(request.getParameter("aid"));

 PreparedStatement ps1=con.prepareStatement("UPDATE `appoint` SET `astatus`=? WHERE aid=?");
ps1.setString(1,"Cancel");
ps1.setInt(2,pid);  



int x = ps1.executeUpdate();
if (x > 0) {
%>
<script>
if (confirm("Cancel Successfully!!")) {
	location = "AdminDashboard.jsp";
} else {
	location = "AdminDashboard.jsp";
}
</script>
<%
} else {
%>
<script>
if (confirm("Error in Adding")) {
	location = "AdminDashboard.jsp";
} else {
	location = "AdminDashboard.jsp";
}
</script>
<%
}

%>
<%-- <%
        String redirectURL ="AdminDashboard.jsp";

        response.sendRedirect(redirectURL);

    %>
 --%>