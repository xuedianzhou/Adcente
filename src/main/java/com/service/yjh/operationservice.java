package com.service.yjh;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.annotation.Resources;

import org.springframework.stereotype.Service;

import com.Dao.yjh.operationDao;
import com.entity.Layui;

@Service
public class operationservice {

	@Resource
	operationDao odao;

	public Layui findadvet(String name, Integer state, Integer page, Integer limit) {
		Integer nextpage = 0;
		if (null == page && null == limit) {
			limit = 10; // 每页显示
		} else {
			limit=10;
			nextpage = (page - 1) * limit; // 下一页
		}
		List list = new ArrayList();
		if (null != name) {
			list = odao.findadvet(name,null,nextpage,limit);
		} else {
			list = odao.findadvet(null,null,nextpage,limit);
		}
		// 存到layui封装里
		Layui lay = new Layui(0, "", odao.findadvet(null,null,null,null).size(),
				list);
		return lay;
	}
	public List<Map<String, Object>> findadvet(String name, Integer state){
		return odao.findadvet(name,state,null,null);
	}
	public Layui findspae(String name, Integer page, Integer limit) {
		Integer nextpage = 0;
		if (null == page && null == limit) {
			limit = 10; // 每页显示
		} else {
			limit=10;
			nextpage = (page - 1) * limit; // 下一页
		}
		List list = new ArrayList();
		if (null != name) {
			list = odao.findspae(name,nextpage,limit);
		} else {
			list = odao.findspae(null,nextpage,limit);
		}
		// 存到layui封装里
		Layui lay = new Layui(0, "", odao.findspae(null,null,null).size(),
				list);
		return lay;
	}


	public Layui findmoney(String name, Integer page, Integer limit) {
		Integer nextpage = 0;
		if (null == page && null == limit) {
			limit = 10; // 每页显示
		} else {
			limit=10;
			nextpage = (page - 1) * limit; // 下一页
		}
		List list = new ArrayList();
		if (null != name) {
			list = odao.findmoney(name, nextpage, limit);
		} else {
			list = odao.findmoney(null, nextpage, limit);
		}
		// 存到layui封装里
		Layui lay = new Layui(0, "", odao.findmoney(null, null, null).size(),
				list);
		return lay;
	}

	public List<Map<String, Object>> findfeedback() {
		return odao.findfeedback();
	}

	public int addmsg(String matter, String type, int uid, int state, int oid) {
		return odao.addmsg(matter, type, uid, state, oid);
	}

	public Integer findbyid(int oid) {
		return odao.findbyid(oid);
	}

	public int upcid(int cid) {
		return odao.upcid(cid);
	}

}
