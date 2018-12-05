package com.Dao.yjh;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.SelectProvider;

@Mapper
public interface frontDao {
    // 查看我的网站
    @Select("select * from sites where uid=#{param1} and state=5")
    List<Map<String, Object>> findspace(int uid);

    // 我的订单
    @SelectProvider(type = sql.class, method = "findspaceorder")
    List<Map<String, Object>> findspaceorder(int uid, Integer page,
                                             Integer limit);

    // 消息查看
    @SelectProvider(type = sql.class, method = "findmessage")
    List<Map<String, Object>> findmessage(Integer uid, Integer page,
                                          Integer limit);

    @Select("select phone from users where uid=#{param1} ")
    String findiphone(int uid);// HUOQU 手机号

    /**
     * uid 判断是否单独查询一人，all判断是否查询前7天，date判断是否查询一个月之内
     *
     * @param uid
     * @param all
     * @param date
     * @return
     */
    // 后台获取7天提现
    @SelectProvider(type = sql.class, method = "ordertx")
    List<Map<String, Object>> findorderbytx(Integer uid, String all, String date);

    class sql {
        public String ordertx(Integer uid, String all, String date) {
            String sql = "select * from record where type='提现'";
            if (null != uid) {
                sql += "and uid=#{param1}";
            }
            if (null != all) {
                sql += "  ORDER BY dealid desc LIMIT 7";
            }
            if (null != date) {
                sql += "and TIMESTAMPDIFF(MONTH,NOW(),ptime)<1";
            }
            return sql;
        }

        public String findmessage(Integer uid, Integer page, Integer limit) {
            String sql = "select * from message";
            if (uid != null) {
                sql += " where uid=#{param1}";
            }
            if (page != null && limit != null) {
                sql += " limit #{param2},#{param3}";
            }
            System.out.println(sql);
            return sql;
        }

        public String findspaceorder(Integer page, Integer limit) {
            String sql = "SELECT * FROM  spaceorder,sites,users where sites.uid=users.uid and spaceorder.uid=users.uid and users.uid=#{param1} order by oid desc";
            if (page != null && limit != null) {
                sql += " limit #{param2},#{param3}";
            }
            return sql;
        }
    }

    // 添加收益
    @Insert("INSERT INTO profit(smoney,money,test,uid,ptime) VALUES(#{param1},#{param2},#{param3},#{param4},SYSDATE())")
    public int addfront(double smoney, double money, String test, int uid);

    // 添加订单反馈
    @Insert("insert into feedback(matter,uid,orderid,ptime,state) value(#{param1},#{param2},#{param3},now(),0)")
    int addfe(String matter, int uid, int orderid);

    @Select("select uid from advertorder where orderid=#{param1}")
    int finduid(int uid);
}
