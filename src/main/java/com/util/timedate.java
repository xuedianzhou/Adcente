package com.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class timedate {
	public String timedate(int a){
	Calendar cal=Calendar.getInstance();
	//System.out.println(Calendar.DATE);//5
	cal.add(Calendar.DATE,a);
	Date time=cal.getTime();
	System.out.println();
	String tims=new SimpleDateFormat("yyyy-MM-dd").format(time);
	return tims;
	}
}
