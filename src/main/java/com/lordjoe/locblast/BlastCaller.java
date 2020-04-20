package com.lordjoe.locblast;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;

/**
 * com.lordjoe.locblast.BlastCaller
 * User: Steve
 * Date: 4/19/2020
 */
public class BlastCaller  extends HttpServlet{

    public void doPost(HttpServletRequest request, HttpServletResponse response)  throws IOException {
        doGet( request,   response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException{
        Map<String, String[]> parameterMap = request.getParameterMap();
        Enumeration<String> parameterNames = request.getParameterNames();
        String program = request.getParameter("program");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println("<h1>Hello Servlet Get</h1>");
        out.println("</body>");
        out.println("</html>");
    }
}