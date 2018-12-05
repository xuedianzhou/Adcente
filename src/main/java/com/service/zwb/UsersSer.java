package com.service.zwb;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.Dao.zwb.UsersDao;
import com.entity.Users;

@Service
public class UsersSer {

	@Resource
	UsersDao user;
	
	public List<Map<String, Object>> query(String uname, String rpwd) {
		return user.query(uname, rpwd);
	}

	public int add(Users u) {
		return user.add(u);
	}

	public List<Map<String, Object>> center(int uid){
		return user.center(uid);
		
	}
	
	public int updateimg(Users u){
		return user.updateimg(u);
	}

	public int updatephone(String phone,int uid){
		return user.updatephone(phone, uid);
	}

	public int updatepwd(String rpwd,int uid){
		return user.updatepwd(rpwd, uid);
	}
}
