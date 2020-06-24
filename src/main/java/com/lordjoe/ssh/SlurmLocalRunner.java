package com.lordjoe.ssh;

import com.lordjoe.blast.BLastTools;
import com.lordjoe.blast.OSValidator;
import com.lordjoe.fasta.LocalJobRunner;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;

/**
 * com.lordjoe.ssh.SlurmRunner
 * User: Steve
 * Date: 2/5/20
 * will be the main BLAST CAller
 */
public class SlurmLocalRunner implements IJobRunner  {


    public static BlastLaunchDTO handleLocBlastArgs(String[] args) {
        int index = 0;
        BLASTProgram program = BLASTProgram.BLASTP;
        String database = "xxx";
        String query = "xxx";
        String out = "xxx";
        if (args[index++].toLowerCase().endsWith("blastn"))
            program = BLASTProgram.BLASTN;     // todo get smarter handle more cases

        BlastLaunchDTO ret = new BlastLaunchDTO(program);
        while (index < args.length) {
            String next = args[index];
            if (next.equalsIgnoreCase("-db")) {
                index++;
                database = args[index++];
                continue;
            }
            if (next.equalsIgnoreCase("-remote")) {
                index++;
                continue;
            }
            if (next.equalsIgnoreCase("-query")) {
                index++;
                query = args[index++];
                continue;
            }
            if (next.equalsIgnoreCase("-out")) {
                index++;
                out = args[index++];
                continue;
            }
            if (next.equalsIgnoreCase("-outfmt")) {
                index++;
                index++;
                continue;
            }


        }
        ret.output = new File(out);
        ret.query = new File(query);
        ret.format = BLASTFormat.XML2;
        ret.database = database;
        return ret;

    }


    public final BlastLaunchDTO job;
    public final Properties clusterProperties = LocalJobRunner.getClusterProperties(null);
    private JobState lastState;
    private final AtomicReference<JobState> state = new AtomicReference<>();

    public SlurmLocalRunner(BlastLaunchDTO job) {
        this.job = job;
        state.set(JobState.RunStarted);
        IJobRunner.registerRunner(this);
    }

    public  String generateSlurmScript() {
        StringBuilder sb = new StringBuilder();
        sb.append("#! /bin/bash\n" +
                "#\n" +
                "### $1 is the input for blast file name with path\n" +
                "### $2 is the counter from the calling script, used for output\n" +
                "#\n" +
                "#SBATCH --ntasks=1\n" +
                "#SBATCH --cpus-per-task=32\n" +
                "#SBATCH --output=batchOutput$2.txt\n" +
                "\n" +
                "fileName=${1##*/}\n");
        sb.append("srun  -n1 --exclusive ") ;
        sb.append(generateExecutionScript());
        sb.append("\n");
        sb.append("wait\n");
        return sb.toString();
    }



    public JobState getState() {
        return state.get();
    }
    public String getId() {
        return this.job.id;
    }
    public BlastLaunchDTO getJob() { return job;}

    @Override
    public void setLastState(JobState s) {
        lastState = s;
    }

    @Override
    public JobState getLastState() {
        return lastState;
    }



    public  String generateExecutionScript() {
        StringBuilder sb = new StringBuilder();
        sb.append("filename=${1}\n");
        sb.append("base=`basename \"$filename\"`\n");
        sb.append("base1=${base%.*}\n");
        sb.append("base=${base1}.xml\n");

        String program = clusterProperties.getProperty("LocationOfLocalBLASTPrograms") + job.program.toString().toLowerCase();
        sb.append(program);
        sb.append(" -query ");

        sb.append("${filename}");
        sb.append(" ");

         sb.append(" -db ");
        sb.append(job.database);

        sb.append("   -num_threads 32   -num_alignments 10 -evalue 1E-09 ");

        sb.append(" -outfmt ");
        sb.append(Integer.toString(job.format.code));
         
        sb.append(" -out ");
        sb.append(clusterProperties.getProperty("LocationOfDefaultDirectory") + clusterProperties.getProperty("RelativeOutputDirectory")   + "/" +  job.id);
        sb.append("/");
        sb.append("${base}");

        return sb.toString();
    }



    @Override
    public void run() {
        try {
            List<String> args = new ArrayList<>();
            BlastLaunchDTO job = getJob();
            BLASTProgram bp = job.program;
            String program = clusterProperties.getProperty("LocationOfLocalBLASTPrograms") + "bin/" + job.program.toString().toLowerCase();
         String blastName = "./" + bp.toString().toLowerCase();
            if(OSValidator.isWindows()) {
                blastName = program +  ".exe";
            }
            args.add(blastName);
            args.add("-query");
            String qpath = job.query.getAbsolutePath();
            args.add(job.query.getPath());
            args.add("-db");
            args.add(job.database);
            args.add("-out");
            args.add(job.output.getPath());
            args.add("-outfmt");
            args.add(Integer.toString(job.format.code));

            state.set(JobState.RunStarted);
            String[] commandargs = args.toArray(new String[0]);
            for (int i = 0; i < commandargs.length; i++) {
                String commandarg = commandargs[i];
                System.out.println(commandarg + " ");
            }
             String result = BLastTools.executeCommand( commandargs);
            state.set(JobState.JobFinished);
        } catch (IOException e) {
            throw new RuntimeException(e);

        } catch (InterruptedException e) {
            throw new RuntimeException(e);

        }

    }



    public static void main(String[] args) throws InterruptedException {
        BlastLaunchDTO dto = handleLocBlastArgs(args);
        SlurmLocalRunner me = new SlurmLocalRunner(dto);
        Thread t = new Thread(me);
        t.start();
        t.join();
        System.out.println(me.job.id);
    }
}

