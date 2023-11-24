package com.empmanage.hotel.service.dao;

import com.empmanage.hotel.vo.HtloginVO;

public interface HtloginDAO {

	HtloginVO getlogin(HtloginVO htloginVO);	

	void hotelJoin(HtloginVO htloginVO);
	
	void userDelete(HtloginVO htloginVO);
}
