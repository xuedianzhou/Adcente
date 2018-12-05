package com.Dao.zxd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface checkDao {
	
	@Select("SELECT sum(dsum) sum FROM `record` where uid=#{uid} and type='订单完成'")
	List<Map<String,Object>> checkshow(int uid);

}
