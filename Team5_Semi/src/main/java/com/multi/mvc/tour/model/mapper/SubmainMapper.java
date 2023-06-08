package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.tour.model.vo.Submain;

@Mapper
public interface SubmainMapper {
	List<Submain> selectSubmainAll();
	int selectSubmainCount(Map<String, Object> map);
	List<Submain> selectSubmainList(Map<String, Object> map);
	Submain findByContentId(int id);
}
