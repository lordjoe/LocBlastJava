package com.lordjoe.ssh;

import java.io.File;
import java.util.UUID;

/**
 * com.lordjoe.ssh.BlastLaunchDTO
 * User: Steve
 * Date: 1/25/20
 */
public class BlastLaunchDTO {
    public final String program;
    public final String id;
    public String database;
    public File query;   // original file
    public String format;
    public File output;




    public BlastLaunchDTO(String program,String idx) {
        this.program = program;
        if(idx == null)
            id = UUID.randomUUID().toString();
        else
            id = idx;
    }

    public String asCommand()
    {
        StringBuffer sb = new StringBuffer();
        sb.append("-db ") ;
        sb.append(database);

        sb.append("-query ") ;
        sb.append(query.getAbsolutePath());

        sb.append("-outfmt  ") ;
        sb.append(format);

        sb.append("-out  ") ;
        sb.append(query.getAbsolutePath());

        return sb.toString();
    }

    public BlastLaunchDTO  withNewQuery(File newQuery,File output)  {
        BlastLaunchDTO ret = new BlastLaunchDTO(program,null);
        ret.database = database;
        ret.format = format;
        ret.query = newQuery;
        ret.output = output;
        return ret;
    }

    public static  String makeOutputName(File in,boolean isXML)  {
        String name = in.getName();
        String base = name.substring(0,name.lastIndexOf('.')) ;
        if(isXML)
            return base + ".xml";
        else
            return base + ".txt";

    }

}

