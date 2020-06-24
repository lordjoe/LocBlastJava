package com.lordjoe.ssh;

import com.lordjoe.blast.*;
import com.lordjoe.fasta.FastaTools;
import com.lordjoe.utilities.FileUtilities;
import com.jcraft.jsch.SftpException; //

import java.io.File;
import java.util.Map;

/**
 * com.lordjoe.ssh.JobRunnerUtilities
 * User: Steve
 * Date: 5/3/2020
 */
public class JobRunnerUtilities {

	private SftpException createdToForceClassLoad;
    public static final int LOCAL_LIMIT = 110;

    public static IJobRunner createRunner(Map<String, String> parameters) {
        String userDir = System.getProperty("user.dir");
        IJobRunner ret = null;
        String id = parameters.get("JobId");
        String program = parameters.get("program"); //   BlastP, BlastN, BlastX, tBlastN...
        GenericBlastParameters params = GenericBlastParameters.getRealParameters(program);
        params.datalib = parameters.get("datalib"); //  NR, NR/NT, SwissProt, RefSeq-Protein, ...
        params.sequencedata = parameters.get("sequence");
        if (params.sequencedata != null && params.sequencedata.length() > 10) {
            params.sequenceFile = generateSequenceFile(params.sequencedata);
        } else {
            params.sequenceFile = parameters.get("seqfile");
        }
        params.outputFormat = parameters.get("outfmt");


        BlastLaunchDTO dto = new BlastLaunchDTO(BLASTProgram.fromString(program));

        dto.database = params.datalib;
        dto.query = new File(params.sequenceFile);
        dto.format = BLASTFormat.fromCode(Integer.parseInt(params.outputFormat));
        if(dto.format == BLASTFormat.XML2) {
            dto.output = makeXMLFileName( dto.query);
        }

        int numberFasta = FastaTools.countFastaEntities( dto.query);
        if(false && numberFasta <= LOCAL_LIMIT) {
             ret = new SlurmLocalRunner(dto);
         }
        else  {
            ret = new SlurmClusterRunner(dto);
        }

        if(true)
            return ret;


        int numberAlignments = Integer.parseInt(parameters.get("bn_num_alignments"));
        double chancematches = Double.parseDouble(parameters.get("bn_evalue"));
        int wordSize = Integer.parseInt(parameters.get("bn_word_size"));
        String matchScores = parameters.get("bn_match_scores");
        String gapCosts = parameters.get("bn_gapcosts");
        boolean maskQuery = new Boolean(parameters.get("bn_filter2"));
// do some processing here...

        switch (program) {
            case "blastn":
                BLASTNParameters realN = (BLASTNParameters) params;
                //            HandleBlastN.handleParams(jobs,realN,request, response);
                break;
            case "blastp":
                BLASTPParameters realP = (BLASTPParameters) params;
                //           HandleBlastP.handleParams(jobs,realP,request, response);
                break;
            default:
                throw new UnsupportedOperationException(program + " is not supported");
        }
        return new MockJobRunner(dto);
    }

    private static String generateSequenceFile(String sequencedata) {
        File f = makeSequenceFileName();
        String path = f.getAbsolutePath();
        FileUtilities.writeFile(f, sequencedata);
        return f.getAbsolutePath();
    }

    private static File makeSequenceFileName() {
        int index = 1;
        File test = new File("sequence" + index++ + ".faa");
        while (test.exists()) {
            test = new File("sequence" + index++ + ".faa");
        }
        return test;
    }


    private static File makeXMLFileName(File f) {
        File parent = f.getParentFile();
        String name = f.getName();
        name = name.substring(0, name.lastIndexOf("."));
        if (parent != null) {
            return makeXMLFileName(parent, name);
        }
        int index = 1;
        File test = new File(name + index++ + ".xml");
        while (test.exists()) {
            test = new File(name + +index++ + ".xml");
        }
        return test;
    }


    private static File makeXMLFileName(File parent, String name) {
        int index = 1;
        File test = new File(parent, name + index++ + ".xml");
        while (test.exists()) {
            test = new File(parent, name + index++ + ".xml");
        }
        return test;
    }

    public static void main(String[] args) {
        Map<String, String> map = BLASTRunnerServlet.readParameters(new File(args[0]));
        IJobRunner runner = createRunner(map)  ;
        runner.run();
    }

}