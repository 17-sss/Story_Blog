<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%    
    //제대로 utf-8환경이 아니라 한글 깨짐 그래서 임의로 추가                                                   
    request.setCharacterEncoding("EUC-KR");
    
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    
    //콘솔 출력
    System.out.println("제목:"+title);
    System.out.println("내용:"+content);    
%>
 
제목 : <%=title %><br>
내용 : <br>
<%=content %>
