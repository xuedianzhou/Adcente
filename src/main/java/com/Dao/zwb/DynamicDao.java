package com.Dao.zwb;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.entity.Dynamic;

@Mapper
public interface DynamicDao {

	@Select("select * from dynamic where uid=#{uid}")
	List<Map<String, Object>> query(int uid);

	@Insert("insert into dynamic(dtime,dmoney,uid,dcharge,dreality,dapply,state)"
			+ " values(now(),#{dmoney},#{uid},#{dcharge},#{dreality},now(),#{state})")
	int add(Dynamic d);

	@Select("select u.uname,d.dtime,d.dmoney,d.dreality,d.state from dynamic d join users u on d.uid=u.uid where d.id=#{id}")
	List<Map<String, Object>> search(int id);
	
}
