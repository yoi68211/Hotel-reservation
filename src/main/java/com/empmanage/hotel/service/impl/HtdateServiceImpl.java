package com.empmanage.hotel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empmanage.hotel.service.HtdateService;
import com.empmanage.hotel.service.dao.HtdateDAO;
import com.empmanage.hotel.vo.HtdateVO;

@Service("htdateService")
public class HtdateServiceImpl implements HtdateService{

	@Autowired
	private HtdateDAO hotelkaja1;

	@Override
	public void insertDate(HtdateVO htdateVO) {
		hotelkaja1.insertDate(htdateVO);
		
	}

	@Override
	public int getReservationNum(HtdateVO htdateVO) {
		return hotelkaja1.getReservationNum(htdateVO);
	}


	
	}
	

