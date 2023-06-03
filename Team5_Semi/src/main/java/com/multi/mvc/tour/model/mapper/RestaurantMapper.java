package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.tour.model.vo.Restaurant;

@Mapper
public interface RestaurantMapper {
	List<Restaurant> selectRestaurantAll();
	int selectRestaurantCount(Map<String, Object> map);
	List<Restaurant> selectRestaurantList(Map<String, Object> map);
	Restaurant findByContentId(int id);
}
