package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.Accommodation;

@Mapper
public interface AccmMapper {
	List<Accommodation> selectAccmAll();
	int selectAccmCount(Map<String, Object> map);
	

}
