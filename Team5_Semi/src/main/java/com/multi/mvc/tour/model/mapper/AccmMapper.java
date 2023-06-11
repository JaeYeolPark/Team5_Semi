package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Booking;

@Mapper
public interface AccmMapper {
	List<Accommodation> selectAccmAll();
	int selectAccmCount(Map<String, Object> map);
	List<Accommodation> selectAccmList(Map<String, Object> map);
	Accommodation findByContentId(int id);
	int insertBooking(Booking booking);
	List<Accommodation> getMainAccmList();
}
