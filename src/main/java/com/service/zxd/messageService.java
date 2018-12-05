package com.service.zxd;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.zxd.messageDao;

import javax.annotation.Resource;

@Service
public class messageService {
	
	@Resource
	messageDao mdao;

	public  List<Map<String,Object>> messageshow(int uid){
		return mdao.messageshow(uid);
	}
	
	public List<Map<String,Object>> messageqbshow(int uid){
		return mdao.messageqbshow(uid);
		
	}
	public List<Map<String,Object>> details(int uid,int wordid){
		return mdao.details(uid, wordid);
	}

	
	public int updatetest(int uid,int wordid){
		return mdao.updatetest(uid,wordid);
		
	}
}
