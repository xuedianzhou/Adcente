package com.controller.dcy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Money;
import com.entity.Users;
import com.service.dcy.recordservice;
import com.util.timedate;

@Controller
@RequestMapping("/record")
public class recordController {
	@Autowired
	recordservice rs;
	@RequestMapping("sday")
	public String day(Model mo){
		int uid=1;
		List<Users> users=rs.seluser(uid);
		System.out.println(users);
		List<Money> list=rs.querymo(uid);
		mo.addAttribute("list", list);
		mo.addAttribute("user", users);
		timedate td=new timedate(); 
		String tims= td.timedate(-1);
		String tims1= td.timedate(-2);
		String tims2= td.timedate(-3);
		String tims3= td.timedate(-4);
		String tims4= td.timedate(-5);
		String tims5= td.timedate(-6);
		String tims6= td.timedate(-7);
		mo.addAttribute("tims", tims);
		mo.addAttribute("tims1", tims1);
		mo.addAttribute("tims2", tims2);
		mo.addAttribute("tims3", tims3);
		mo.addAttribute("tims4", tims4);
		mo.addAttribute("tims5", tims5);
		mo.addAttribute("tims6", tims6);
		System.out.println(tims);
		int a=rs.seldayd(1, uid);//昨天
		int b=rs.seldayd(2, uid);//昨天
		int c=rs.seldayd(3, uid);//昨天
		int d=rs.seldayd(4, uid);//昨天
		int e=rs.seldayd(5, uid);//昨天
		int f=rs.seldayd(6, uid);//昨天
		int g=rs.seldayd(7, uid);//
		
		mo.addAttribute("a", a);
		mo.addAttribute("b", b);
		mo.addAttribute("c", c);
		mo.addAttribute("d", d);
		mo.addAttribute("e", e);
		mo.addAttribute("f", f);
		mo.addAttribute("g", g);
		
		return "jsp/usermoney.jsp";
		
	}
}
