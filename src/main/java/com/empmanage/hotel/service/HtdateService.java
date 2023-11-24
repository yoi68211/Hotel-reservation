
package com.empmanage.hotel.service;

import com.empmanage.hotel.vo.HtdateVO;

public interface HtdateService {

	void insertDate(HtdateVO htdateVO);
	
	int getReservationNum(HtdateVO htdateVO);
	
}
