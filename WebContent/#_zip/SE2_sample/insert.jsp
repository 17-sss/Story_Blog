<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%    
    //����� utf-8ȯ���� �ƴ϶� �ѱ� ���� �׷��� ���Ƿ� �߰�                                                   
    request.setCharacterEncoding("EUC-KR");
    
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    
    //�ܼ� ���
    System.out.println("����:"+title);
    System.out.println("����:"+content);    
%>
 
���� : <%=title %><br>
���� : <br>
<%=content %>
