package com.multi.mvc;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.tour.model.service.AccmService;
import com.multi.mvc.tour.model.service.RestaurantService;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Restaurant;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j // log를 자동으로 생성시켜주는 어노테인션 = static 문장 생략 가능
public class HomeController {
	
	@Autowired
	private AccmService accmService;
	
	@Autowired
	private RestaurantService restService;
	
	@Autowired
	private BoardService boardService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		log.info("@@@@@@@@@@@ selectAll : " + memberService.findAll());
		List<Accommodation> accmList = accmService.getMainAccmList();
		List<Restaurant> restList = restService.getMainRestList();
		List<Board> courseList = boardService.getMainCourseList();
		List<Board> reviewList = boardService.getMainReviewList();
		
		model.addAttribute("restList",restList);
		model.addAttribute("accmList",accmList);
		model.addAttribute("courseList",courseList);
		model.addAttribute("reviewList",reviewList);
		
		return "main";
	}
	
}
