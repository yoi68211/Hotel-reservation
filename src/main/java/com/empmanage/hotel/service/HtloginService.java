
package com.empmanage.hotel.service;

import com.empmanage.hotel.vo.HtloginVO;

public interface HtloginService {


	HtloginVO getlogin(HtloginVO htloginVO);
	
	void joinHotel(HtloginVO htloginVO);
	
	void userDelete(HtloginVO htloginVO);
	
	
}
