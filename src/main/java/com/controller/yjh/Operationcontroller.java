package com.controller.yjh;

import io.goeasy.GoEasy;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.entity.Layui;
import com.service.yjh.operationservice;

@RequestMapping("/option")
@RestController
/**
 * 网站主，广告主，交易记录
 * @author her
 *
 */
public class Operationcontroller {
	@Resource
	operationservice ose;

	@RequestMapping("advet")
	@ResponseBody
	public Layui findadvet(String name, Integer page, Integer limit) {
		return  ose.findadvet(name,null,page,limit);
	}

	@RequestMapping("space")
	@ResponseBody
	public Layui findspace(String name, Integer page, Integer limit) {
		return ose.findspae(name,page,limit);
	}

	@RequestMapping("money")
	@ResponseBody
	public Layui findmoney(String name, Integer page, Integer limit) {
		return ose.findmoney(name, page, limit);
	}

	/**
	 * 查看订单反馈
	 * 
	 * @return
	 */
	@RequestMapping("feed")
	@ResponseBody
	public Layui findfeedback() {
		List<Map<String, Object>> l = ose.findfeedback();
		Layui lay = new Layui();
		lay.setCode(0);
		lay.setCount(l.size());
		lay.setData(l);
		return lay;
	}
	GoEasy goEasy = new GoEasy("rest-hangzhou.goeasy.io",
			"BC-d28d9b29a88a4676875adacee352444a");
	/**
	 * 订单回执
	 */
	@RequestMapping("addmsg")
	@ResponseBody
	public String addmsg(String matter, String type, int uid,int cid) {
		System.out.println(type);
		if (ose.addmsg(matter, type, uid, 0, 0) > 0 && ose.upcid(cid)>0) {//添加消息通知//修改通知状态
			goEasy.publish("user" + uid, "有未读消息");// 发送通知
			return "ok";
		} else
			return "no";

	}
}
