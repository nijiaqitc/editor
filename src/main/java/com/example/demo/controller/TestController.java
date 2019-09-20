package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping("index")
	public String index() {
		return "index";
	}
	
	
	@RequestMapping("json")
	public String json() {
		return "htmldcode";
	}
	
	@RequestMapping("css")
	public String css() {
		return "css";
	}
	
	@RequestMapping("xml")
	public String xml() {
		return "xml";
	}
	
	@RequestMapping("sql")
	public String sql() {
		return "sql";
	}
	
	@RequestMapping("md5")
	public String md5() {
		return "md5";
	}
	
	@RequestMapping("abc")
	public String abc() {
		return "abc";
	}
	
}
