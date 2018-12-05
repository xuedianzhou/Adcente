package com.service.zxd;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Dao.zxd.recordDao;

@Service
public class recordService {
	
	@Resource
	recordDao record;
	
	public int addrecord(int uid,double dsum){
		return record.addrecord(uid, dsum);
		
	}
	
	 public List<Map<String,Object>> recordshow(int uid){
		return record.recordshow(uid);
		 
	 }

}
