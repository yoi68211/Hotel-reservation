package com.empmanage.hotel.service.dao;

import com.empmanage.hotel.vo.HtdateVO;

public interface HtdateDAO {

	void insertDate(HtdateVO htdateVO);
	
	int getReservationNum(HtdateVO htdateVO);
}
