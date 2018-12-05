package com.controller.zwb;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Users;
import com.service.dcy.usersservice;
import com.service.zwb.DynamicSer;
import com.service.zwb.UsersSer;
import com.service.zxd.checkService;
import com.service.zxd.recordService;
import com.util.SmsVerification;

@Controller
// @RequestMapping(value="/users")
public class UsersCon {

	@Resource
	UsersSer user;
	@Resource
	usersservice us;
	@Resource
	SmsVerification sms;
	@Resource
	DynamicSer dy;

	@Resource
	recordService rService;
	
	@Resource
	checkService cservice;

	// 登陆
	@ApiOperation(value = "登陆")
	@RequestMapping("frontlogin")
	public String login(String uname, String rpwd, HttpServletRequest request,
			HttpServletResponse response) {
		List<Map<String, Object>> list = user.query(uname, rpwd);
		String uids = us.login(uname, rpwd);
		Integer uid = 0;
		if (uids.equals("")) {
			uid = 0;
		} else {
			uid = Integer.parseInt(uids);
		}
		if (list.size() > 0 && list != null) {
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			session.setAttribute("list", list);
			session.setAttribute("uid", uid);
			return "front/layui.jsp";
		} else
			return "error.jsp";

	}

	// 注册 zwb
	@ApiOperation(value = "注册")
	@RequestMapping("add")
	public String add(Users u) {

		u.setCtime(new Date());
		u.setUptime(new Date());
		if (user.add(u) > 0) {
			String uname = u.getUname();
			String pwd = u.getRpwd();
			int uid = Integer.parseInt(us.login(uname, pwd));
			us.insertmoney(uid);
			return "login.jsp";
		} else {
			return "error.jsp";
		}
	}

	// 手机号验证 zwb
	@ApiOperation(value = "手机号验证")
	@RequestMapping("/code")
	@ResponseBody
	public int getCode(String phone) {
		System.out.println("phone" + phone);
		@SuppressWarnings("static-access")
		int code = sms.getVerificationCode(phone,"【友佳网络科技】尊敬的用户，您的验证码为"+SmsVerification.verificationCode);
		System.out.println(code);
		return code;
	}

	@RequestMapping("center")
	public String center(Model m,HttpSession session){
		    int uid= (int) session.getAttribute("uid");
	   		List<Map<String,Object>> zfb=user.center(uid);
	   		List<Map<String,Object>> checkshow=cservice.checkshow(uid);
	   		List<Map<String,Object>> list_dynamic=dy.query(uid);
	   		List<Map<String,Object>> list_rService=rService.recordshow(uid);
	   		m.addAttribute("list_rService",list_rService);
			m.addAttribute("list_dynamic",list_dynamic);
			m.addAttribute("checkshow",checkshow);
			session.setAttribute("zfb", zfb);
		System.out.println(checkshow);
		if(zfb.size()>0){
			return "front/center.jsp";
		}else{
			return "error.jsp";
		}
	}

	
	@RequestMapping("tuile")
	@ResponseBody
	public String tuile(HttpServletRequest request){
		System.out.println(1);
        HttpSession session = request.getSession();
        session.invalidate();
		return "1";
		
	}

	@RequestMapping("updatepwd")

	public String updatepwd(String rpwd,HttpSession session){
		int uid= (int) session.getAttribute("uid");
		int rs=user.updatepwd(rpwd, uid);
		if(rs>0){
			return "tuile";
		}else{
			return "error.jsp";
		}


	}

	@ResponseBody
	@RequestMapping("updatephone")
	public String updatephone(String data,HttpSession session){
		int uid = (int) session.getAttribute("uid");
		int rs=user.updatephone(data, uid);
		System.out.println(rs);
		if(rs>0){
			return "1";
		}else{
			return "0";
		}


	}
}
