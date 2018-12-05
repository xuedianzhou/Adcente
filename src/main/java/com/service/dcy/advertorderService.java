package com.service.dcy;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.dcy.advertorderDao;
import com.entity.Advertorder;
import com.entity.Record;
import com.entity.Repeal;
import com.entity.profit;
import com.sun.org.apache.bcel.internal.generic.RET;

import javax.annotation.Resource;

@Service
public class advertorderService {
	 @Resource
	 advertorderDao ad;
	public List<Map<Object,String>> selao(int uid){
		return ad.selao(uid);
	}
	@Transactional
	public int upstate(int oid,Repeal re,double cc,int uid,profit pr){
		int i=0;
		if(ad.upstate(oid)>0&&ad.insrepeal(re)>0&&ad.upmo(cc, uid)>0&&ad.insertprofit(pr)>0){
			i=1;
		}
		return i;
		
	}
	public int sel(int oid){
		return ad.sel(oid);
		
	}
	public int selsum(int oid){
		return ad.selsum(oid);
	}
	public int selaid(int oid){
		return ad.selaid(oid);
	}
	public int selunit(int aid){
		return ad.selunit(aid);
		
	}
	public List<Map<String, Object>> findspacebyorder(int aid){
		return ad.findspacebyorder(aid);
	}
	public int upmoney(double ee,int uid){
		return ad.upmoney(ee, uid);
	}
	public int insertrecord(Record r){
		return ad.insertrecord(r);
	}
	public int upftime(int orderid){
		return ad.upftime(orderid);
	}
	public int upaid(int aid){return ad.upaid(aid);}
}
