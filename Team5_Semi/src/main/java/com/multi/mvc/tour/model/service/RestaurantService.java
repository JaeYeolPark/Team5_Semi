package com.multi.mvc.tour.model.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.RestaurantMapper;
import com.multi.mvc.tour.model.vo.Restaurant;

@Service
public class RestaurantService {
	
	@Autowired
	RestaurantMapper mapper;
	
	public List<Restaurant> selectRestaurantAll(){
		return mapper.selectRestaurantAll();
	}
	
	public int getRestaurantCount(Map<String, Object> param) {
		return mapper.selectRestaurantCount(param);
	}
	
	public List<Restaurant> getRestaurantList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectRestaurantList(param);
	}

	public Restaurant findByContentId(int id) {
		Restaurant restaurant = mapper.findByContentId(id);
		return restaurant;
	}

	public List<Restaurant> getMainRestList() {
		return mapper.getMainRestList();
	}
	
}
