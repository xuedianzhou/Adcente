package com.controller.dcy;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Advertorder;
import com.entity.Record;
import com.entity.Repeal;
import com.entity.profit;
import com.service.dcy.advertorderService;

@Controller
@RequestMapping("/ao")
public class advertorderController {
	@Autowired
	advertorderService aos;
	@RequestMapping("selao")
	public String queryao(HttpSession session,Model mo){
		int uid=(int) session.getAttribute("uid");
		List<Map<Object,String>> list=aos.selao(uid);
		mo.addAttribute("list", list);
		return "jsp/showao.jsp";
		
	}
	@RequestMapping("cx")
	public String cx(HttpSession session,Model mo,int orderid){
		System.out.println("fdsafasd"+orderid);
		int uid=(int) session.getAttribute("uid");
		int money=aos.sel(orderid);//总冻结金额
		int sum=aos.selsum(orderid);//点击量
		int aid=aos.selaid(orderid);//aid
		double unit=aos.selunit(aid);//单价
		double sumunit=0;
		 aos.upaid(aid);
			List<Map<String, Object>> findspace=aos.findspacebyorder(aid);
		for (Map<String, Object> map : findspace) {
			//查出用户的点击量
				int spaceuid=Integer.parseInt(map.get("uid").toString());	//用户
				int spaceunit=Integer.parseInt(map.get("hits").toString());//点击量
				double ee=spaceunit*unit;//网站主佣金
				aos.upmoney(ee, spaceuid);
				Record r = new Record();
				r.setUid(spaceuid);
				// 1,冻结金额2,佣金返还
				r.setType(2);
				r.setDsum(ee);
				r.setPtime(new Date());
				r.setRemark("订单完成，佣金返还");

				System.out.println("订单是否而完成"+aos.insertrecord(r));
		}
		
		
		double aa=unit*sum;//花销的钱
		System.out.println("花销的钱:"+aa);
		double bb=aa*0.03;//手续费
		double cc=money-aa-bb;
		System.out.println("返还的钱"+cc);
		Repeal re=new Repeal();
		re.setRecause("订单撤销");
		re.setResum(cc);
		re.setReptime(new Date());
		re.setUid(uid);
		re.setState(2);
		profit p=new profit();
		p.setSmoney(aa);
		p.setMoney(bb);
		p.setTest("订单撤销手续费");
		p.setUid(uid);
		Record r = new Record();
		r.setUid(uid);
		// 1,冻结金额2,佣金返还，3，撤销订单，返回冻结金额
		r.setType(3);
		r.setDsum(cc);
		r.setRemark("撤销订单，返回冻结金额");
		aos.insertrecord(r);
		aos.upftime(orderid);
		aos.upstate(orderid, re, cc, uid, p);
		return "ao/selao";
		
	}
}
