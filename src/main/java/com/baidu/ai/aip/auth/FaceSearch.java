package com.baidu.ai.aip.auth;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import springfox.documentation.spring.web.json.Json;

import com.alipay.api.internal.parser.json.JsonConverter;
import com.baidu.ai.aip.utils.Base64Util;
import com.baidu.ai.aip.utils.GsonUtils;
import com.baidu.ai.aip.utils.HttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonElement;


@Controller
public class FaceSearch {
	/**
	    * 重要提示代码中所需工具类
	    * FileUtil,Base64Util,HttpUtil,GsonUtils请从
	    * https://ai.baidu.com/file/658A35ABAB2D404FBF903F64D47C1F72
	    * https://ai.baidu.com/file/C8D81F3301E24D2892968F09AE1AD6E2
	    * https://ai.baidu.com/file/544D677F5D4E4F17B4122FBD60DB82B3
	    * https://ai.baidu.com/file/470B3ACCA3FE43788B5A963BF0B625F3
	    * 下载
	    */
	@RequestMapping("search")
	@ResponseBody
	    public  String search(String base) {
		System.out.println(1);
	        // 请求url
		String aaa="";
	        String url = "https://aip.baidubce.com/rest/2.0/face/v3/search";
	        try {
	            Map<String, Object> map = new HashMap<>();
	            map.put("image", base);
	            map.put("liveness_control", "NORMAL");
	            map.put("group_id_list", "zxd");
	            map.put("image_type", "BASE64");
	            map.put("quality_control", "LOW");

	            String param = GsonUtils.toJson(map);
	           
	            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
	            String accessToken = GetToken.getAuth();
	            
	            String result = HttpUtil.post(url, accessToken, "application/json", param);
	            
	            String s=result.substring(result.indexOf("score"));
	            s=s.substring(7,s.length()-16);
	       if(Double.parseDouble(s)>90){
	 if(result.length()==251){
		aaa="ok";
	 }else{
		aaa="no";
	 }    
	       }else{
	    	   aaa="no";
	       }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
			return aaa;
	        
	    }
	 

	}
	

