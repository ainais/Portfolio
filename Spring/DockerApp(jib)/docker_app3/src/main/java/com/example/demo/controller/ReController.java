package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class ReController {

	@RequestMapping(value="/app3/test", method = {RequestMethod.GET, RequestMethod.POST})
	public String test() {
		return "docker app 3 test";
		
	}
	
	@RequestMapping(value="/app3/callAll", method = {RequestMethod.GET, RequestMethod.POST})
	public String callAll() {
		String msg = null;
				
	    // RestTemplate 에 MessageConverter 세팅
	    List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
	    converters.add(new FormHttpMessageConverter());
	    converters.add(new StringHttpMessageConverter());
	 
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.setMessageConverters(converters);
	 
	    // parameter 세팅
	    MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
	    map.add("str", "bookInfo");
	    
	    // REST API 호출
	    
	    String resultApp1 = restTemplate.postForObject("http://172.17.0.1:8081/app1/test", map, String.class);
	    String resultApp2 = restTemplate.postForObject("http://172.17.0.1:8082/app2/test", map, String.class);
	    
	    
	    String result = "App3 test with / " + resultApp1 + " / " +resultApp2;
	    
		if(result != null) {
			msg = result;
		}
		
		return msg;
	}
}
