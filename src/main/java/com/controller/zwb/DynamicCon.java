package com.controller.zwb;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Dynamic;
import com.service.zwb.DynamicSer;

@Controller
public class DynamicCon {

	@Resource
	DynamicSer dy;
	
	@RequestMapping("query_dynamic")
	public String query(Model model,int uid){
		List<Map<String,Object>> list_dynamic=dy.query(uid);
		model.addAttribute("list_dynamic",list_dynamic);
		return "front/query_dynamic.jsp";
	}
	
	@RequestMapping("add_dynamic")
	public String add(Dynamic d){
		int rs=dy.add(d);
		return "redirect:query_dynamic";
	}
	
	@RequestMapping("search_dynamic")
	public String  search(int id,Model model){
		List<Map<String,Object>> list_dynamic=dy.search(id);
		model.addAttribute("list_dynamic", list_dynamic);
		System.out.println("search_dynamic------"+list_dynamic);
		return "front/search_dynamic.jsp";
	}
}
