package com.Dao.dcy;


import java.util.Date;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface usersdao {
	@Select("select uid from users where uname=#{param1} and rpwd=#{param2} and state=0")
	public String login(String uname,String rpwd);
	@Insert("insert into money(uid,accountsum,frostsum,sum) values(#{param1},0,0,0)")
	public int insertmoney(int uid);
}
