package com.personal.bio.sms;

import java.net.URLEncoder;
import java.util.Locale;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.personal.bio.dto.UsersDto;

@Service
public class MSG91SMSService {

	@Autowired
	SMSGatewayService smsGatewayService;
	
	@Autowired
	SMSAPIProperties smsapiProperties;
	
	static String countryCode=Locale.getDefault().getCountry();
	
	public boolean SMSAuthetications(UsersDto users){
		
		String smsUrl=smsapiProperties.SMS_API_URL;
		System.out.println("SMS API ==>"+smsUrl);		
		String finalURL=prepareSMSAutheticationURL(users,smsUrl);
		boolean smsStatus=smsGatewayService.sendSMSService(finalURL);
		return smsStatus;
	}
	
	@SuppressWarnings("deprecation")
	private String prepareSMSAutheticationURL(UsersDto users,String smsUrl) {
		
		//encoding message 
		String encoded_message=URLEncoder.encode(PrepareSMSMessage(users).toString());
		StringBuilder sbPostData=new StringBuilder(smsUrl);
		sbPostData.append("country="+CountryPhoneCode.getPhone(countryCode)); 
		sbPostData.append("&authkey="+smsapiProperties.AUTHKEY); 
		sbPostData.append("&mobiles="+users.getMobile_no());
		sbPostData.append("&message="+encoded_message);
		sbPostData.append("&route="+smsapiProperties.ROUTE);
		sbPostData.append("&sender="+smsapiProperties.SENDER_ID);

		//final string
		System.out.println("API Request ==> "+sbPostData);
		return sbPostData.toString();
	}
	
	
	
	public boolean smsOTPAuthetications(UsersDto users){
		
		String smsUrl=smsapiProperties.OTP_API_URL;
		System.out.println("SMS API ==>"+smsUrl);		
		String finalURL=prepareOTPAutheticationURL(users,smsUrl);
		boolean smsStatus=smsGatewayService.sendSMSService(finalURL);
		return smsStatus;
	}

	@SuppressWarnings("deprecation")
	private String prepareOTPAutheticationURL(UsersDto users,String smsUrl) {

		//encoding message 
		String encoded_message=URLEncoder.encode(prepareOTPMessage(users).toString());
		StringBuilder sbPostData=new StringBuilder(smsUrl);
		sbPostData.append("authkey="+smsapiProperties.AUTHKEY); 
		sbPostData.append("&mobiles="+users.getMobile_no());
		sbPostData.append("&message="+encoded_message);
		sbPostData.append("&route="+smsapiProperties.ROUTE);
		sbPostData.append("&sender="+smsapiProperties.SENDER_ID);

		//final string
		System.out.println("API Request ==> "+sbPostData);
		return sbPostData.toString();
	}
	
	public boolean smsOTPResendAuthetications(UsersDto users){
		
		String smsUrl=smsapiProperties.RESEND_OTP_API_URL;
		System.out.println("SMS API ==>"+smsUrl);		
		String finalURL=prepareOTPResendAutheticationURL(users,smsUrl);
		boolean smsStatus=smsGatewayService.sendSMSService(finalURL);
		return smsStatus;
	}
	@SuppressWarnings("deprecation")
	private String prepareOTPResendAutheticationURL(UsersDto users,String smsUrl) {

		//encoding message 
		String encoded_message=URLEncoder.encode(prepareOTPMessage(users).toString());
		StringBuilder sbPostData=new StringBuilder(smsUrl);
		sbPostData.append("authkey="+smsapiProperties.AUTHKEY); 
		sbPostData.append("&mobiles="+users.getMobile_no());

		//final string
		System.out.println("API Request ==> "+sbPostData);
		return sbPostData.toString();
	}
	
	public boolean smsVerifyOTPAuthetications(UsersDto users){
		
		String smsUrl=smsapiProperties.VERIFY_OTP_API_URL;
		System.out.println("SMS API ==>"+smsUrl);		
		String finalURL=prepareVerifyOTPAutheticationURL(users,smsUrl);
		boolean smsStatus=smsGatewayService.sendSMSService(finalURL);
		return smsStatus;
	}

	@SuppressWarnings("deprecation")
	private String prepareVerifyOTPAutheticationURL(UsersDto users,String smsUrl) {

		//encoding message 
		String encoded_message=URLEncoder.encode(prepareOTPMessage(users).toString());
		StringBuilder sbPostData=new StringBuilder(smsUrl);
		sbPostData.append("authkey="+smsapiProperties.AUTHKEY); 
		sbPostData.append("&mobiles="+users.getMobile_no());
		sbPostData.append("&otp="+users.getDynamic_access_code());

		//final string
		System.out.println("API Request ==> "+sbPostData);
		return sbPostData.toString();
	}
	
	
	public boolean emailOTPAuthetications(UsersDto users){
		
		String smsUrl=smsapiProperties.OTPEMAIL_API_URL;
		System.out.println("SMS API ==>"+smsUrl);		
		String finalURL=prepareOTPEmailAutheticationURL(users,smsUrl);
		boolean smsStatus=smsGatewayService.sendSMSService(finalURL);
		return smsStatus;
	}
	@SuppressWarnings("deprecation")
	private String prepareOTPEmailAutheticationURL(UsersDto users,String smsUrl) {

		//encoding message 
		String encoded_message=URLEncoder.encode(PrepareSMSMessage(users).toString());
		StringBuilder sbPostData=new StringBuilder(smsUrl);
		sbPostData.append("authkey="+smsapiProperties.AUTHKEY); 
		sbPostData.append("&email="+users.getEmail());
		sbPostData.append("&otp="+encoded_message);

		//final string
		System.out.println("API Request ==> "+sbPostData);
		return sbPostData.toString();
	}

	
	private String PrepareSMSMessage(UsersDto users) {
		StringBuilder message=new StringBuilder();
		if(StringUtils.isNotEmpty(users.getDynamic_access_code())){
			message.append("Dear "+users.getFirstname()+" "+users.getLastname());
			message.append("  Your verification Dynamic Access Code is "+users.getDynamic_access_code());
		}
		
		return message.toString();
	}

	private String prepareOTPMessage(UsersDto users) {
		StringBuilder message=new StringBuilder();
		if(StringUtils.isNotEmpty(users.getDynamic_access_code())){
			message.append("Your OTP is "+users.getDynamic_access_code());
		}
		
		return message.toString();
	}
}
