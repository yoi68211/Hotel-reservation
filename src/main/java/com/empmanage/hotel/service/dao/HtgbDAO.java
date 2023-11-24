package com.empmanage.hotel.service.dao;

import java.util.ArrayList;

import com.empmanage.hotel.vo.HtgbVO;

public interface HtgbDAO {

	ArrayList<HtgbVO> getAllGb();
	
	void insertWriting(HtgbVO htgbVO);
}
