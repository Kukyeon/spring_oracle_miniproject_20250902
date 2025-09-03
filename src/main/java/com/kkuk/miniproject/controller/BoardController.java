package com.kkuk.miniproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kkuk.miniproject.dao.BoardDao;
import com.kkuk.miniproject.dto.BoardDto;

@Controller
public class BoardController {

	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value = "/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "/boardlist")
	public String boardlist(HttpServletRequest request, Model model, HttpSession session) {
		
		int pageSize = 10;
		int pageNum = 1;
		int blockSize = 5;
		
		if(request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		int startRow = (pageNum * pageSize) - 9;
		int endRow = pageNum * pageSize;
		
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		List<BoardDto> boardDtos = boardDao.BoardListDao(startRow, endRow);
		int totalCount = boardDao.BoardCountDao();
		
		int startPage = (((pageNum-1)/blockSize)*blockSize)+1;
		int endPage = startPage+(blockSize-1);
		int totalPage = (int)Math.ceil((double)totalCount/pageSize);
		if(endPage > totalPage) {
			endPage=totalPage;
		}
		model.addAttribute("boardlist", boardDtos);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("totalCount", totalCount);
		
		return "boardlist";
	}
	
	@RequestMapping(value = "/boardedit")
	public String boardedit(HttpServletRequest request, Model model, HttpSession session) {
		
		String bnum = request.getParameter("bnum");
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		BoardDto boardDto = boardDao.boardEditDao(bnum);
		model.addAttribute("board", boardDto);
		return "boardedit";
	}
	
	@RequestMapping(value = "/boardeditprocess")
	public String boardeditprocess(HttpServletRequest request, Model model, HttpSession session) {
		
		String bnum = request.getParameter("bnum");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		
		int result = boardDao.boardprocessDao(bnum, btitle, bcontent);
		
		if (result > 0) {
	        // 수정 성공 후 수정된 글 정보를 다시 불러오기
	        BoardDto boardDto = boardDao.boardEditDao(bnum);
	        model.addAttribute("board", boardDto);
	        model.addAttribute("msg", "글 수정 완료.");
	        return "boardview";  // 수정 후 상세보기 페이지로 이동하는 게 일반적
	    } else {
	        // 수정 실패 시 처리 (예: 에러 페이지 또는 수정 페이지로 돌아가기)
	    	model.addAttribute("msg", "글 수정 실패.");
	        return "boardedit";
	    }
		
	}
	
	@RequestMapping(value = "/boardview")
	public String boardview(HttpServletRequest request, Model model, HttpSession session) {
		
		String bnum = request.getParameter("bnum");
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.updateviewDao(bnum);
		BoardDto boardDto = boardDao.boardviewDao(bnum);
		model.addAttribute("board", boardDto);
		
		
		return "boardview";
	}
	
	@RequestMapping(value = "/boardwrite")
	public String boardwrite(HttpServletRequest request, Model model, HttpSession session) {
		String sid = (String)session.getAttribute("sessionId");
		if(sid==null) {
			model.addAttribute("msg", "로그인 후 이용바랍니다.");
			model.addAttribute("url", "login");
			return "alert/alert";
		}
		
		return "boardwrite";
	}
	
	@RequestMapping(value = "/boardwriteOk")
	public String boardwriteOk(HttpServletRequest request, Model model, HttpSession session) {
		
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bwriter = request.getParameter("bwriter");
		
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.WriteDao(btitle, bcontent, bwriter);
		
		return "redirect:boardlist";
	}
	
	@RequestMapping(value = "/boarddelete")
	public String boarddelete(HttpServletRequest request, Model model, HttpSession session) {
		
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardDeleteDao(bnum);
		
		
		
		return "redirect:boardlist";
	}
	
	@RequestMapping(value = "/location")
	public String location(HttpServletRequest request, Model model, HttpSession session) {
		
		return "location";
	}
}
