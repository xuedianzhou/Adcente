package com.Dao.zxd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.entity.Users;
import com.entity.profit;

@Mapper
public interface xlsxDao {
	
	@Select("select * from users")
	List<Users> userxlsx();
	
	@Select("select count(*)人气 from users")
	List<Map<String,Object>> userconut();
	
	@Select("select p.pid,p.smoney,p.money,p.test,p.ptime,u.uname from profit p,users u where p.uid=u.uid")
	List<profit> profitxlsx();

    @Select("select sum(money)总收益 from profit")
    List<Map<String,Object>> profitshouyi();
}
