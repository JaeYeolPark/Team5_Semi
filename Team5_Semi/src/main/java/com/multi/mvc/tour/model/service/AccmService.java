package com.multi.mvc.tour.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.tour.model.mapper.AccmMapper;
import com.multi.mvc.tour.model.vo.Accommodation;

@Service
public class AccmService {
	
	@Autowired
	AccmMapper mapper;
	
	public List<Accommodation> selectAccmAll(){
		return mapper.selectAccmAll();
	}
	
}
