package com.controller.zxd;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.zxd.profitService;

@Controller
public class profitController {
        @Resource
        profitService pservice;
        
        @RequestMapping("profitshow")
		public String profitshow(Model m){
        	List<Map<String,Object>> banshow=pservice.profitban();
        	List<Map<String,Object>> yishow=pservice.profityi();
        	m.addAttribute("banshow",banshow);
        	m.addAttribute("yishow",yishow);
			return "admin/profit.jsp";
		}
		
}
