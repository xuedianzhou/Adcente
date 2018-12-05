package com.controller.zxd;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradePayModel;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayFundTransToaccountTransferRequest;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayFundTransToaccountTransferResponse;
import com.alipay.config.AlipayConfig;
import com.service.yjh.FrontService;
import com.service.zwb.MoneySer;
import com.service.zxd.recordService;



@Controller
public class AlipayController {
	@Resource
	MoneySer mser;
	
	@Resource
	recordService rervice;
	
	@Resource
	FrontService fervice;

    // 获取配置文件的信息
    String app_id = AlipayConfig.app_id;
    String private_key = AlipayConfig.private_key;
    String notify_url = AlipayConfig.notify_url;
    String return_url = AlipayConfig.return_url;
    String url = AlipayConfig.url;
    String charset = AlipayConfig.charset;
    String format = AlipayConfig.format;
    String public_key = AlipayConfig.public_key;
    String signtype = AlipayConfig.signtype;
    String s="MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKwFKlbeUYmr6F9A/3Ifdc9FvitNeOS4/hbViVPWmz4HliABYtS7SjBam4Tu6tP7kGiK6Vks5BEUUFjApfB2LoyTfWXgU/JuWwIRL8wM1fVImatbPVBJpLHCjEU25k+4zTM8Cywy6Ao1iNq94hgW35beBxBG234QYBtuZPtrXF25AgMBAAECgYA+E3cd9ghyqAipJymHo3a+H6rqsYBo+aEn2FNAX/eRwOcaEaX6osO5A1mP9S/k46lPMKHYvmxnBW+hN5QqXFubY499Qbiq2J87MGgXeFo1KhoJJubYLMe+DFiogCPnEPIeRjirwAc7ldjrJft8f9+KGXaUZYPq2AEj0ppMZxRsAQJBANy6Pbr8fMAFVRHPUOAxdhsAW2fjFdPohcWTjM5A1rvd/1ttwFxfscXot/tze16La1D+ZoLtOLM7CmiN9PN2lnkCQQDHglo0/qYuu/3An8M9QDk/k4S4iDMERfWEqP/XjNKrvNVwyZBfwVoBNb3X8cHEu7fCzX9wwG+fpp3EHLPiSzFBAkEAmqeHnx9PzT8vNtZapWsihJLAeM7cuWh/aksS6mT10BYg2I/SqyaFqdSALJfihgELxWkqrGvIQZSJm25zha6+iQJBALunrUeJejAdHNmwrAiRvwdAryaO3UWYtA1alIJfb8yfajeTL5wRlqHqta1HNRXh5z9w4Pzh1FxbcKuEv+ILDcECQEzdDOkw4ZsuYu/H5iWnjTaT9mqz59hDwNwe9O1ixh+w3cgq+roflXVBKCWNOGh3ruIiBj+rlW6wqn6bfXsAIsM=";
    /**
     * 支付请求
     * 
     * @param order
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("pay")
    public void pay(HttpServletRequest request, HttpServletResponse response,String money,HttpSession session) throws Exception {

        // 模拟从前台传来的数据
    	Random random = new Random();
        String orderNo =(int) (random.nextDouble() * (99999 - 10000 + 1)) + 10000+""; // 生成订单号
        String totalAmount = money; // 支付总金额
        String subject = "ITAEMBook"; // 订单名称
        String body = "reading"; // 商品描述

        // 封装请求客户端
        AlipayClient client = new DefaultAlipayClient(url, app_id, private_key, format, charset, public_key, signtype);

        // 支付请求
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(return_url);
        alipayRequest.setNotifyUrl(notify_url);
        AlipayTradePayModel model = new AlipayTradePayModel();
        model.setProductCode("FAST_INSTANT_TRADE_PAY"); // 设置销售产品码
        model.setOutTradeNo(orderNo); // 设置订单号
        model.setSubject(subject); // 订单名称
        model.setTotalAmount(totalAmount); // 支付总金额
        model.setBody(body); // 设置商品描述
        alipayRequest.setBizModel(model);

        String form = client.pageExecute(alipayRequest).getBody(); // 生成表单
        System.out.println(form);
        response.setContentType("text/html;charset=" + charset);
        response.getWriter().write(form); // 直接将完整的表单html输出到页面
        response.getWriter().flush();
        response.getWriter().close();
        System.out.println(1);
        int uid= (int) session.getAttribute("uid");
        double sum=Double.parseDouble(totalAmount);
        int rs=mser.zcfcz(sum, uid);
    }

    /**
     * 同步跳转
     * 
     * @param request
     * @throws Exception
     */
    @RequestMapping("returnUrl")
    public String returnUrl(HttpServletRequest request) throws Exception {
        // 获取支付宝GET过来反馈信息（官方固定代码）
        System.out.println(1);
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        }
        boolean signVerified = AlipaySignature.rsaCheckV1(params, public_key, charset, signtype); // 调用SDK验证签名
        // 返回界面
        if (signVerified) {
            return "front/layui.jsp";
        } else {
            return "error.jsp";
        }
       
    }

    /**
     * 支付宝服务器异步通知
     * 
     * @param request
     * @throws Exception
     */
    @RequestMapping("notifyUrl")
    public void notifyUrl(HttpServletRequest request) throws Exception {
        // 获取支付宝GET过来反馈信息
    	System.out.println(1);
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        } 

        boolean signVerified = AlipaySignature.rsaCheckV1(params, public_key, charset, signtype); // 调用SDK验证签名

        if (signVerified) { // 验证成功 更新订单信息
            System.out.println("异步通知成功");
            // 商户订单号
            String out_trade_no = request.getParameter("out_trade_no");
            // 交易状态
            String trade_status = request.getParameter("trade_status");
            // 修改数据库
        } else {
            System.out.println("异步通知失败");
        }
    }
    
    @RequestMapping("transfer")
	public String transfer(double money,HttpSession session) throws AlipayApiException {
    	System.out.println(money);
    	 int uid= (int) session.getAttribute("uid");
    	 double moneys=money-money*0.02;
    	 double sxf=money*0.02;
    	 System.out.println(sxf);
    	 System.out.println(moneys);
    	AlipayClient alipayClient = new DefaultAlipayClient(url,app_id,private_key,"json","utf-8",public_key,"RSA2");
    	AlipayFundTransToaccountTransferRequest request = new AlipayFundTransToaccountTransferRequest();
    	Random random = new Random();
        String out_biz_no =(int) (random.nextDouble() * (99999 - 10000 + 1)) + 1000000+""; // 生成订单号
        String test="天一广告联盟提现";
    	request.setBizContent("{" +
    			"    \"out_biz_no\":"+out_biz_no+"," +
    			"    \"payee_type\":\"ALIPAY_LOGONID\"," +
    			"    \"payee_account\":\"dvrvfl3597@sandbox.com\"," +
    			"    \"amount\":"+moneys+"," +
    			"    \"payer_show_name\":\"天一广告联盟提现\"," +
    			"    \"payee_real_name\":\"沙箱环境\"," +
    			"    \"remark\":\"天一广告联盟提现\"," +
    			"  }");
    	AlipayFundTransToaccountTransferResponse response = alipayClient.execute(request);
    	if(response.isSuccess()){
    	 System.out.println("调用成功");
    	 //添加金额
    	 int rs=mser.zcftx(money, uid);
    	 //添加交易记录
    	 int rssxf=rervice.addrecord(uid, moneys);
    	 //添加收益表
    	 int shouyi=fervice.addfront(money, sxf, test, uid);
    	 if(rs>0&&rssxf>0&&shouyi>0){
    	 return "center";
 		
    	}else{
    		return "error.jsp";
    	}
		
    }else{
    	return "error.jsp";
    }
    }
    }

