package com.Dao.dcy;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.entity.Money;
import com.entity.Users;

@Mapper
public interface recorddao {
	//查询金额
		@Select("select * from money where uid=#{param1}")
		public List<Money> querymo(int uid);	
		//查询最近七天交易金额
		@Select("SELECT sum(dsum) FROM record WHERE TO_DAYS(NOW()) - TO_DAYS(ptime)=#{param1} and uid=#{param2}")
		public int seldayd(int aa,int uid);
		@Select("select * from users where uid=#{param1}")
		public List<Users> seluser(int uid);
}
