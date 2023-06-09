package com.multi.mvc.member.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.kakao.KaKaoService;
import com.multi.mvc.member.model.service.MemberService;
import com.multi.mvc.member.model.vo.Member;
import com.multi.mvc.tour.model.service.AccmService;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Booking;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log4j 선언 대신에 작성해주는 lombok 어노테이션
@Controller
@SessionAttributes("loginMember") // loginMember를 model에서 취급할때 세션으로 처리하는 어노테이션
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private KaKaoService kakaoService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private AccmService accmService;
	
	
	
	@GetMapping("/login")
	public String loginPage() { 
		return "member/login";
	}
	
	@PostMapping("/login")
	String login(Model model, String memberId, String memberPwd) {
		log.info("@@@Login : " + memberId +", "+ memberPwd);
		
		Member loginMember = service.login(memberId, memberPwd);
		
		// 로그인이 성공한 케이스
		if(loginMember != null) {
			model.addAttribute("loginMember", loginMember); // 세션으로 저장되는 코드, @SessionAttributes 사용
			return "redirect:/"; // home으로 보내는 방법
		}else {
			model.addAttribute("msg", "아이디와 패스워드를 확인해주세요.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus staus) { // staus: 세션의 상태확인 가능한 메소드
		log.info("staus : " + staus.isComplete());
		staus.setComplete(); // 세션을 종료 시키는 메소드
		log.info("staus : " + staus.isComplete());
		return "redirect:/";
	}
	

	// 회원가입 페이지를 연결시켜주는 핸들러
	@GetMapping("/member/enroll")
	public String enrollPage() { // xxxPage = 단순 html을 연결만 시켜주는 핸들러 메소드
		log.info("회원가입 페이지 요청");
		return "member/enroll";
	}
	
	@GetMapping("/member/enroll/kakao")
	public String enrollKakao(Model model, String code) {
		log.info("가입 페이지 요청");
		if(code != null) {
			try {
				String enrollUrl = "http://localhost/mvc/member/enroll/kakao";
				System.out.println("code : " + code);
				String token = kakaoService.getToken(code, enrollUrl);
				System.out.println("token : " + token);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				System.out.println(map);
				model.addAttribute("kakaoMap",map);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "member/enroll";
	}
	
	@GetMapping("/kakaoLogin")
	public String kakaoLogin(Model model, String code) {
		log.info("로그인 요청");
		if(code != null) {
			try {
				String loginUrl = "http://localhost/mvc/kakaoLogin";
				String token = kakaoService.getToken(code, loginUrl);
				Map<String, Object> map = kakaoService.getUserInfo(token);
				String kakaoToken = (String) map.get("id");
				Member loginMember = service.loginKaKao(kakaoToken);

				if(loginMember != null) { // 로그인 성공
					model.addAttribute("loginMember",loginMember); // 세션으로 저장되는 코드, 이유: @SessionAttributes
					return "redirect:/";
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("msg", "로그인에 실패하였습니다.");
		model.addAttribute("location","/");
		return "common/msg";
	}
	
	// 실제 회원가입을 시켜주는 핸들러
	@PostMapping("/member/enroll")
	public String enroll(Model model, @ModelAttribute Member member) { // @ModelAttribute 생략 가능!
		log.info("회원가입 요청");
		
		int result = service.save(member);
		
		if(result > 0) {
			model.addAttribute("msg", "회원가입 성공하였습니다.");
			model.addAttribute("location", "/");
		} else { 
			model.addAttribute("msg", "회원가입에 실패하였습니다. 입력정보 확인하세요.");
			model.addAttribute("location", "/member/enroll");
		}
		
		return "common/msg";
	}

	// AJAX로 ID 검사부
	@RequestMapping("/member/idCheck")
	public ResponseEntity<Map<String, Object>> idCheck(String id){
		log.info("아이디 중복 확인 : " +  id);
		
		boolean result = service.validate(id);
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put("validate", result); // json으로 변경되어 리턴될 예정
		
		return new ResponseEntity<Map<String,Object>>(jsonMap, HttpStatus.OK);
	}
	
	

	@RequestMapping("/member/myPage")
	public String viewMyPage(Model model, 
			@SessionAttribute(name="loginMember", required = false) Member loginMember) {
		int result = service.findBoardCountByMno(loginMember.getMno());
		Member member = service.findById(loginMember.getId());
		model.addAttribute("member", member);
		model.addAttribute("boardCount", result);
		return "/member/myPage";
	}
	
	@GetMapping("/member/personalInfo")
	public String viewPersonalInfo(Model model, 
			@SessionAttribute(name="loginMember", required = false) Member loginMember) {
		Member member = service.findById(loginMember.getId());
		model.addAttribute("member", member);
		return "/member/personalInfo";
	}
	
	
	// 회원정보 수정
	@PostMapping("/member/personalInfo")
	public String update(Model model,
			@ModelAttribute Member updateMember, // request에서 온 값
			@SessionAttribute(name="loginMember", required = false) Member loginMember // 세션값
			) {
		log.info("update 요청, updateMember : " + updateMember);
		log.info("update 요청, loginMember : " + loginMember);
		
		// 보안코드 작성부! + 체크부 작성, 예시
		if(loginMember == null || loginMember.getId().equals(updateMember.getId()) == false) {
			model.addAttribute("msg","잘못 된 접근입니다.");
			model.addAttribute("location","/");
			return "common/msg";
		}
		
		updateMember.setMno(loginMember.getMno()); // update가 되는 코드
		int result = service.save(updateMember);
		
		if(result > 0) {
			loginMember = service.findById(loginMember.getId());
			model.addAttribute("loginMember", loginMember); // 세션을 업데이트 하는 코드
			model.addAttribute("msg", "회원정보를 수정하였습니다.");
			model.addAttribute("location","/member/personalInfo");
		} else {
			model.addAttribute("msg", "회원정보 수정에 실패하였습니다.");
			model.addAttribute("location","/member/personalInfo");
		}
		return "common/msg";
	}
	
	
	@GetMapping("/member/updatePwd")
	public String updatePwdPage() {
		return "/member/updatePwd";
	}
	
	@PostMapping("/member/updatePwd")
	public String updatePwd(Model model, 
			String password,
			@SessionAttribute(name="loginMember", required = false) Member loginMember // 세션값
			) {
		int result = service.updatePwd(loginMember, password);
		
		if(result > 0) {
			model.addAttribute("msg", "비밀번호 수정에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "비밀번호를 변경 할수 없습니다.");
		}
		model.addAttribute("script","self.close();");
		
		return "/common/msg";
	}
	
	@RequestMapping("/member/delete")
	public String delete(Model model, 
			@SessionAttribute(name="loginMember", required = false) Member loginMember // 세션값
			) {
		int result = service.delete(loginMember.getMno());
		
		if(result > 0) {
			model.addAttribute("msg", "회원탈퇴에 성공하였습니다.");
			model.addAttribute("location", "/logout");
		}else {
			model.addAttribute("msg", "회원탈퇴를 할수 없습니다.");
			model.addAttribute("location", "/member/view");
		}
		
		return "/common/msg";
	}
	
	@RequestMapping("/member/myBooking")
	public String viewMyBooking(Model model, 
			@SessionAttribute(name="loginMember", required = false) Member loginMember) {
		List<Booking> list = service.findBookingByMno(loginMember.getMno());
		
		List<Accommodation> accmList = accmService.selectAccmAll();
		
		Date now = new Date();
		
		model.addAttribute("nowTime", now);
		model.addAttribute("list", list);
		model.addAttribute("accmList", accmList);
		return "/member/myBooking";
	}
	
	
	// contoller에서 전체 Error 처리하는 핸들러 
//	@ExceptionHandler(Exception.class)
//	public String error() {
//		return "/common/error";
//	}
}



















