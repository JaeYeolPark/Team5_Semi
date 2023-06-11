package com.multi.mvc.tour.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.tour.model.mapper.ImageMapper;
import com.multi.mvc.tour.model.vo.ImageVO;

@Service
public class ImageService {
	
	@Autowired
	ImageMapper mapper;

	public List<ImageVO> getImageList(int id) {
		return mapper.getImageList(id);
	}

}
