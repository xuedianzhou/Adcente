package com.Dao.dcy;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface moneydao {
	@Select("SELECT u.uname,u.proof,u.phone,m.accountsum,m.frostsum,m.sum FROM money m,users u where m.uid = u.uid")
	public List<Map<Object,String>> querymoney();
	//最近七天的交易记录
	@Select("SELECT r.*,u.uname FROM record r,users u where DATE_SUB(CURDATE(), INTERVAL 6 DAY) <= date(r.ptime) and r.uid=u.uid")
	public List<Map<Object,String>> queryweek();
	//本月的交易记录
	@Select("SELECT r.*,u.uname FROM  record r,users u WHERE DATE_FORMAT( ptime, '%Y%m' ) = DATE_FORMAT( CURDATE( ) ,'%Y%m' ) and u.uid=r.uid")
	public List<Map<Object,String>> querymonth();
	//本年的交易记录 
	@Select("SELECT r.*,u.uname FROM record r,users u WHERE YEAR(ptime) = YEAR( NOW() ) and r.uid=u.uid")
	public List<Map<Object,String>> queryyear();
	//查询全部
	@Select("Select r.*,u.uname from record r,users u where r.uid=u.uid")
	public List<Map<Object,String>> queryrecord();
	//按名字查询
	@Select("Select r.*,u.uname from record r,users u where r.uid=u.uid and u.uname=#{param1}")
	public List<Map<Object,String>> querybyname(String name);
}
