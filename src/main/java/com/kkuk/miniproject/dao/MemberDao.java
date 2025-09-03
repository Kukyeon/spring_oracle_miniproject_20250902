package com.kkuk.miniproject.dao;

import java.util.List;

import com.kkuk.miniproject.dto.MemberDto;
import com.kkuk.miniproject.dto.OrderDto;

public interface MemberDao {

	public int memberjoinDao(String memberid, String memberpw, String membername);
	public int memberidcheckDao(String memberid);
	public int memberloginDao(String memberid, String memberpw);
	public int updatememberDao(String memberid, String memberpw, String membername);
	public MemberDto memberinfoDao(String memberid);
	public List<OrderDto> orderlistDao(String memberid);
	public int updateorderDao(String ordername, String userid, int orderprice, int orderquantity);
		
}
