<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="dao.*" %>
<%@ page import="java.util.ArrayList" %>
<%
	UserDAO dao = new UserDAO();
	ArrayList<UserDO> users = dao.selectAll();

	String str = "<table align=center>";
	str +="<tr><th colspan=3>가입자 리스트</th></tr>";
    for(UserDO user: users){
    	str += "<tr><td colspan=3><hr></td></tr>";
    	str += "<tr>";
    	str += "<td>" + user.getId() + "</td>";
    	str += "<td>" + user.getName() + "</td>";
    	str += "<td>&nbsp;(" + user.getPhone() + ")</td>";
    	str += "</tr>";
    }
    str += "</table>";
	out.print(str);
%>