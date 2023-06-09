package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.AccmMapper;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Booking;

@Service
public class AccmService {
	
	@Autowired
	AccmMapper mapper;
	
	public List<Accommodation> selectAccmAll(){
		return mapper.selectAccmAll();
	}
	
	public int getAccmCount(Map<String, Object> param) {
		return mapper.selectAccmCount(param);
	}
	
	public List<Accommodation> getAccmList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectAccmList(param);
	}

	public Accommodation findByContentId(int id) {
		Accommodation accm = mapper.findByContentId(id);
		return accm;
	}

	public int setBooking(Booking booking) { 
		return mapper.insertBooking(booking);
	}

	public List<Accommodation> getMainAccmList() {
		return mapper.getMainAccmList();
	}
	
}
