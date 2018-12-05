package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016092000551471";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String private_key = "MIIEwAIBADANBgkqhkiG9w0BAQEFAASCBKowggSmAgEAAoIBAQDKa7Na5Y+MhCqVJqrlVp4c+AWef8gO1x69YL0nx2wSdxwowZYv3NWtyXquB9+7xMls17zCU7WHa6Lu9JQPbVrce31fud0JZITm6jbVN47zO0Fk42+erTaW0XPxfgI2ggdUZa/lTLtbeJYsnvs3SuKAt+IaEiPotsj/AZrbkHnlB/9MITtkFplcB/BtDcsg9+dPyZcJFxnzLJu2D3oX7PQzB66Sot+IsIO8QYw9eYQCpXiNx3oii3me0peY60N1Ey364XCa1aenjdkRf5hq9aFrKUsQ6MDG0CXLQSdSFY/dsyY3iD8Mbyrm1iyz6kGq3+pSIWqIYkWKU95Tk2XYbJ0VAgMBAAECggEBAJ7ZYgjE+Z/F4Dzn+Vi8XpxRLuexU2gB/UeUcRyUbQUYn+qD8L5iyPT2leWYnEUYKxHVQ3YkhuJc36IyITbyFEnORxcmHoXOclVcG+e7D91k9O6dZOza9WnpuNkcj9QCuonKuvxw+N7RhNhDctVzWMi2hSL8dV2cg6NKuSHxARdvhuhAhJJfcCU/oRjcGRlnmXqaXnNTfOMOau/Vr98i+qXiQX3FShCWy+xfxOat82wEhLotxJI1iOsutO08i5tLyw1LIIM7gG2oyqE1ygZ3jEndgFuI0EGRLDk0IICYqJKq1BSUcUQUuc3EO/C8DgNEVdKVFyoS8LUZzxC0HD6gSMkCgYEA9WalTrUhFLWtdwrznbudaQn84yjnbOfnOFniZdtl3AnJIQdGg03iwkYY9jp/IRJxq+CzhwWQtkwEyAYFxwOSSndWGB3/S45+snHAmsjTpFTfJ53mo03GqD8/cBsOM8cbhgaTvp53/WfSj8DntrvsHHrR++zIFDuyZzk/9tboxUMCgYEA0ynUdnM6MnIW3brgotImuK3kjNzNPz6amvgQDQjgICGI0ojJ1twD5mE+eKa6bF24fV5twzBIROhiRftwf1dVgwgl0pt1r4wWG7FvO50WarUjF78j8berJ72P9UrfsStfNyVk95yOaLAS04JiyWBU0BYdFFt/78gDS4GQ9mTgQscCgYEAzag/Q03ismNrQ0eHUJop2hyHtavS/t7+VKhnZqtOmvAMgcSCIIpGTj/GrZvqbMHzR3LhoXdVhqEApMz/TIC+ue921HFXQW/i2BMisdU6IQ8LkTzwS81jfh67QG08IsJrW4/pg6d0sYav3M9yoR6uSlPX5MPUDbjV01IUO/5xRtcCgYEAkIgMBTsfNVIDtqZnhOpkWHmleojS7xvxhGqPyewuQ6/QT5IS3L5g6PncYYZ1CSEo2p6ccEIG5StNwGq2eGKVhAc6pCmF5q7ynufWo64Enur2ZxWMC7FUM/I6q4EhFMoD9OHidtywWJVTfXO8G+uUgYzxQHLUYZG8N50qVIt9OBcCgYEA6GpoICtEGmgkE2lSlZGRFBtruzr0PFWy1RPi0BvxmFuqQk3x3uMH2Zi5tmBvl+EopzeHSInTrV8mGMWsH+9+J+nrBrnYU2U+Ppnm8UszVN4X+cIAujwsWe5ONoqn12HhE255UPeqmRVKR7iM2kbZASxbSMW8uPS5JqjAL7EpAEk=";
    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzvPJbqdO+CZtCbYPtPmbtwjaa/Ge2vpektvEEzuRH35xx2ckxvJyzvPavym1DfvNuWKjbI0b3BVswxLncNESNSkGlpA3ySK7Xnmia5z70uJR7JTLzACzMzwcktc7mDrkf6tZhSW4WM7nXeH9cwWxhH5eJTMD410PVlLv/NXvGCb7cVkK4+cIr8RGA2+gZMREGD1mgyIzfuxN8OxQqISPbuJLO1cAnJtbRR5hFHC5yqsTMXUOuzNkVCUFnpe7y8AO+MAyKd7G8sT4I67NA6342Fa4oQHRBB120hebT7D04+oNMEmtkVl6fyh5M4iQI3XNXpeFyBWqzrnFlizAr7bW+wIDAQAB";
    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/notifyUrl";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8080/returnUrl";

    // 签名方式
    public static String signtype = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";


    public static String format = "json";
    // 支付宝网关
    public static String url = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";
}

