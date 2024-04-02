<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% User user = (User)request.getSession().getAttribute("user");%>
		<% String username = user.getUsername(); %>
		
		<h2>Welcome <%= username %></h2>
		<h4>Email: <%= user.getUseremail() %></h4>
		
		
		
		<% String image = new String(Base64.getEncoder().encode(user.getUserimage())); %>
		<img alt="" src="data:image/jpeg;base64,<%= image %>" width="150" height="100">

</body>
</html>