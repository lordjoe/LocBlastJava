package com.lordjoe.ssh;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

/**
 * com.lordjoe.ssh.MyUsers
 * User: Steve
 * Date: 10/19/20
 *  this call wants to be in this project
 */
public class MyUsers {
    public static String[] getAllUsersMails()  {
        return SSHUserData.getAllUsersMails();
    }

    private static Properties cometRemoteFiles = new Properties();
    public static final String COMET_PROPERTIES_FILE = "/opt/blastserver/cometFiles.properties";

    public static Properties getCometRemoteFiles() {
        if(cometRemoteFiles.isEmpty()) {
            try {
                File data = new File(COMET_PROPERTIES_FILE);
                FileReader reader = new FileReader(data);
                cometRemoteFiles.load(reader);
                for (String o : cometRemoteFiles.stringPropertyNames()) {
                    System.out.println(o);
                }
            } catch (IOException e) {
            }
        }
        return cometRemoteFiles;
    }

    public static String[] getCometRemoteFileList() {
         Properties props = getCometRemoteFiles();
         List<String> filenames = new ArrayList<String>();
        for (Object o : props.keySet()) {
            filenames.add((String)o);
        }
        Collections.sort(filenames);
        String[] ret = new String[filenames.size()];
        int index = 0;
        for (String filename : filenames) {
            ret[index++] = filename;
        }
        return ret;
    }
}
