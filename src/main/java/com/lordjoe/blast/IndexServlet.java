package com.lordjoe.blast;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * com.lordjoe.blast.BLASTRunnerServlet
 * User: Steve
 * Date: 1/17/20
 */
public class IndexServlet extends HttpServlet {

    public static final String INDEX_TEXT = "\n" +
                "<html>\n" +
            "  <head>\n" +
            "    <title>Index Page</title>\n" +
            "  </head>\n" +
            "  <body>\n" +
            "  <H1>Your Job Is Started</H1>\n" +
            "  \n" +
            "  <H1>You will receive an email when it is finished</H1>\n" +
            "  \n" +
            "   <a href=\"locblast.jsp\">LocBlast</a>  <p/> \n" +
            "   <a href=\"/SlurmProject/blastRunner?Sample=sequence\">Call With Sequence</a> <p/> \n" +
            "   <a href=\"/SlurmProject/blastRunner?Sample=file\">Call With File</a> <p/>  \n" +
            "   <a href=\"/SlurmProject/blastRunner?stop=true\">Stop</a> <p/>  \n" +
            "  </body>\n" +
            "</html>";


    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws IOException {
         response.setContentType("text/html");
        ServletOutputStream sout = response.getOutputStream();
        sout.print(INDEX_TEXT);
        sout.close();
    }


    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws IOException {
        doGet(request, response);
    }


}
