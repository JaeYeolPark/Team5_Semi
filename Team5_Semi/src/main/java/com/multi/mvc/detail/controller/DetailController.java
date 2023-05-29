package com.multi.mvc.detail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailController {
	
	@RequestMapping("/accom/search")
	public String accomSearch() {
		return "accom/search";
	}
	
	
}
