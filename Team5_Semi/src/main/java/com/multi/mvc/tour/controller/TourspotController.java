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
import com.multi.mvc.tour.model.service.TourspotService;
import com.multi.mvc.tour.model.vo.Tourspot;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TourspotController {
	@Autowired
	private TourspotService tourspotService;
	
	@RequestMapping("/tourspot/search")
	public String list(Model model, @RequestParam Map<String, Object> param,
			@RequestParam(required = false) String[] tourspotType) {
		log.info("search list 요청, param : " + param);
//		System.out.println(Arrays.toString(tourspotType));
		
		int page = 1;
		
		if(param.get("page") != null) {
			try {
				page = Integer.parseInt((String) param.get("page"));
			} catch (Exception e) {}
		}
		
		if(tourspotType != null  && tourspotType.length > 0 ) {
			param.put("tourspotType", Arrays.asList(tourspotType));
		}else {
			param.remove("tourspotType");
		}
		
//		System.out.println(param);
		int tourspotCount = tourspotService.getTourspotCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, tourspotCount, 15); // 게시글이 보여지는 갯수 = 10
		List<Tourspot> list = tourspotService.getTourspotList(pageInfo, param);
		
		model.addAttribute("count", tourspotCount);
		model.addAttribute("tourspotList",list);
		if(tourspotType != null) {
			model.addAttribute("tourspotType", Arrays.asList(tourspotType));
		}
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/tourspot/search";
	}
	
	
	@RequestMapping("/tourspot/detail")
	public String detail(Model model, @RequestParam("contentid") int id) {
		Tourspot tourspot = tourspotService.findByContentId(id);
		if(tourspot == null) {
			return "redirect:error";
		}
		model.addAttribute("tourspot", tourspot);
		
		return "/tourspot/detail";
	}
	
}
