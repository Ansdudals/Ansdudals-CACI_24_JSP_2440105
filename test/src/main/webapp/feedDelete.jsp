<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.FeedDAO" %>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	String uno = request.getParameter("noBtn");
	System.out.println("uno " + uno);
	
	FeedDAO dao = new FeedDAO();
	
	if(dao.delete(uno)){
    	response.sendRedirect("main.jsp");
    }
    else {
        out.print("오류가 발생하었습니다.");
    }
%>