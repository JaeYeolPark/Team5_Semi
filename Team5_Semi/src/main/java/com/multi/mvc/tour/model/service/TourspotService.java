package com.multi.mvc.tour.model.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.TourspotMapper;
import com.multi.mvc.tour.model.vo.Booking;
import com.multi.mvc.tour.model.vo.Tourspot;

@Service
public class TourspotService {
	
	@Autowired
	TourspotMapper mapper;
	
	public List<Tourspot> selectTourspotAll(){
		return mapper.selectTourspotAll();
	}
	
	public int getTourspotCount(Map<String, Object> param) {
		return mapper.selectTourspotCount(param);
	}
	
	public List<Tourspot> getTourspotList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectTourspotList(param);
	}

	public Tourspot findByContentId(int id) {
		Tourspot tourspot = mapper.findByContentId(id);
		return tourspot;
	}

}
