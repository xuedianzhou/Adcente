package com;

import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.stereotype.Controller;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

import com.util.ScheduledTest;




@EnableScheduling
@SpringBootApplication
@EnableSwagger2
public class SpringBootStart {
	/**
	 * 定时 
	 * @param args
	 */
	
	public static void main(String[] args)throws Exception{
		try{
			SpringApplication.run(SpringBootStart.class, args);
			ScheduledTest s=new ScheduledTest();
			//开启定时
			s.executeUploadTask();
		}catch(NullPointerException e){
		}
		
	}
}
