package com.kkuk.miniproject.dao;

import java.util.List;

import com.kkuk.miniproject.dto.BoardDto;

public interface BoardDao {

	public List<BoardDto> BoardListDao(int startRow, int endRow);
	public int BoardCountDao();
	public int boardprocessDao(String bnum, String btitle, String bcontent);
	public BoardDto boardviewDao(String bnum);
	public void updateviewDao(String bnum);
	public BoardDto boardEditDao(String bnum);
	public void WriteDao(String btitle, String bcontent, String bwriter);
	public void boardDeleteDao(int bnum);
}
