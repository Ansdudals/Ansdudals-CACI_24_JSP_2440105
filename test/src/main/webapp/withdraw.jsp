<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	
	UserDAO dao = new UserDAO();
	
	if(dao.delete(uid)){
    	response.sendRedirect("userList.jsp");
    }
    else {
        out.print("오류가 발생하었습니다.");
    }
%>