<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<form action="feedAdd.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center height=40><b>글작성</b><td></tr>
<% String id = (String)session.getAttribute("id");%>
<tr>
	<td align=right>아이디&nbsp;</td> 
	<td><%= id %></td>
</tr>
<tr>
	<td align=right>작성글&nbsp;</td> 
	<td><textarea name="content" rows=5 cols=20></textarea></td>
</tr>
<tr>
	<td colspan=2 align=center height=50>
		<input type="submit" value="업로드하기">
	</td>
</tr>
</table>
</form>
</body>
</html>