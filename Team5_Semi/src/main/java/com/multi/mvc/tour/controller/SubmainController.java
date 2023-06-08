package com.multi.mvc.tour.controller;

import java.io.InputStream;
import java.io.Writer;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.service.SubmainService;
import com.multi.mvc.tour.model.vo.Submain;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class SubmainController {
	@Autowired
	private SubmainService submainService;
	
	@RequestMapping("/submain/submain")
	public String list(Model model, @RequestParam Map<String, Object> param,
			@RequestParam(required = false) String[] submainType) {
		log.info("search list 요청, param : " + param);
//		System.out.println(Arrays.toString(tourspotType));
		
		int page = 1;
		
		if(param.get("page") != null) {
			try {
				page = Integer.parseInt((String) param.get("page"));
			} catch (Exception e) {}
		}
		
		if(submainType != null  && submainType.length > 0 ) {
			param.put("submainType", Arrays.asList(submainType));
		}else {
			param.remove("submainType");
		}
		
//		System.out.println(param);
		int submainCount = submainService.getSubmainCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, submainCount, 10); // 게시글이 보여지는 갯수 = 10
		List<Submain> list = submainService.getSubmainList(pageInfo, param);
		
		model.addAttribute("count", submainCount);
		model.addAttribute("submainList",list);
		if(submainType != null) {
			model.addAttribute("submainType", Arrays.asList(submainType));
		}
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/submain/submain";
	}
	
	
	
}
