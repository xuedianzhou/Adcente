package com.service.yjh;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Dao.yjh.frontDao;
import com.entity.Layui;
import com.util.Page;

@Service
public class FrontService {

	@Resource
	frontDao fdo;

	public List<Map<String, Object>> findspace(int uid) {
		return fdo.findspace(uid);
	}

	public Layui findspaceorder(int uid, Integer page, Integer limit) {
		Integer nextpage = 0;
		if (null == page && null == limit) {
			limit = 10; // 每页显示
		} else {
			nextpage = (page - 1) * limit; // 下一页
		}
		// 存到layui封装里
		Layui lay = new Layui(0, "",
				fdo.findspaceorder(uid, null, null).size(), fdo.findspaceorder(
						uid, nextpage, limit));
		System.out.println(lay);
		return lay;
	}

	public List<Map<String, Object>> findorderbytx(Integer uid, String all,
			String date) {
		return fdo.findorderbytx(uid, all, date);
	}

	public Layui findmessage(Integer uid, Integer page, Integer limit) {
		Integer nextpage = 0;
		if (null == page && null == limit) {
			limit = 10; // 每页显示
		} else {
			limit=10;
			nextpage = (page - 1) * limit; // 下一页
		}
		List list = new ArrayList();
		if (null != uid) {
			list = fdo.findmessage(uid, nextpage, limit);
		} else {
			list = fdo.findmessage(null, page, limit);
		}
		Layui layui = new Layui(0, "",
				fdo.findmessage(null, null, null).size(), list);
		System.out.println(layui);
		return layui;
	}

	public int addfront(double smoney, double money, String test, int uid) {
		return fdo.addfront(smoney, money, test, uid);
	}

	public String findiphone(int uid) {
		return fdo.findiphone(uid);
	}

	public int addfe(String matter, int uid, int orderid) {
		return fdo.addfe(matter, uid, orderid);
	}

	public int finduid(int uid) {
		return fdo.finduid(uid);
	}

}
