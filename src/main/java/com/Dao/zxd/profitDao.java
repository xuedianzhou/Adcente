package com.Dao.zxd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface profitDao {
       
	@Select("SELECT sum(dsum) smoney FROM `record`where ptime>DATE_SUB(CURDATE(), INTERVAL 6 MONTH) and type='提现'")
	public List<Map<String,Object>> profitban();
	
	@Select("SELECT sum(dsum) smoney FROM `record`where ptime>DATE_SUB(CURDATE(), INTERVAL 1 YEAR)   and type='提现'")
	public List<Map<String,Object>> profityi();
}
