package com.kkuk.miniproject.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderDto {

	private int orderid;
	private String ordername;
	private String userid;
	private Timestamp orderdate;
	private int orderprice;
	private int orderquantity;
	
	private String membername;
}
