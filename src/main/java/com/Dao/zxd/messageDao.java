package com.Dao.zxd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface messageDao {

	@Select("select * from message where uid=#{uid} and state=1  ORDER BY  ptime DESC ")
	public  List<Map<String,Object>> messageshow(int uid);


	@Select("select * from message where uid=#{uid} and state=0")
	public List<Map<String,Object>> messageqbshow(int uid);
	
	@Select("select * from message where uid=#{param1} and wordid=#{param2}")
	public List<Map<String,Object>> details(int uid, int wordid);
	
	@Update("update message SET state=1 where uid=#{param1} and wordid=#{param2}")
	public int updatetest(int uid, int wordid);
	
}
