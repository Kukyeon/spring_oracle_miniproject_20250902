package com.kkuk.miniproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kkuk.miniproject.dao.MemberDao;
import com.kkuk.miniproject.dto.MemberDto;
import com.kkuk.miniproject.dto.OrderDto;

@Controller
public class MemberController {

	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request, Model model, HttpSession session) {
		return "login";
	}
	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		int logincheck = memberDao.memberloginDao(mid, mpw);
		if(logincheck == 1) {
			session.setAttribute("sessionId", mid);
			model.addAttribute("msg", "로그인 되었습니다.");
			model.addAttribute("url", "main");
			return "alert/alert";
		}else {
			model.addAttribute("msg", "아이디 또는 비밀번호를 확인해주세요.");
			model.addAttribute("url", "login");
			return "alert/alert";
		}
		
	
	}
	
	@RequestMapping(value = "/join")
	public String join(HttpServletRequest request, Model model, HttpSession session) {
		return "join";
	}
	
	@RequestMapping(value = "/joinOk")
	public String joinOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		String mname = request.getParameter("membername");
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		int idcheck = memberDao.memberidcheckDao(mid);
		if(idcheck == 1) {
			model.addAttribute("msg", "중복된 아이디가 있습니다. 다시입력해주세요.");
			model.addAttribute("url", "join");
			return "alert/alert";
		}else {
			int result = memberDao.memberjoinDao(mid, mpw, mname);
			model.addAttribute("mid", mid);
			model.addAttribute("msg", "회원가입되었습니다. 로그인을 눌러 로그인해주세요.");
			model.addAttribute("url", "main");
			return "alert/alert";
		}
		
		
	}
	
	@RequestMapping(value = "/userinfo")
	public String userinfo(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = (String) session.getAttribute("sessionId");
		if (mid == null) {
	        model.addAttribute("msg", "로그인이 필요합니다.");
	        model.addAttribute("url", "login");
	        return "alert/alert";
	    }
	    MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
	    MemberDto memberDto = memberDao.memberinfoDao(mid); 

	    model.addAttribute("member", memberDto);
	    return "userinfo";
	}
	
	@RequestMapping(value = "/userinfoOk")
	public String userinfoOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		String mname = request.getParameter("membername");
		if(mname == null || mname.trim().isEmpty()||mname.length() > 20) {
			model.addAttribute("msg", "이름은 필수입력사항이며 5자 이내로 입력바랍니다.");
			model.addAttribute("url", "userinfo");
			return "alert/alert";
		}
		if(mpw==null ||mpw.trim().isEmpty()||mpw.length() > 20) {
			model.addAttribute("msg", "비밀번호는 필수입력사항이며 20자 이내로 입력바랍니다.");
			model.addAttribute("url", "userinfo");
			return "alert/alert";
		}
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		int result = memberDao.updatememberDao(mid, mpw, mname);
		if(result > 0) {
			model.addAttribute("msg", "수정이 완료되었습니다. 다시 로그인해주세요");
			model.addAttribute("url", "logout");
			return "alert/alert";
		}else {
			model.addAttribute("msg", "수정이 실패하였습니다. 다시 시도해주세요.");
			model.addAttribute("url", "userinfo");
			return "userinfo";
		}
		
		
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request, Model model, HttpSession session) {
		
		session.invalidate();

	    model.addAttribute("msg", "로그아웃 되었습니다.");
	    model.addAttribute("url", "main");

	    return "alert/alert";
	    }
	
	@RequestMapping(value = "/order")
	public String order(HttpServletRequest request, Model model, HttpSession session) {
		String sessionId = (String) session.getAttribute("sessionId");
		if(sessionId == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
            model.addAttribute("url", "login");
            return "alert/alert";
		}
		return "order";
	}
	
	@RequestMapping(value = "/orderOk")
	public String orderOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String ordername = request.getParameter("ordername");
		String userid = request.getParameter("userid");
		String price = request.getParameter("orderprice");
		String quantity = request.getParameter("orderquantity");
		
		if(userid == null || ordername == null || quantity == null || price == null ||ordername.trim().isEmpty()) {
			model.addAttribute("msg", "잘못된 접근입니다.");
	        model.addAttribute("url", "order");
	        return "alert/alert";
		}
		
		int orderquantity = 1;
		int orderprice = 0;
		try {
			orderquantity = Integer.parseInt(quantity);
			orderprice = Integer.parseInt(price);
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("msg", "수량 또는 가격이 잘못되었습니다..");
	        model.addAttribute("url", "order");
	        return "alert/alert";
		}
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		int result = memberDao.updateorderDao(ordername, userid, orderprice, orderquantity);
		if(result > 0 ) {
			model.addAttribute("msg", "주문성공.");
	        model.addAttribute("url", "orderlist");
		}else {
			model.addAttribute("msg", "주문실패.");
	        model.addAttribute("url", "order");
		}
		return "alert/alert";
	}
	
	@RequestMapping(value = "/orderlist")
	public String orderlist(HttpServletRequest request, Model model, HttpSession session) {
		String sessionId = (String) session.getAttribute("sessionId");
		if(sessionId == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
            model.addAttribute("url", "login");
            return "alert/alert";
		}
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		List<OrderDto> orderDtos = memberDao.orderlistDao(sessionId);
		model.addAttribute("orderList", orderDtos);
		return "orderlist";
	}
	
	@RequestMapping(value = "/userdelete")
	public String userdelete(HttpServletRequest request, Model model, HttpSession session) {
		String sessionId = (String) session.getAttribute("sessionId");
		if(sessionId == null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
            model.addAttribute("url", "login");
            return "alert/alert";
		}
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		int result = memberDao.deleteuserDao(sessionId);
		if(result > 0) {
			session.invalidate();
			model.addAttribute("msg", "회원탈퇴가 완료되었습니다.");
	        model.addAttribute("url", "login");
	        return "alert/alert";
		}else {
			model.addAttribute("msg", "회원탈퇴가 실패했습니다. 다시한번 확인해주세요.");
	        model.addAttribute("url", "userinfo");
	        return "alert/alert";
		}
		
	}
}
