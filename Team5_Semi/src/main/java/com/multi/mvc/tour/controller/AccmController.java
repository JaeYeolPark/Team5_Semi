package com.multi.mvc.tour.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.Member;
import com.multi.mvc.tour.model.service.AccmService;
import com.multi.mvc.tour.model.service.ImageService;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Booking;
import com.multi.mvc.tour.model.vo.ImageVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AccmController {
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@Autowired
	private AccmService accmService;
	
	@Autowired
	private ImageService imgService;

	@RequestMapping("/accm/search")
	public String list(Model model, @RequestParam Map<String, Object> param, @RequestParam(required = false) String[] hotelType) {
		log.info("search list 요청, param : " + param);
//		System.out.println(Arrays.toString(hotelType));

		int page = 1;

		if (param.get("page") != null) {
			try {
				page = Integer.parseInt((String) param.get("page"));
			} catch (Exception e) {
			}
		}

		if (hotelType != null && hotelType.length > 0) {
			param.put("hotelType", Arrays.asList(hotelType));
		} else {
			param.remove("hotelType");
		}

		int accmCount = accmService.getAccmCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, accmCount, 7); // 게시글이 보여지는 갯수 = 10
		List<Accommodation> list = accmService.getAccmList(pageInfo, param);

		model.addAttribute("count", accmCount);
		model.addAttribute("accmList", list);
		if (hotelType != null) {
			model.addAttribute("hotelType", Arrays.asList(hotelType));
		}
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/accm/search";
	}

	@RequestMapping("/accm/detail")
	public String detail(Model model, @RequestParam Map<String, Object> param, @RequestParam("contentid") int id) {
		Accommodation accm = accmService.findByContentId(id);
		int page = 1;

		if (accm == null) {
			return "redirect:error";
		}

		if (param.get("page") != null) {
			try {
				page = Integer.parseInt((String) param.get("page"));
			} catch (Exception e) {
			}
		}

		int accmCount = accmService.getAccmCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, accmCount, 7); // 게시글이 보여지는 갯수 = 10
		List<Accommodation> list = accmService.getAccmList(pageInfo, param);
		List<ImageVO> imgList = imgService.getImageList(id);

		model.addAttribute("dAccmList", list);
		model.addAttribute("imgList", imgList);
		model.addAttribute("accm", accm);
		return "/accm/detail";
	}

	@GetMapping("/accm/booking")
	public String booking(Model model, @RequestParam Map<String, Object> param,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		param.put("mno", loginMember.getMno());
		model.addAttribute("bkParam", param);
		return "/accm/booking";
	}

	@PostMapping("/accm/booking")
	public String booked(Model model, HttpSession session, @ModelAttribute Booking booking,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		log.info("board write 요청, board : " + booking);
		booking.setMNO(loginMember.getMno());
		int result = accmService.setBooking(booking);

		if (result > 0) {
			model.addAttribute("msg", "예약되었습니다");
			model.addAttribute("location", "/accm/search");
		} else {
			model.addAttribute("msg", "예약에 실패하였습니다.");
			model.addAttribute("location", "/accm/search");
		}
		return "common/msg";
	}

}
