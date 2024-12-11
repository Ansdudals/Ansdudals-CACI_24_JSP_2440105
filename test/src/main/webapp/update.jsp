<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String phone = request.getParameter("phone");
	
	UserDAO dao = new UserDAO();
	
	if(dao.update(uid, upw, name, phone)){
    	response.sendRedirect("userList.jsp");
    }
    else {
        out.print("오류가 발생하었습니다.");
    }
%>
