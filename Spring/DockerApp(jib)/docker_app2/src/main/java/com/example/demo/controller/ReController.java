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

	@RequestMapping(value="/app2/test", method = {RequestMethod.GET, RequestMethod.POST})
	public String test() {
		return "docker app 2 test";
	} // end of test()
	
	@RequestMapping(value="/app2/callApp1", method = {RequestMethod.GET, RequestMethod.POST})
	public String callApp1() {
		String msg = "아무 값도 불러오지 못했습니다";
		
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
	    String result = restTemplate.postForObject("http://172.17.0.1:8081/app1/callInfo", map, String.class);
	    
	    // 콘솔에 출력
//	    System.out.println("------------------ TEST 결과 ------------------");
//	    System.out.println(result);

		if(result != null) {
			msg = result;
		}
		
		return msg;
	} // end of callApp1()
}
