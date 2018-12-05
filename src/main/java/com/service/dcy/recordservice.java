package com.service.dcy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.dcy.recorddao;
import com.entity.Money;
import com.entity.Users;

@Service
public class recordservice {
	@Autowired
	recorddao rd;
	public List<Money> querymo(int uid){
		return rd.querymo(uid);
		
	}
	public int seldayd(int aa,int uid){
		return rd.seldayd(aa, uid);
	}
	public List<Users> seluser(int uid){
		return rd.seluser(uid);
		
	}
}
