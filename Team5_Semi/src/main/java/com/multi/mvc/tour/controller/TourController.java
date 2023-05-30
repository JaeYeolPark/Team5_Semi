package com.multi.mvc.tour.controller;

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
public class TourController {
	@Autowired
	private AccmService service;
	
	@RequestMapping("/accm/search")
	public String list(Model model, @RequestParam Map<String, Object> param) {
		log.info("search list 요청, param : " + param);
		int page = 1;
		
		// TODO - 검색창연결할것!
		try {
//			if(param.get("searchType") != null) {
//				param.put((String) param.get("searchType"), param.get("searchValue"));
//				// title - 아이폰
//				// content - 삽니다
//			}
			
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) param.get("page")); 
		} catch (Exception e) {}
		
		
		
		int accmCount = service.getAccmCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, accmCount, 10); // 게시글이 보여지는 갯수 = 10
		List<Accommodation> list = service.getAccmList(pageInfo, param);
		
		model.addAttribute("accmList",list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/accm/search";
		
	}
	
	
	@RequestMapping("/accm/detail")
	public String detail(Model model, @RequestParam("contentid") int id) {
		Accommodation accm = service.findByContentId(id);
		if(accm == null) {
			return "redirect:error";
		}
		model.addAttribute("accm", accm);
		
		return "/accm/detail";
	}
	
	
	
	
}
