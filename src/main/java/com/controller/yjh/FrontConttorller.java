package com.controller.yjh;

import io.goeasy.GoEasy;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.entity.Layui;
import com.service.yjh.FrontService;
import com.service.yjh.operationservice;
import com.util.SmsVerification;

@RestController
@RequestMapping("/f")
public class FrontConttorller {

    @Autowired
    FrontService fse;
    @Autowired
    operationservice ose;

    /**
     * 我的网站
     *
     * @param session
     * @return
     */
    @RequestMapping("findsites")
    @ResponseBody
    public Layui findsites(HttpSession session) {
        int uid = (int) session.getAttribute("uid");
        List<Map<String, Object>> list = fse.findspace(uid);
        System.out.println(uid);
        System.out.println(list);
        Layui layui = new Layui();
        layui.setCode(0);
        layui.setCount(list.size());
        layui.setData(list);
        return layui;
    }

    /**
     * 分页查询网站订单情况
     *
     * @param session
     * @param page
     * @param limit
     * @return
     */
    @RequestMapping("findorder")
    @ResponseBody
    public Layui findorder(HttpSession session, Integer page, Integer limit) {

        int uid = (int) session.getAttribute("uid");
        return fse.findspaceorder(uid, page, limit);
    }

    /**
     * 盈利分析
     *
     * @param uid
     * @param all
     * @param date
     * @return
     */
    public String getmoney(Integer uid, String all, String date) {
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        if (uid != null) {// 查看某位用户的全部盈利
            list = fse.findorderbytx(uid, null, null);

        }
        return "";
    }

    /**
     * 消息查看
     *
     * @param uid
     * @return
     */
    @RequestMapping("message")
    @ResponseBody
    public Layui findmessage(Integer uid, Integer page, Integer limit) {
        return fse.findmessage(uid, page, limit);
    }

    @RequestMapping("getuid")
    @ResponseBody
    public String getuid(int uid) {
        String phone = fse.findiphone(uid);
        if (SmsVerification.getVerificationCode(phone,
                "【Day One 广告平台】您的订单有新动态请及时查看") > 0) {
            return "ok";
        } else
            return "no";
    }

    GoEasy goEasy = new GoEasy("rest-hangzhou.goeasy.io",
            "BC-d28d9b29a88a4676875adacee352444a");

    /**
     * 订单反馈
     * @param oid
     * @param test
     * @return
     */
    @RequestMapping("addfk")
    @ResponseBody()
    public String addfk(int oid, String test) {
        System.out.println(test);
        int uid = fse.finduid(oid);
        if (fse.addfe(test, uid, oid) > 0) {
            goEasy.publish("后台", "有反馈信息");// 发送通知
            // 添加到消息提醒表
            ose.addmsg("订单反馈", "后台接收", 0, 0, 0);
            return "ok";
        } else {
            return "no";
        }
    }
}
