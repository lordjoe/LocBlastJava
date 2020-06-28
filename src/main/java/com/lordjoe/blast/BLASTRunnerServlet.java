package com.lordjoe.blast;

import org.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

/**
 * com.lordjoe.blast.BLASTRunnerServlet
 * User: Steve
 * Date: 1/17/20
 */
public class BLASTRunnerServlet extends HttpServlet {


    public static final String SEQUENCE_FILE_TEXT =
            "{\"bx_evalue\":\"10.0\",\n" +
                    "\"bx_filter1\":\"L\",\n" +
                    "\"bx_gapcosts\":\"11,1\",\n" +
                    "\"tbx_word_size\":\"3\",\n" +
                    "\"program\":\"blastp\",\n" +
                    "\"bp_evalue\":\"10.0\",\n" +
                    "\"bn_evalue\":\"10.0\",\n" +
                    "\"tbn_matrix\":\"BLOSUM62\",\n" +
                    "\"id\":\"b386676b-bae1-4a3f-80ba-08ca02566dfc\",\n" +
                    "\"datalib\":\"db/pdt\",\n" +
                    "\"db_gapcosts\":\"11,1\",\n" +
                    "\"tbn_word_size\":\"6\",\n" +
                    "\"tbn_num_alignments\":\"50\",\n" +
                    "\"rpstbn_num_alignments\":\"50\",\n" +
                    "\"psib_evalue\":\"10.0\",\n" +
                    "\"db_word_size\":\"3\",\n" +
                    "\"bn_match_scores\":\"2,-3\",\n" +
                    "\"bp_gapcosts\":\"11,1\",\n" +
                    "\"sequence\":\">tr|A0PQ23|A0PQ23_MYCUA Chorismate pyruvate-lyase\\r\\nMLAVLPEKREMTECHLSDEEIRKLNRDLRILIATNGTLTRILNVLANDEIVVEIVKQQIQ\\r\\nDAAPEMDGCDHSSIGRVLRRDIVLKGRRSGIPFVAAESFIAIDLLPPEIVASLLETHRPI\\r\\nGEVMAASCIETFKEEAKVWAGESPAWLELDRRRNLPPKVVGRQYRVIAEGRPVIIITEYF\\r\\nLRSVFEDNSREEPIRHQRSVGTSARSGRSICT\",\n" +
                    "\"rpsb_num_alignments\":\"50\",\n" +
                    "\"rpstbn_num_descriptions\":\"100\",\n" +
                    "\"psib_gapcosts\":\"11,1\",\n" +
                    "\"psib_threshold\":\"0.005\",\n" +
                    "\"tbn_evalue\":\"10.0\",\n" +
                    "\"bp_word_size\":\"6\",\n" +
                    "\"tbx_evalue\":\"10.0\",\n" +
                    "\"rpstbn_evalue\":\"10.0\",\n" +
                    "\"db_num_alignments\":\"50\",\n" +
                    "\"bx_num_alignments\":\"50\",\n" +
                    "\"psib_matrix\":\"BLOSUM62\",\n" +
                    "\"psib_pseudocount\":\"0\",\n" +
                    "\"psib_num_alignments\":\"50\",\n" +
                    "\"db_matrix\":\"BLOSUM62\",\n" +
                    "\"search\":\"Search\",\n" +
                    "\"tbx_matrix\":\"BLOSUM62\",\n" +
                    "\"bp_num_alignments\":\"50\",\n" +
                    "\"tbn_gapcosts\":\"11,1\",\n" +
                    "\"tbx_strand\":\"both\",\n" +
                    "\"rpsb_num_descriptions\":\"100\",\n" +
                    "\"rpstbn_strand\":\"both\",\n" +
                    "\"bn_gapcosts\":\"5,2\",\n" +
                    "\"email\":\"lordjoe2000@gmail.com\",\n" +
                    "\"bp_matrix\":\"BLOSUM62\",\n" +
                    "\"bn_filter2\":\"m\",\n" +
                    "\"bn_filter1\":\"L\",\n" +
                    "\"db_evalue\":\"10.0\",\n" +
                    "\"tbx_num_alignments\":\"50\",\n" +
                    "\"bx_word_size\":\"6\",\n" +
                    "\"outfmt\":\"16\",\n" +
                    "\"psib_word_size\":\"3\",\n" +
                    "\"seqfile\":\"\",\n" +
                    "\"adv_param\":\"default\",\n" +
                    "\"bn_word_size\":\"11\",\n" +
                    "\"bx_matrix\":\"BLOSUM62\",\n" +
                    "\"bn_num_alignments\":\"50\",\n" +
                    "\"db_threshold\":\"0.05\",\n" +
                    "\"tbn_filter1\":\"L\",\n" +
                    "\"db_pseudocount\":\"0\",\n" +
                    "\"rpsb_evalue\":\"10.0\"}\n";

