package com.Action;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp.common.action.Action;
import jsp.common.action.ActionForward;
import com.db.UserDBBean;


public class EmailCheckAction {
	    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	 
	        String id = request.getParameter("id");
	        UserDBBean dao = UserDBBean.getInstance();
	        
	        boolean result = dao.duplicateIdCheck(id);
	        
	        response.setContentType("text/html;charset=euc-kr");
	        PrintWriter out = response.getWriter();
	 
	        if(result)    out.println("0"); // 아이디 중복
	        else        out.println("1");
	        
	        out.close();
	        
	        return null;
	    }
}
