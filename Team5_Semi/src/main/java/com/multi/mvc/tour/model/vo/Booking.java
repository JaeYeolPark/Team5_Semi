package com.multi.mvc.tour.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Booking {
	private int bkNo         ;
	private int mNO          ;
	private int contentId    ;
	private Date startDate   ;
	private Date endDate     ;
	private int headCount    ;
}
