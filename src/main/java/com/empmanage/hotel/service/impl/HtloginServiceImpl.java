package com.empmanage.hotel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empmanage.hotel.service.HtloginService;
import com.empmanage.hotel.service.dao.HtloginDAO;
import com.empmanage.hotel.vo.HtloginVO;

@Service("htloginService")
public class HtloginServiceImpl implements HtloginService{

	@Autowired
	private HtloginDAO hotelkaja;

	@Override
	public HtloginVO getlogin(HtloginVO htloginVO) {
		// TODO Auto-generated method stub
		return hotelkaja.getlogin(htloginVO);
	}

	@Override
	public void joinHotel(HtloginVO htloginVO) {
		hotelkaja.hotelJoin(htloginVO);
	}

	
	
	@Override 
	public void userDelete(HtloginVO htloginVO) {
		hotelkaja.userDelete(htloginVO);
	}
	 


	
	}
	

