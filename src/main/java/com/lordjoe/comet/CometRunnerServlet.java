package com.lordjoe.comet;

import com.lordjoe.blast.JSonClusterRunner;
import com.lordjoe.blast.NetClientGet;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

/**
 * com.lordjoe.comet.CometRunnerServlet
 * User: Steve
 * Date: 8/31/20
 */
public class CometRunnerServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        String stop = request.getParameter("stop");
        ServletContext sc = request.getServletContext();
        if (stop != null) {
            NetClientGet.callClientWithJSon("stop", null);

        } else {

            String id = request.getParameter("JobId");
            JSonClusterRunner runner = null;
            if (id != null) {
                runner = JSonClusterRunner.fromID(id);

            } else {
                runner = handleBlastLaunch(request);
                runner.startJob("runComet");
            }
        }

        //  RequestDispatcher rd = sc.getRequestDispatcher("/locBlast.monitorBlast?JobId=" + runner.getId());
        RequestDispatcher rd = sc.getRequestDispatcher("/myIndex");
        rd.forward(request, response);
    }

    public static Map<String, String> getRequestParameters(HttpServletRequest request) {
        Map<String, String> ret = new HashMap<>();
        Map<String, String[]> map = request.getParameterMap();
        for (String s : map.keySet()) {
            String[] strings = map.get(s);
            if (strings.length == 1) {
                ret.put(s, strings[0]);
            }
        }

        return ret;
    }

    protected JSonClusterRunner handleBlastLaunch(HttpServletRequest request) {
        String idx = UUID.randomUUID().toString();

        Map<String, String> map = getFiles(request, idx);
        File file = new File("blastParameters.txt");
        String path = file.getAbsolutePath();
        saveParameters(map, file);
        map.put("JobId", idx);
        Enumeration<String> parameterNames = request.getParameterNames();
        Map<String, String> params = new HashMap<>();
        StringBuilder sb = new StringBuilder();
        while (parameterNames.hasMoreElements()) {
            String parameterName = parameterNames.nextElement();
            String value = request.getParameter(parameterName);
            params.put(parameterName, value);
            sb.append(parameterName + " = " + value + "\n");
        }
        String s = sb.toString();

        return new JSonClusterRunner(map);
    }

    private Map<String, String> getFiles(HttpServletRequest request, String id) {
        Map<String, String> ret = new HashMap<>();
        ret.put("program", "comet");
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

// Configure a repository (to ensure a secure temp location is used)
        ServletContext servletContext = this.getServletConfig().getServletContext();
        Object attribute = servletContext.getAttribute("javax.servlet.context.tempdir");
        File repository = (File) attribute;
        factory.setRepository(repository);

// Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);
        File uploadDirParent = new File("/opt/blastserver");
        File uploadDir = new File(uploadDirParent, id);
        uploadDir.mkdirs();
        uploadDir.setWritable(true, false); // writable for all
        uploadDir.setReadable(true, false); // writable for all
        uploadDir.setExecutable(true, false); // directories are executable
        try {
            File logfile = new File(uploadDir, "log.txt");
            PrintWriter pw = new PrintWriter(new FileWriter(logfile));
            pw.println("Job Log");
            pw.close();
            logfile.setWritable(true, false); // writable for all
            logfile.setReadable(true, false); // writable for all
        } catch (IOException e) {
            throw new RuntimeException(e);

        }

// Parse the request
        try {
            List<FileItem> items = upload.parseRequest(request);
            if (items != null && items.size() > 0) {
                for (FileItem item : items) {
                    String name = item.getFieldName();
                    // processes only fields that are not form fields
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        if (fileName.length() > 0) {
                            File storeFile = new File(uploadDir, fileName);

                            if (storeFile.exists())      // overwrite is an error
                                storeFile.delete();
                            // saves the file on disk
                            item.write(storeFile);
                            storeFile.setReadable(true,true) ;
                            storeFile.setWritable(true,true) ;
                                request.setAttribute("message",
                                    "Upload has been done successfully!");
                            String string = storeFile.getName();
                            ret.put(name, string);
                        }
                    } else {
                        String string = item.getString();
                        ret.put(name, string);
                    }
                }
            }
            return ret;
        } catch (Exception e) {
            throw new RuntimeException(e);

        }
    }


    public static void saveParameters(Map<String, String> map, File file) {
        try {
            List<String> keys = new ArrayList<>(map.keySet());
            Collections.sort(keys);
            PrintWriter out = new PrintWriter(new FileWriter(file));
            for (String key : keys) {
                out.println(key + "," + map.get(key).replace("\n", "").replace("\r", ""));
            }
            out.close();
        } catch (IOException e) {
            throw new RuntimeException(e);

        }
    }


    public static Map<String, String> readParameters(File file) {
        try {
            Map<String, String> ret = new HashMap<>();
            LineNumberReader rdr = new LineNumberReader(new FileReader(file));
            String line = rdr.readLine();
            while (line != null) {
                String[] split = line.split(",");
                if (split.length > 1) {
                    ret.put(split[0], split[1]);
                }
                line = rdr.readLine();
            }
            rdr.close();
            return ret;
        } catch (IOException e) {
            throw new RuntimeException(e);

        }

    }


}
