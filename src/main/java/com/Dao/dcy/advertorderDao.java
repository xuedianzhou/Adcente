package com.Dao.dcy;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.entity.Advertorder;
import com.entity.Record;
import com.entity.Repeal;
import com.entity.profit;

@Mapper
public interface advertorderDao {
	//查询订单表
	@Select("select * from advertorder where uid=#{param1}")
	public List<Map<Object,String>> selao(int uid);
	//订单撤销:状态修改0：进行中1：订单结束2：订单撤销
	@Update("update advertorder set state=1 where orderid=#{param1}")
	public int upstate(int oid);
	//订单撤销：添加到订单撤销
	@Insert("insert into repeal(recause,resum,uid,state) values(#{recause},#{resum},#{uid},#{state})")
	public int insrepeal(Repeal re);
	//订单撤销：返还金额
	@Update("update money set accountsum=accountsum+frostsum-#{param1},frostsum=0,sum=accountsum+frostsum where uid=#{param2}")
	public int upmo(double cc,int uid);
	//加入盈利表
	@Insert("insert into profit(smoney,money,test,uid,ptime) values(#{smoney},#{money},#{test},#{uid},now())")
	public int insertprofit(profit pr);
	@Select("select sum from advertorder where orderid=#{param1}")
	public int sel(int oid);
	//点击量
	@Select("select hits from advertorder where orderid=#{param1}")
	public int selsum(int oid);
	//查询aid
	@Select("select aid from advertorder where orderid=#{param1}")
	public int selaid(int oid);
	//查询单价
	@Select("select unit from advert where aid=#{param1}")
	public int selunit(int aid);
	//网站主订单
	@Select("select uid,hits from spaceorder where aid=#{param1}")
	List<Map<String, Object>> findspacebyorder(int aid);
	//修改网站主订单状态
	@Update("update spaceorder set state=1 where aid=#{param1}")
	int upaid(int aid);
	//返回佣金
	@Update("update money set accountsum=accountsum+#{param1},sum=sum+#{param1},uptime=sysdate() where uid=#{param2}")
	public int upmoney(double ee,int uid);
	//添加交易记录
	@Insert("insert into record(uid,type,dsum,ptime,remark) values(#{uid},#{type},#{dsum},sysdate(),#{remark})")
	public int insertrecord(Record r);
	//修改时间ftime:advertorder表
	@Update("update advertorder set ftime=sysdate() where orderid=#{param1}")
	public int upftime(int orderid);
}
