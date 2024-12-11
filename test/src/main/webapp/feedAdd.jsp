<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.FeedDAO" %>
<%
	request.setCharacterEncoding("utf-8");

    //String uid = request.getParameter("id");
    String uid = (String)session.getAttribute("id");
    String ucon = request.getParameter("content");
    
    System.out.print(uid);
    
    FeedDAO dao = new FeedDAO();
    if (dao.insert(uid, ucon)) {
    	
    	System.out.println(uid + " " + ucon);
        response.sendRedirect("main.jsp");
    }
    else {
        out.print("작성 글의 업로드 중 오류가 발생하였습니다.");
    }
%>