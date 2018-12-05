package com.Dao.yjh;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * 订单结束
 *
 * @author her
 */
@Mapper
public interface OrderachieveDao {
    // 金额解冻
    @Update("update money set accountsum=accountsum+frostsum-#{param1}, frostsum=0,  sum=accountsum+frostsum where uid=#{param2}")
    int updatemoneybysum(double nowsum ,int uid);

    // 修改广告主订单状态
    @Update("update advertorder set state=#{param1} where orderid=#{param2}")
    int updateorderbyid(int state, int oid);
    // 添加订单玩成账单
    @Insert("insert into checks(uid,aid,hits,income,details)values(#{param1},#{param2},#{param3},#{param4},#{param5}) ")
    int addcheck(int uid, int aid, int hits, double income, String datails);

    // 查看·完成订单的点击网站主
    @Select("select * from spaceorder where aid=#{param1}")
    List<Map<String, Object>> findspaceorder(int aid);

    // 订单状态完成
    @Update("update spaceorder set state=1 where aid=#{param1}")
    int updateorderbyaid(int aid);

    // 根据点击量把金额加到网站主用户余额表
    @Update("update money set accountsum=accountsum+#{param1}, sum=accountsum+frostsum   where uid=#{param2} ")
    int updateusermoney(double money, int uid);

    @Select("select phone from users where uid=#{param1} ")
    String findphone(int uid);

    // 交易记录
    @Insert("insert into record (uid,type,dsum,remark) values(#{param1},#{param2},#{param3},#{param4})")
    int addmoneynums(int uid, String type, double dsum, String remark);
    @Update("update advertorder set ftime=now() where orderid=#{param1}")
    int upftime(int oid);
}
