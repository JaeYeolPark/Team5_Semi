package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.tour.model.vo.Tourspot;

@Mapper
public interface TourspotMapper {
	List<Tourspot> selectTourspotAll();
	int selectTourspotCount(Map<String, Object> map);
	List<Tourspot> selectTourspotList(Map<String, Object> map);
	Tourspot findByContentId(int id);
}
