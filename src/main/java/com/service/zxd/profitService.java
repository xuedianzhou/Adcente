package com.service.zxd;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Dao.zxd.profitDao;

@Service
public class profitService {
          
	    @Resource
	    profitDao pdao;
	    
		public List<Map<String,Object>> profitban(){
			return pdao.profitban();
			
		}
		
		public List<Map<String,Object>> profityi(){
			return pdao.profityi();
			
		}
}
