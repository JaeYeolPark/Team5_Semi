package com.multi.mvc.tour.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.Accommodation;

@Mapper
public interface AccmMapper {
	List<Accommodation> selectAccmAll();
	

}
