package com.empmanage.hotel.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.empmanage.hotel.service.HtgbService;
import com.empmanage.hotel.service.dao.HtgbDAO;
import com.empmanage.hotel.vo.HtgbVO;

@Service("htgbService")
public class HtgbServiceImpl implements HtgbService{

	@Autowired
	private HtgbDAO hotelkaja3;

	@Override
	@Transactional
	public ArrayList<HtgbVO> getAllGb() {
		// TODO Auto-generated method stub
		return hotelkaja3.getAllGb();
	}

	@Override
	public void insertWriting(HtgbVO htgbVO) {
		// TODO Auto-generated method stub
		hotelkaja3.insertWriting(htgbVO);
	}
	
	
}


	
	

