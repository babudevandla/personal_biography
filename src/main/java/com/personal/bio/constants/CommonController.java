package com.personal.bio.constants;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.personal.bio.mongo.service.UserService;

@Component
public class CommonController {

	@Autowired
	public UserService userService;
	

	@Autowired protected ServletContext context;
	

	
	@Autowired 
	protected EmailSender emailSender;
	
	
//	public Users user = null;
//
//    @ModelAttribute
//	public void getLoggedUser(HttpSession session,Principal pricipal,Model model){
//		if(pricipal!=null){
//			user=userService.findUserByUserName(pricipal.getName());
//			if(user!=null){
//				
//			}
//			model.addAttribute("user", user);
//		}
//	}
//	
	
	
  protected static String getDynamicCode() {
		String code = null;
		for(int i=0;i<1;i++){
			 code=String.valueOf( Math.round(Math.random()*1000000));
		}
		return code;
	}
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	
	}
	
	public static Date convertStringtoDateIndDDMMyyyyhhmmss(String strDate){
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

		System.out.println("StrDate:"+strDate);
		Date date = null;
		try {
			// Converting the input String to Date
			date = df.parse(strDate);

		} catch (ParseException pe) {
			pe.printStackTrace();
		}

		System.out.println("Date:"+date);
		return date;

	}

	public static Date stringtoDate(String strDate){

		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

		System.out.println("StrDate:"+strDate);
		Date date = null;
		try {
			// Converting the input String to Date
			date = df.parse(strDate);

		} catch (ParseException pe) {
			pe.printStackTrace();
		}

		System.out.println("Date:"+date);
		return date;

	}
	
	
	public static Date stringtoSqlDate(String strDate){

		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

		System.out.println("StrDate:"+strDate);
		Date date = null;
		try {
			// Converting the input String to Date
			date = df.parse(strDate);

		} catch (ParseException pe) {
			pe.printStackTrace();
		}

		System.out.println("Date:"+date);
		return date;

	}
	
	public static Date stringtoSqlDateForPropertiy(String strDate){

		DateFormat df = new SimpleDateFormat("MMM dd yyyy hh:mm:ss aa");

		System.out.println("StrDate:"+strDate);
		Date date = null;
		try {
			// Converting the input String to Date
			date = df.parse(strDate);

		} catch (ParseException pe) {
			pe.printStackTrace();
		}

		System.out.println("Date:"+date);
		return date;

	}
	
	public static Date getDate(Integer size)
	{
		Date today = new Date();
		Calendar cal = new GregorianCalendar();
		cal.setTime(today);
		cal.add(Calendar.DAY_OF_MONTH, size);
		Date nextDate = cal.getTime();
		return nextDate;
	}
	
}
