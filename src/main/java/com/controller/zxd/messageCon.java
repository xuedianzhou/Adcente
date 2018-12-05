package com.controller.zxd;



import io.goeasy.GoEasy;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.zxd.messageService;


@Controller
public class messageCon {
	
	@Resource
	messageService mservice;

	//未读
	@RequestMapping("messashow")
	public String messashow(Model mo, HttpSession session){
		int uid = (int) session.getAttribute("uid");
		List<Map<String,Object>> list=mservice.messageqbshow(uid);
		List<Map<String,Object>> lishimessageshow=mservice.messageshow(uid);
		mo.addAttribute("lishimessageshow",lishimessageshow);
		mo.addAttribute("list",list);
		return "front/message.jsp";

	}

	@RequestMapping("details")
    public String details(int wordid,Model mo, HttpSession session){
		int uid = (int) session.getAttribute("uid");
		List<Map<String,Object>> details=mservice.details(uid, wordid);
		int rs=mservice.updatetest(uid,wordid);
		if(rs>0){
			mo.addAttribute("details",details);
			return "front/details.jsp";
		}else{
			return "error.jsp";
		}
	
    	
    }	
	

	
}	
