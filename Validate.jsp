<%@ page import="java.sql.* %>
<html>
<body>
<%
try{
String username = request.getParameter("username");
String passivord= request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver"); // MySQL database connect
Connection conn-DriverManager.getConnection("jdbc:mysql://localhost:8080/dbname","root","dbpass.");
PreparedStatement pst=conn.prepareStatement ("Select user,pass from login where user-2 and pass=?"
pst.setString(1, username);
pst.setString(2, password);
ResultSet rs = pst.executeQuery();
if(rs.next())
out.println("Valid login credentials");
else
out.println("Invalid login credentials");
)
catch(Exception e){
out.println("Something went wrong !! Please try again");
}
%>
</body>
</html>