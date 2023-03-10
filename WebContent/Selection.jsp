<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid black;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: blue;}

#customers tr:hover {background-color: orange;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color:red;
  color: white;
}
</style>


</head>
<body>
<form action="" method=post>
<h3>The Result</h3>
<label for="viewDetails">Select Language:</label>
<select name="language">
  <option value="C">C</option>
  <option value="C++">C++</option>
  <option value="Java">Java</option>
   <option value="Any">Any</option>
</select><br>
<input type="submit" value="Submit">
</form>

<%

String language = request.getParameter("language");
if(language != null){
%>
<table id="customers">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Phone Number</th>
<th>Email Id</th>
<th>Languages</th>
<tr>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/client","root","root");
ResultSet rs=null;
if(language.equals("any"))
{
PreparedStatement ps = con.prepareStatement("select  r.first_name,r.last_name,r.phone_number,r.email,l.lan from user r,languege l where r.email = l.email");
rs = ps.executeQuery();
while(rs.next()){ %>
<tr>
<td><%=rs.getString("first_name")%></td>
<td><%=rs.getString("last_name")%></td>
<td><%=rs.getString("phone_number")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("lan")%></td>
</tr>
<%}

}
else
{

PreparedStatement ps = con.prepareStatement("select  r.first_name,r.last_name,r.phone_number,r.email,l.lan from user r,languege l where r.email = l.email and l.lan = ?");
ps.setString(1, language);
rs = ps.executeQuery();

%>
<%while(rs.next()){ %>
<tr>
<td><%=rs.getString("first_name")%></td>
<td><%=rs.getString("last_name")%></td>
<td><%=rs.getString("phone_number")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("lan")%></td>
</tr>
<%} %>
<%
}
}
catch(ClassNotFoundException e){
e.printStackTrace();
}

}
%>
</table>
</body>
</html>
