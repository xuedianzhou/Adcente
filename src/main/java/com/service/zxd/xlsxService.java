package com.service.zxd;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import com.Dao.zxd.xlsxDao;
import com.entity.Users;
import com.entity.profit;

@Service
public class xlsxService {
    
	 @Resource
	 xlsxDao xdao;
	 
		
	
		public List<Users> userxlsx(){
			return xdao.userxlsx();
			
		}
		
	
		public	List<Map<String,Object>> userconut(){
			return xdao.userconut();
			
		}
		
		
		public	List<profit> profitxlsx(){
			return xdao.profitxlsx();
			}

		
	  
		public   List<Map<String,Object>> profitshouyi(){
			return xdao.profitshouyi();
	    	
	    	
	    }
}
