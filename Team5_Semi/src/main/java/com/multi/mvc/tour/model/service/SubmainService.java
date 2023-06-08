package com.multi.mvc.tour.model.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.SubmainMapper;
import com.multi.mvc.tour.model.mapper.TourspotMapper;
import com.multi.mvc.tour.model.vo.Submain;

@Service
public class SubmainService {
	
	@Autowired
	SubmainMapper mapper;
	
	public List<Submain> selectSubmainAll(){
		return mapper.selectSubmainAll();
	}
	
	public int getSubmainCount(Map<String, Object> param) {
		return mapper.selectSubmainCount(param);
	}
	
	public List<Submain> getSubmainList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectSubmainList(param);
	}

	public Submain findByContentId(int id) {
		Submain submain = mapper.findByContentId(id);
		return submain;
	}

}
