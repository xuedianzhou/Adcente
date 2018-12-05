package com.util;

import io.goeasy.GoEasy;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.service.yjh.OrderachieveService;
import com.service.yjh.operationservice;

/**
 * 定时任务类
 *
 * @author her
 */
@Transactional
@Component
public class ScheduledTest {

    @Resource
    operationservice ose;
    @Resource
    OrderachieveService oce;
    // 调用消息推送接口

    GoEasy goEasy = new GoEasy("rest-hangzhou.goeasy.io",
            "BC-d28d9b29a88a4676875adacee352444a");

    private static final Logger logger = LoggerFactory
            .getLogger(ScheduledTest.class);

    /*
     * 0 0 10,14,16 * * ? 每天上午10点，下午2点，4点 0 0/30 9-17 * * ? 朝九晚五工作时间内每半小时 0 0 12
     * ? * WED 表示每个星期三中午12点 "0 0 12 * * ?" 每天中午12点触发 "0 15 10 ? * *" 每天上午10:15触发
     * "0 15 10 * * ?" 每天上午10:15触发 "0 15 10 * * ? *" 每天上午10:15触发
     * "0 15 10 * * ? 2005" 2005年的每天上午10:15触发 "0 * 14 * * ?"
     * 在每天下午2点到下午2:59期间的每1分钟触发 "0 0/5 14 * * ?" 在每天下午2点到下午2:55期间的每5分钟触发
     * "0 0/5 14,18 * * ?" 在每天下午2点到2:55期间和下午6点到6:55期间的每5分钟触发
     */
    @Scheduled(cron = "0 0/1 8-20 * * ?")
    public void executeUploadTask() {
        // 间隔1分钟,执行工单上传任务
        Thread current = Thread.currentThread();
        logger.info("ScheduledTest.executeUploadTask 定时任务:" + current.getId()
                + ",name:" + current.getName());
        List<Map<String, Object>> list = ose.findadvet(null, 0);// 查询正在执行的订单
        /**
         * 订单提醒
         */
        for (Map<String, Object> map : list) {
            // 当前点击量*单价 =现在已经消费的金额
            double nowsum = Integer.parseInt(map.get("hits").toString())
                    * Double.parseDouble(map.get("unit").toString());
            int oid = Integer.parseInt(map.get("orderid").toString());
            // 总价格
            double sum = Double.parseDouble(map.get("sum").toString());
            int uid = Integer.parseInt(map.get("uid").toString());
            int aid = Integer.parseInt(map.get("aid").toString());// 广告id
            // 如果消费金额达到总金额的10%
            if (sum < sum * 0.1 + nowsum) {
                Integer wid = ose.findbyid(oid);
                if (wid == null) {
                    goEasy.publish("user" + uid, "有未读消息");// 发送通知
                    // 添加到消息提醒表
                    ose.addmsg("您的订单即将完成，您可续费继续进行此订单", "订单续费提醒", uid, 0, oid);
                    System.out.println("ok");
                }
            }
            /**
             * 如果余额用完则订单结束
             *
             */
            if (nowsum > sum || nowsum == sum) {
                // 解冻金额 //改为订单完成那个状态 //添加账单表
                if (oce.updatemoneybysum(nowsum,uid) > 0
                        && oce.updateorderbyid(1, oid) > 0
                        && oce.addcheck(uid, aid,
                        Integer.parseInt(map.get("hits").toString()),
                        nowsum, "客户的广告账单") > 0) {
                    String phone = oce.findphone(uid);
                    SmsVerification.getVerificationCode(phone,
                            "【Day One 广告平台】您的订单有新动态请及时查看");
                    oce.upftime(oid);//修改订单时间
                    goEasy.publish("user" + uid, "有未读消息");// 发送通知
                    // 添加到消息提醒表
                    ose.addmsg("您的订单已完成，订单编号:" + oid, "订单提醒", uid, 0, oid);
                    try {
                        // 获取网站主的点击量和用户id
                        List<Map<String, Object>> spaceuser = oce
                                .findspaceorder(aid);
                        for (Map<String, Object> smap : spaceuser) {
                            // 当前网站主所完成的点击量金额
                            double spacenowsum = Integer.parseInt(smap.get(
                                    "hits").toString())
                                    * Double.parseDouble(smap.get("price")
                                    .toString());
                            int spaceuid = Integer.parseInt(smap.get("uid")
                                    .toString());
                            int spaceoid = Integer.parseInt(smap.get("oid")
                                    .toString());
                            if (oce.updateusermoney(spacenowsum, spaceuid) > 0
                                    && oce.addmoneynums(spaceuid, "订单完成",
                                    spacenowsum, "该网站点击量的金额") > 0
                                    && oce.updateorderbyaid(aid) > 0) {
                                goEasy.publish("user" + spaceuid, "有未读消息");// 发送通知
                                // 添加到消息提醒表
                                ose.addmsg("该广告订单已完成，广告编号:" + aid, "订单提醒", spaceuid,
                                        0, spaceoid);
                                System.out.println("订单完成");
                            }
                        }
                    } catch (Exception e) {
                        // TODO: handle exception
                        e.printStackTrace();
                    }

                } else { // 否则 事务回滚
                    TransactionAspectSupport.currentTransactionStatus()
                            .setRollbackOnly();
                }
            }
        }

        /**
         *
         */


    }

}