    public static final String FILE_FILE_TEXT =  "{\"bx_evalue\":\"10.0\",\n" +
            "\"bx_filter1\":\"L\",\n" +
            "\"bx_gapcosts\":\"11,1\",\n" +
            "\"tbx_word_size\":\"3\",\n" +
            "\"program\":\"blastp\",\n" +
            "\"bp_evalue\":\"10.0\",\n" +
            "\"bn_evalue\":\"10.0\",\n" +
            "\"tbn_matrix\":\"BLOSUM62\",\n" +
            "\"id\":\"d2e42462-76af-4ef3-8985-a1e6d541e0f3\",\n" +
            "\"datalib\":\"swissprot -remote\",\n" +
            "\"db_gapcosts\":\"11,1\",\n" +
            "\"tbn_word_size\":\"6\",\n" +
            "\"tbn_num_alignments\":\"50\",\n" +
            "\"rpstbn_num_alignments\":\"50\",\n" +
            "\"psib_evalue\":\"10.0\",\n" +
            "\"db_word_size\":\"3\",\n" +
            "\"bn_match_scores\":\"2,-3\",\n" +
            "\"bp_gapcosts\":\"11,1\",\n" +
            "\"sequence\":\"\",\n" +
            "\"rpsb_num_alignments\":\"50\",\n" +
            "\"rpstbn_num_descriptions\":\"100\",\n" +
            "\"psib_gapcosts\":\"11,1\",\n" +
            "\"psib_threshold\":\"0.005\",\n" +
            "\"tbn_evalue\":\"10.0\",\n" +
            "\"bp_word_size\":\"6\",\n" +
            "\"tbx_evalue\":\"10.0\",\n" +
            "\"rpstbn_evalue\":\"10.0\",\n" +
            "\"db_num_alignments\":\"50\",\n" +
            "\"bx_num_alignments\":\"50\",\n" +
            "\"psib_matrix\":\"BLOSUM62\",\n" +
            "\"psib_pseudocount\":\"0\",\n" +
            "\"psib_num_alignments\":\"50\",\n" +
            "\"db_matrix\":\"BLOSUM62\",\n" +
            "\"search\":\"Search\",\n" +
            "\"tbx_matrix\":\"BLOSUM62\",\n" +
            "\"bp_num_alignments\":\"50\",\n" +
            "\"tbn_gapcosts\":\"11,1\",\n" +
            "\"tbx_strand\":\"both\",\n" +
            "\"rpsb_num_descriptions\":\"100\",\n" +
            "\"rpstbn_strand\":\"both\",\n" +
            "\"bn_gapcosts\":\"5,2\",\n" +
            "\"email\":\"lordjoe2000@gmail.com\",\n" +
            "\"bp_matrix\":\"BLOSUM62\",\n" +
            "\"bn_filter2\":\"m\",\n" +
            "\"bn_filter1\":\"L\",\n" +
            "\"db_evalue\":\"10.0\",\n" +
            "\"tbx_num_alignments\":\"50\",\n" +
            "\"bx_word_size\":\"6\",\n" +
            "\"outfmt\":\"16\",\n" +
            "\"psib_word_size\":\"3\",\n" +
            "\"seqfile\":\"EColi100.fas\",\n" +
            "\"adv_param\":\"default\",\n" +
            "\"bn_word_size\":\"11\",\n" +
            "\"bx_matrix\":\"BLOSUM62\",\n" +
            "\"bn_num_alignments\":\"50\",\n" +
            "\"db_threshold\":\"0.05\",\n" +
            "\"tbn_filter1\":\"L\",\n" +
            "\"db_pseudocount\":\"0\",\n" +
            "\"rpsb_evalue\":\"10.0\"}";

    // public final LocBlast jobs;

    // public BLASTRunnerServlet(LocBlast j) {
    //      jobs = j;
    // }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {

        String sample = request.getParameter("Sample");
        if(sample != null)  {
            JSONObject json = null;
            if("sequence".equalsIgnoreCase(sample)) {
                json = new JSONObject(SEQUENCE_FILE_TEXT);
            }
            if("file".equalsIgnoreCase(sample)) {
                json = new JSONObject(FILE_FILE_TEXT);
            }
            if(json != null)  {
               Map<String,Object> map = json.toMap();
               new JSonClusterRunner(map).startJob();
            }
        }
        else {
            String id = request.getParameter("JobId");
            JSonClusterRunner runner = null;
            if (id != null) {
                runner = JSonClusterRunner.fromID(id);

            } else {
                runner = handleBlastLaunch(request);
                runner.startJob();
            }
        }
        ServletContext sc = request.getServletContext();
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
        Map<String, String> map = getRequestParameters(request);
        File file = new File("blastParameters.txt");
        String path = file.getAbsolutePath();
        saveParameters(map, file);

        return new JSonClusterRunner(map);
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
