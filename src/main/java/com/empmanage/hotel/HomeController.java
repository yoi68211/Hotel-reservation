package com.empmanage.hotel;


import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.empmanage.hotel.service.HoteltbService;
import com.empmanage.hotel.service.HtdateService;
import com.empmanage.hotel.service.HtgbService;
import com.empmanage.hotel.service.HtloginService;
import com.empmanage.hotel.vo.HoteltbVO;
import com.empmanage.hotel.vo.HtdateVO;
import com.empmanage.hotel.vo.HtgbVO;
import com.empmanage.hotel.vo.HtloginVO;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Resource(name = "htloginService")
	private HtloginService htloginService;
	
	
	@Resource(name = "htdateService")
	private HtdateService htdateService;
	
	 
	@Resource(name = "hoteltbService")
	private HoteltbService hoteltbService;
	
	
	@Resource(name = "htgbService")
	private HtgbService htgbService;
	
	
	
	//로그인 페이지로 이동
	@RequestMapping(value = "/loginpage.do")
	public String loginpage() {
		
		return "login";
	}

	
	
	
	//예약페이지이동
	@RequestMapping(value = "/reservationpage.do")
	public String reservationpage() {
		
		return "reservation";
	}
	
	
	
	
	//로그인후 사용자 메인페이지 이동
	@RequestMapping(value = "/main.do")
	public String mainpage() {
		
		return "main";
	}
	
	
	
	
	//로그인후 사용자 메인페이지 이동
	@RequestMapping(value = "/adminMainpage.do")
	public String adminmainpage() {
		
		return "adminMain";
	}
		
	
	
	
	//회원가입페이지 이동
	@RequestMapping(value = "/joinpage.do")
	public String joinpage() {
		
		return "join";
	}
	
	
	
	
	//회원탈퇴 페이지 이동
	@RequestMapping(value = "/userDeletepage.do")
	public String userDeletepage() {
		
		return "userDelete";
	}
	
		
	
	
	
	//예약내역 페이지 이동
		@RequestMapping(value = "/reservationDetailpage.do")
		public String reviewDetailpage() {
			
			return "reservationDetail";
		}		
		
		
		
		
	//고객의소리 글쓰기 페이지 이동
		@RequestMapping(value = "/reviewWritingpage.do")
		public String reviewWritingpage() {
			
			return "reviewWriting";
		}	
		
		
		
	
	//회원가입 정보 insert
	@RequestMapping(value = "/join.do")
	public String join(@ModelAttribute("htloginVO") HtloginVO htloginVO, Model model) {
		htloginService.joinHotel(htloginVO);
		return "login";
	}
	
	
	
	
	//예약
	@RequestMapping(value = "/reservation.do")
	public String reservation(@ModelAttribute("htdateVO") HtdateVO htdateVO,HttpServletRequest request) {
		//예약 insert
		htdateService.insertDate(htdateVO);
		
		//예약번호 반환
		HttpSession session = request.getSession();
		
		int renum = htdateService.getReservationNum(htdateVO);
		session.setAttribute("renum", renum);
		System.out.println(renum);
		
		return "map";
	}
	
		
	
	//회원탈퇴 delete
	@RequestMapping(value = "/userDelete.do") 
	public String delete(@ModelAttribute("htloginVO") HtloginVO htloginVO, Model model) {
		htloginService.userDelete(htloginVO);
		return "login";
	}
	
	
	
	
	//로그인 해서 메인페이지로 세션과 함께이동
	@RequestMapping(value="login.do")
    public String login(HtloginVO htloginVO,HttpServletRequest request) {

		HttpSession session = request.getSession();
		
		HtloginVO htvo = htloginService.getlogin(htloginVO);
		//새로운 HtloginVO 객체 생성해서 반환되는 model 객체

        if(htvo != null) {//로그인이 된 경우
        	session.setAttribute("loginEmail", htvo.getEmail());
        	//받은 객체에서 getter메소드를 사용해서 세션에 저장
        	if(htvo.getAdmin().equals("y")) {
        		request.setAttribute("msg", "관리자 로그인");
        		request.setAttribute("url","adminMainpage.do");
        		return "alert";        		
        	}else {        			
        		return "main";
        	}
        }
        request.setAttribute("msg", "아이디 또는 비밀번호 오류입니다");
        request.setAttribute("url","loginpage.do");
        return "alert";
             

    }
	
	
		
	//고객의소리 페이지 이동 및 불러오기
	@RequestMapping(value = "/review.do")
	public String review(Model model) {
		
		ArrayList<HtgbVO> alist = htgbService.getAllGb();
		
		model.addAttribute("alist",alist);
		
		return "review";
	}
		
	
	
	
	//고객의소리 글쓰기 insert
	@RequestMapping(value = "/reviewWriting.do")
	public String reviewWriting(@ModelAttribute("htgbVO") HtgbVO htgbVO, Model model) {
		htgbService.insertWriting(htgbVO);
		return "review";
	}
	
	
	
	
	
	
	
	//지도선택후 지역에 맞는 호텔들어가기
	@RequestMapping(value = {"/seoulHotelList.do","/busanHotelList.do","/gangwonHotelList.do"})
	public String map(Model model, HoteltbVO hoteltbVO,HttpServletRequest request) {
		
		String c = request.getRequestURI().substring(request.getContextPath().length());
		HttpSession session = request.getSession();
		
		if(c.equals("/seoulHotelList.do")) hoteltbVO.setRegion("서울");
		else if(c.equals("/gangwonHotelList.do")) hoteltbVO.setRegion("강원도");
		else if(c.equals("/busanHotelList.do")) hoteltbVO.setRegion("부산");
		
		hoteltbVO.setRenum((int)session.getAttribute("renum"));
		
		ArrayList <HoteltbVO> alist1 = hoteltbService.viewHotelList(hoteltbVO);
		
		model.addAttribute("alist1", alist1);
		return "checkRoom";
	
	}
	
	
	
	//방예약 최종 update
	@RequestMapping(value = "/detailCheck.do") 
	public String detailCheck(@ModelAttribute("hoteltbVO") HoteltbVO hoteltbVO, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		
		hoteltbVO.setRenum((int)session.getAttribute("renum"));
		
		hoteltbService.detailCheck(hoteltbVO);
			
		
		
		return "detailCheck"; 
		
	}

	
	
	
	
	//로그아웃 세션제거 및 페이지 이동
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "index";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//-------------------------------------------------------------------------------------------------------------
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
