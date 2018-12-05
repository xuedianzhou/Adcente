package com.Dao.zxd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;



@Mapper
public interface recordDao {
	
	  //提现添加交易记录
	  @Insert("INSERT INTO record(uid,type,dsum,ptime,remark) VALUES(#{param1},'提现',#{param2},SYSDATE(),'天一广告联盟提现')")
      public int addrecord(int uid,double dsum);
	  
	  //查询交易记录
	  @Select("SELECT * FROM `record` where uid=#{uid} ORDER BY ptime DESC")
	  public List<Map<String,Object>> recordshow(int uid);
}
