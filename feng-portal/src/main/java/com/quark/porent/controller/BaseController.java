package com.quark.porent.controller;

import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

/**
 * Created by Administrator on 2018-01-11.
 */
public class BaseController {
    protected static String API_URL="http://127.0.0.1:8081/";
    @Autowired
    protected RestTemplate restTemplate;

    protected JSONObject getJsonRet(String url){
        ResponseEntity<String> responseEntity = restTemplate.getForEntity(API_URL+url, String.class);
        String quarkResultStr = responseEntity.getBody();
        JSONObject quarkResult=JSONObject.fromObject(quarkResultStr);
        return quarkResult;
    }
}
