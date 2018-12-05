package com.Dao.zwb;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Users;

@Mapper
public interface UsersDao {
	@Select("select * from users where uname=#{param1} and rpwd=#{param2} and state=0")
	List<Map<String,Object>> query(String uname,String rpwd);

	
	
	@Insert("insert into users(uname,phone,rpwd,state,ctime,uptime) values(#{uname},#{phone},#{rpwd},0,#{ctime},#{uptime})")
	int add(Users u);
	
	@Select("select u.uid,u.uname,u.phone,u.ctime,u.proof,m.sum,m.accountsum,m.frostsum,u.userimg from users u, money m  where u.uid=m.uid and u.uid=#{param1}")
	List<Map<String,Object>> center(int uid);
	
	@Update("update users set userimg=#{userimg} where uid=#{uid}")
	public int updateimg(Users u);

	@Update("update users set phone=#{param1} where uid=#{param2}")
	public int updatephone(String phone,int uid);

	@Update("update users set rpwd=#{param1} where uid=#{param2}")
	public int updatepwd(String rpwd,int uid);

}
