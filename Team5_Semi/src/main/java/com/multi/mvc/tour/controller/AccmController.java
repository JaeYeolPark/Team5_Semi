package com.multi.mvc.tour.controller;

import java.util.Arrays;
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
	private AccmService accmService;
	
	@RequestMapping("/accm/search")
	public String list(Model model, @RequestParam Map<String, Object> param,
			@RequestParam(required = false) String[] hotelType) {
		log.info("search list 요청, param : " + param);
//		System.out.println(Arrays.toString(hotelType));
		
		int page = 1;
		
		if(param.get("page") != null) {
			try {
				page = Integer.parseInt((String) param.get("page"));
			} catch (Exception e) {}
		}
		
		if(hotelType != null  && hotelType.length > 0 ) {
			param.put("hotelType", Arrays.asList(hotelType));
		}else {
			param.remove("hotelType");
		}
		
//		System.out.println(param);
		int accmCount = accmService.getAccmCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, accmCount, 7); // 게시글이 보여지는 갯수 = 10
		List<Accommodation> list = accmService.getAccmList(pageInfo, param);
		
		model.addAttribute("count", accmCount);
		model.addAttribute("accmList",list);
		if(hotelType != null) {
			model.addAttribute("hotelType", Arrays.asList(hotelType));
		}
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/accm/search";
	}
	
	
	@RequestMapping("/accm/detail")
	public String detail(Model model, @RequestParam("contentid") int id) {
		Accommodation accm = accmService.findByContentId(id);
		if(accm == null) {
			return "redirect:error";
		}
		model.addAttribute("accm", accm);
		
		return "/accm/detail";
	}
	
	
	
	
}
