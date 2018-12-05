package com.service.zwb;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Dao.zwb.DynamicDao;
import com.entity.Dynamic;

@Service
public class DynamicSer {

	
	@Resource
	DynamicDao dy;
	
	public List<Map<String, Object>> query(int uid) {
		return dy.query(uid);
	}

	public int add(Dynamic d) {
		return dy.add(d);
	}

	public List<Map<String, Object>> search(int id) {
		return dy.search(id);
	}

}
