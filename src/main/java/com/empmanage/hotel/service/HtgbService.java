
package com.empmanage.hotel.service;

import java.util.ArrayList;

import com.empmanage.hotel.vo.HtgbVO;

public interface HtgbService {


	ArrayList<HtgbVO> getAllGb();
	
	void insertWriting(HtgbVO htgbVO);
	
}
