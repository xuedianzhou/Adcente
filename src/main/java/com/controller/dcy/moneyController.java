package com.controller.dcy;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Layui;
import com.service.dcy.moneyService;

@Controller
@RequestMapping("money")
public class moneyController {
	@Autowired
	moneyService ms;
	@RequestMapping("querymoney")
	@ResponseBody
	public Layui querymoney(Model mo){
		List<Map<Object,String>> list=ms.querymoney();
		Layui lay = new Layui();
		lay.setCode(0);
		lay.setData(list);
		lay.setCount(list.size());
		return lay;
	} 
	@RequestMapping("queryday")
	public String queryday(String day,Model mo){
		List<Map<Object,String>> list =ms.queryrecord();;
		if(day.equals("week")){
			list=ms.queryweek();
		}else{
			if(day.equals("month")){
				list=ms.querymonth();
			}
			if(day.equals("year")){
				list=ms.queryyear();
			}
			if(day.equals("record")){
				list=ms.queryrecord();
			}
		}
		mo.addAttribute("list", list);
		return "jsp/showrecord.jsp";
	}
	@RequestMapping("queryname")
	public String queryname(String name,Model mo){
		List<Map<Object,String>> list=ms.queryname(name);
		mo.addAttribute("list", list);
		return "jsp/showrecord.jsp";
		
	}
}
