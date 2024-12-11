<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");

    String name = request.getParameter("name");
    String uid = request.getParameter("uid");
    String upw = request.getParameter("upw");
    String phone = request.getParameter("phone");
	
    UserDAO dao = new UserDAO();
    if(dao.exists(uid)){
    	out.print("이미 가입한 회원 입니다.");
    	return;
    }
    
    if(dao.insert(uid, upw, name, phone)){
    	out.print("회원 가입이 완료 되었습니다.");
    }else{
    	out.print("회원 가입 처리 중 오류가 발생하였습니다.");
    }

%>
