package com.multi.mvc.tour.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ImageVO {
	int iNo;
	int contentid;
	String imgname;
	String orignimgurl;
	String smallimageurl;
}
