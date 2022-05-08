package com.personal.bio.sms;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class SMSAPIProperties {

	//https://docs.msg91.com/collection/msg91-api-integration/5/send-sms/T26A6X72
	
	@Value("${SMS_API_URL}")
	public  String SMS_API_URL; //Send SMS API
	
	@Value("${OTP_API_URL}")
	public  String OTP_API_URL;  //Send OTP API
	
	@Value("${RESEND_OTP_API_URL}")
	public  String RESEND_OTP_API_URL;  //Send Resend OTP API
	
	@Value("${OTPEMAIL_API_URL}")
	public  String OTPEMAIL_API_URL;  //Send OTP email API
	
	@Value("${VERIFY_OTP_API_URL}")
	public  String VERIFY_OTP_API_URL;  //Send Verify OTP API
	
	@Value("${DEFAULT_SENDER_ID}")
	public  String DEFAULT_SENDER_ID; //Sender ID.
	
	@Value("${SENDER_ID}")
	public  String SENDER_ID; //Sender ID,While using route4 sender id should be 6 characters long.
	
	@Value("${ROUTE}")
	public  String ROUTE;  //define route
	
	@Value("${AUTHKEY}")
	public  String AUTHKEY;  //Your authentication key

	public String getSMS_API_URL() {
		return SMS_API_URL;
	}

	public void setSMS_API_URL(String sMS_API_URL) {
		SMS_API_URL = sMS_API_URL;
	}

	public String getOTP_API_URL() {
		return OTP_API_URL;
	}

	public void setOTP_API_URL(String oTP_API_URL) {
		OTP_API_URL = oTP_API_URL;
	}

	public String getRESEND_OTP_API_URL() {
		return RESEND_OTP_API_URL;
	}

	public void setRESEND_OTP_API_URL(String rESEND_OTP_API_URL) {
		RESEND_OTP_API_URL = rESEND_OTP_API_URL;
	}

	public String getOTPEMAIL_API_URL() {
		return OTPEMAIL_API_URL;
	}

	public void setOTPEMAIL_API_URL(String oTPEMAIL_API_URL) {
		OTPEMAIL_API_URL = oTPEMAIL_API_URL;
	}

	public String getVERIFY_OTP_API_URL() {
		return VERIFY_OTP_API_URL;
	}

	public void setVERIFY_OTP_API_URL(String vERIFY_OTP_API_URL) {
		VERIFY_OTP_API_URL = vERIFY_OTP_API_URL;
	}

	public String getDEFAULT_SENDER_ID() {
		return DEFAULT_SENDER_ID;
	}

	public void setDEFAULT_SENDER_ID(String dEFAULT_SENDER_ID) {
		DEFAULT_SENDER_ID = dEFAULT_SENDER_ID;
	}

	public String getSENDER_ID() {
		return SENDER_ID;
	}

	public void setSENDER_ID(String sENDER_ID) {
		SENDER_ID = sENDER_ID;
	}

	public String getROUTE() {
		return ROUTE;
	}

	public void setROUTE(String rOUTE) {
		ROUTE = rOUTE;
	}

	public String getAUTHKEY() {
		return AUTHKEY;
	}

	public void setAUTHKEY(String aUTHKEY) {
		AUTHKEY = aUTHKEY;
	}

	
	
	
	
	
}
