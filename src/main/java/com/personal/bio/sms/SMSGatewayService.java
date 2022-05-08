package com.personal.bio.sms;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class SMSGatewayService {

	private static final Logger logger = LoggerFactory.getLogger(SMSGateway.class);
	
	public boolean sendSMSService(String API_URL) {
		boolean sendStatus=true;
		URLConnection myURLConnection=null;
		URL myURL=null;
		BufferedReader reader=null;
			
		try
		{
		    //prepare connection
		    myURL = new URL(API_URL);
		    myURLConnection = myURL.openConnection();
		    myURLConnection.connect();
		    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
		    //reading response 
		    String response;
		    while ((response = reader.readLine()) != null) 
		    //print response 
		    System.out.println(response);
		    logger.info(response);
		    //finally close connection
		    reader.close();
		    
		}catch(Exception e) { 
			logger.info("SMS Status:"+e.getLocalizedMessage());
			e.printStackTrace();
			sendStatus=false;
		} 
		
		return sendStatus;
	}
}
