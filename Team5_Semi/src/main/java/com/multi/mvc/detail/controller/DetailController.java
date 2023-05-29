package com.multi.mvc.detail.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.service.AccmService;
import com.multi.mvc.tour.model.vo.Accommodation;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class DetailController {
	@Autowired
	private AccmService service;
	
	@RequestMapping("/accom/search")
	public String list(Model model, @RequestParam Map<String, Object> param) {
		log.info("search list 요청, param : " + param);
		int page = 1;
		
		
		
		
		
		int accmCount = service.getAccmCount(param);
		List<Accommodation> accmList = service.selectAccmAll();
		PageInfo pageInfo = new PageInfo(page, 10, accmCount, 10); // 게시글이 보여지는 갯수 = 10
		
		
		model.addAttribute("accmList",accmList);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/accom/search";
		
	}
	
	
	
}
