package com.lordjoe.blast;

import com.lordjoe.ssh.BlastLaunchDTO;
import com.lordjoe.ssh.JobState;
import org.json.JSONObject;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public class JSonClusterRunner  {

    static Map<String,JSonClusterRunner> byID = new HashMap<>();
   public static void registerRunner(JSonClusterRunner runner) {
       byID.put(runner.getId(),runner);

   }
   public static JSonClusterRunner fromID(String id) {
       return byID.get(id);
   }
 
	
	private final Map<String, String> mapx = new HashMap<>();
	private   BlastLaunchDTO job;
	private final AtomicReference<JobState> lastState = new AtomicReference<JobState>(JobState.NullState);
	
	public JSonClusterRunner(Map<String, ? extends Object> inMap) {
		for(String key : inMap.keySet()) {
			Object value = inMap.get(key);
			mapx.put(key, value.toString());
		}
		String id = mapx.get("JobId");
		this.job = buildJob(id );
		registerRunner(this);
	}
	
	public void startJob(String server) {
		JSONObject json = new JSONObject(mapx);
		boolean response = NetClientGet.guaranteeServer();
		response = NetClientGet.callClientWithJSon(server, json);
	}

	private BlastLaunchDTO buildJob(String id) {
		String program = mapx.get("program");
		job = new BlastLaunchDTO(program,id);
		job.database =  mapx.get("database");
		String fileName = mapx.get("query");
		if(fileName != null) 
			job.query =  new File(fileName);
		mapx.put("JobId",job.id);
		return job; 
	}

 

	public String getId() {
		// TODO Auto-generated method stub
		return job.id;
	}

 
	public BlastLaunchDTO getJob() {
		// TODO Auto-generated method stub
		return job;
	}

 
	public JobState getLastState() {
		// TODO Auto-generated method stub
		return lastState.get();
	}

 
	public JobState getState() {
		// TODO Auto-generated method stub
        throw new UnsupportedOperationException("Fix This"); // ToDo	return null;
	}

 
	public void setLastState(JobState newValue) {
		lastState.set(newValue);

	}
	
	

}
