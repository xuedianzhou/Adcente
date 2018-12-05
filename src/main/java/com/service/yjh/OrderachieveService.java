package com.service.yjh;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.Dao.yjh.OrderachieveDao;

@Service
public class OrderachieveService {
    @Resource
    OrderachieveDao oao;

    public int updatemoneybysum(double nowsum,int uid) {
        return oao.updatemoneybysum(nowsum,uid);
    }

    public int updateorderbyid(int state, int oid) {
        return oao.updateorderbyid(state, oid);
    }

    public int addcheck(int uid, int aid, int hits, double income,
                        String datails) {
        return oao.addcheck(uid, aid, hits, income, datails);
    }

    public List<Map<String, Object>> findspaceorder(int aid) {
        return oao.findspaceorder(aid);
    }

    public int updateusermoney(double money, int uid) {
        return oao.updateusermoney(money, uid);
    }

    public int addmoneynums(int uid, String type, double dsum, String remark) {
        return oao.addmoneynums(uid, type, dsum, remark);
    }

    public int updateorderbyaid(int aid) {
        return oao.updateorderbyaid(aid);
    }

    public String findphone(int uid) {//fa短信
        return oao.findphone(uid);
    }
    public int upftime(int oid){
        return oao.upftime(oid);
    }

}
