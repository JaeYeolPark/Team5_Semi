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
import com.multi.mvc.tour.model.service.RestaurantService;
import com.multi.mvc.tour.model.vo.Restaurant;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class RestaurantController {
	@Autowired
	private RestaurantService restaurantService;
	
	@RequestMapping("/restaurant/search")
	public String list(Model model, @RequestParam Map<String, Object> param,
			@RequestParam(required = false) String[] restaurantType) {
		log.info("search list 요청, param : " + param);
//		System.out.println(Arrays.toString(restaurantType));
		
		int page = 1;
		
		if(param.get("page") != null) {
			try {
				page = Integer.parseInt((String) param.get("page"));
			} catch (Exception e) {}
		}
		
		if(restaurantType != null  && restaurantType.length > 0 ) {
			param.put("restaurantType", Arrays.asList(restaurantType));
		}else {
			param.remove("restaurantType");
		}
		
//		System.out.println(param);
		int restaurantCount = restaurantService.getRestaurantCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, restaurantCount, 9); // 게시글이 보여지는 갯수 = 10
		List<Restaurant> list = restaurantService.getRestaurantList(pageInfo, param);
		
		model.addAttribute("count", restaurantCount);
		model.addAttribute("restaurantList",list);
		if(restaurantType != null) {
			model.addAttribute("restaurantType", Arrays.asList(restaurantType));
		}
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/restaurant/search";
	}
	
	
	@RequestMapping("/restaurant/detail")
	public String detail(Model model, @RequestParam("contentid") int id) {
		Restaurant restaurant = restaurantService.findByContentId(id);
		if(restaurant == null) {
			return "redirect:error";
		}
		model.addAttribute("restaurant", restaurant);
		
		return "/restaurant/detail";
	}
	
}
