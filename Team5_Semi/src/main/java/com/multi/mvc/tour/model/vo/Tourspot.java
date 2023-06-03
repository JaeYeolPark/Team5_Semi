package com.multi.mvc.tour.model.vo;

public class Tourspot extends TourVO {

	  public String accomcount 		;	// varchar(100) DEFAULT NULL,
	  public String chkbabycarriage ;	// varchar(100) DEFAULT NULL,
	  public String chkcreditcard 	;	// varchar(100) DEFAULT NULL,
	  public String chkpet 			;	// varchar(100) DEFAULT NULL,
	  public String expagerange 	;	// varchar(100) DEFAULT NULL,
	  public String expguide 		;	// varchar(100) DEFAULT NULL,
	  public String heritage1 		;	// varchar(100) DEFAULT NULL,
	  public String heritage2 		;	// varchar(100) DEFAULT NULL,
	  public String heritage3 		;	// varchar(100) DEFAULT NULL,
	  public String infocenter 		;	// varchar(100) DEFAULT NULL,
	  public String opendate 		;	// varchar(200) DEFAULT NULL,
	  public String parking 		;	// varchar(100) DEFAULT NULL,
	  public String restdate 		;	// varchar(200) DEFAULT NULL,
	  public String useseason 		;	// varchar(100) DEFAULT NULL,
	  public String usetime 		;	// varchar(200) DEFAULT NULL,
	  
	public Tourspot() {
		super();
	}
	
	public Tourspot(int contentid, String contenttypeid, String homepage, String tel, String title, String firstimage,
			String firstimage2, String areacode, String sigungucode, String cat1, String cat2, String cat3,
			String addr1, String addr2, String zipcode, String mapx, String mapy, String overview, String mlevel) {
		super(contentid, contenttypeid, homepage, tel, title, firstimage, firstimage2, areacode, sigungucode, cat1, cat2, cat3,
				addr1, addr2, zipcode, mapx, mapy, overview, mlevel);
	}
	
	public Tourspot(String accomcount, String chkbabycarriage, String chkcreditcard, String chkpet, String expagerange,
			String expguide, String heritage1, String heritage2, String heritage3, String infocenter, String opendate,
			String parking, String restdate, String useseason, String usetime) {
		super();
		this.accomcount = accomcount;
		this.chkbabycarriage = chkbabycarriage;
		this.chkcreditcard = chkcreditcard;
		this.chkpet = chkpet;
		this.expagerange = expagerange;
		this.expguide = expguide;
		this.heritage1 = heritage1;
		this.heritage2 = heritage2;
		this.heritage3 = heritage3;
		this.infocenter = infocenter;
		this.opendate = opendate;
		this.parking = parking;
		this.restdate = restdate;
		this.useseason = useseason;
		this.usetime = usetime;
	}
	
	@Override
	public String toString() {
		return "Tourspot [accomcount=" + accomcount + ", chkbabycarriage=" + chkbabycarriage + ", chkcreditcard="
				+ chkcreditcard + ", chkpet=" + chkpet + ", expagerange=" + expagerange + ", expguide=" + expguide
				+ ", heritage1=" + heritage1 + ", heritage2=" + heritage2 + ", heritage3=" + heritage3 + ", infocenter="
				+ infocenter + ", opendate=" + opendate + ", parking=" + parking + ", restdate=" + restdate
				+ ", useseason=" + useseason + ", usetime=" + usetime + "]";
	}
	
	public String getAccomcount() {
		return accomcount;
	}
	public void setAccomcount(String accomcount) {
		this.accomcount = accomcount;
	}
	public String getChkbabycarriage() {
		return chkbabycarriage;
	}
	public void setChkbabycarriage(String chkbabycarriage) {
		this.chkbabycarriage = chkbabycarriage;
	}
	public String getChkcreditcard() {
		return chkcreditcard;
	}
	public void setChkcreditcard(String chkcreditcard) {
		this.chkcreditcard = chkcreditcard;
	}
	public String getChkpet() {
		return chkpet;
	}
	public void setChkpet(String chkpet) {
		this.chkpet = chkpet;
	}
	public String getExpagerange() {
		return expagerange;
	}
	public void setExpagerange(String expagerange) {
		this.expagerange = expagerange;
	}
	public String getExpguide() {
		return expguide;
	}
	public void setExpguide(String expguide) {
		this.expguide = expguide;
	}
	public String getHeritage1() {
		return heritage1;
	}
	public void setHeritage1(String heritage1) {
		this.heritage1 = heritage1;
	}
	public String getHeritage2() {
		return heritage2;
	}
	public void setHeritage2(String heritage2) {
		this.heritage2 = heritage2;
	}
	public String getHeritage3() {
		return heritage3;
	}
	public void setHeritage3(String heritage3) {
		this.heritage3 = heritage3;
	}
	public String getInfocenter() {
		return infocenter;
	}
	public void setInfocenter(String infocenter) {
		this.infocenter = infocenter;
	}
	public String getOpendate() {
		return opendate;
	}
	public void setOpendate(String opendate) {
		this.opendate = opendate;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getRestdate() {
		return restdate;
	}
	public void setRestdate(String restdate) {
		this.restdate = restdate;
	}
	public String getUseseason() {
		return useseason;
	}
	public void setUseseason(String useseason) {
		this.useseason = useseason;
	}
	public String getUsetime() {
		return usetime;
	}
	public void setUsetime(String usetime) {
		this.usetime = usetime;
	}
	  
}
