package com.service.dcy;

import java.util.List;
import java.util.Map;

import com.Dao.dcy.moneydao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class moneyService {
    @Resource
    moneydao md;

    public List<Map<Object, String>> querymoney() {
        return md.querymoney();
    }

    public List<Map<Object, String>> queryweek() {
        return md.queryweek();
    }

    public List<Map<Object, String>> querymonth() {
        return md.querymonth();
    }

    public List<Map<Object, String>> queryyear() {
        return md.queryyear();
    }

    public List<Map<Object, String>> queryrecord() {
        return md.queryrecord();
    }

    public List<Map<Object, String>> queryname(String name) {
        return md.querybyname(name);
    }
}
