package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReController {

	@RequestMapping(value="/app1/test", method = {RequestMethod.GET, RequestMethod.POST})
	public String test() {
		return "docker app 1 test";
	} // end of test()
	
	@RequestMapping(value="/app1/callInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String callInfo(String str) {
		if(str==null || str.replaceAll(" ", "")==null) {
			str = "입력된 값이 없습니다.";
		}else {
			System.out.println("입력된 str 정보 = " + str);
		} // end of str null check
		
		if(str.equals("bookInfo")) {
			str="아프니까 청춘이다/김난도/쌤앤파커스";
		}
		
		return str;
	} // end of test()
}
