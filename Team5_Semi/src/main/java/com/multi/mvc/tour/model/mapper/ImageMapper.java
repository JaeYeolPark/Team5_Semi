package com.multi.mvc.tour.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.ImageVO;

@Mapper
public interface ImageMapper {
	List<ImageVO> getImageList(int id);
}
