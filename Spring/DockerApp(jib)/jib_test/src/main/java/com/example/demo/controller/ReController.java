package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReController {

	@RequestMapping(value="/", method = {RequestMethod.GET, RequestMethod.POST})
	public String home() {
		return "hello this is jib test";
	}
}
