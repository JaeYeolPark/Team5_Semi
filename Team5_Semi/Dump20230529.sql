-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tourapi
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation` (
  `contentid` int NOT NULL,
  `contenttypeid` varchar(100) DEFAULT NULL,
  `homepage` varchar(200) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `firstimage` varchar(200) DEFAULT NULL,
  `firstimage2` varchar(200) DEFAULT NULL,
  `areacode` varchar(100) DEFAULT NULL,
  `sigungucode` varchar(100) DEFAULT NULL,
  `cat1` varchar(100) DEFAULT NULL,
  `cat2` varchar(100) DEFAULT NULL,
  `cat3` varchar(100) DEFAULT NULL,
  `addr1` varchar(100) DEFAULT NULL,
  `addr2` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `mapx` varchar(100) DEFAULT NULL,
  `mapy` varchar(100) DEFAULT NULL,
  `overview` varchar(2000) DEFAULT NULL,
  `mlevel` varchar(100) DEFAULT NULL,
  `accomcountlodging` varchar(100) DEFAULT NULL,
  `benikia` varchar(100) DEFAULT NULL,
  `checkintime` varchar(100) DEFAULT NULL,
  `checkouttime` varchar(100) DEFAULT NULL,
  `chkcooking` varchar(100) DEFAULT NULL,
  `foodplace` varchar(100) DEFAULT NULL,
  `goodstay` varchar(100) DEFAULT NULL,
  `hanok` varchar(100) DEFAULT NULL,
  `infocenterlodging` varchar(100) DEFAULT NULL,
  `parkinglodging` varchar(100) DEFAULT NULL,
  `pickup` varchar(100) DEFAULT NULL,
  `roomcount` varchar(100) DEFAULT NULL,
  `reservationlodging` varchar(100) DEFAULT NULL,
  `reservationurl` varchar(100) DEFAULT NULL,
  `roomtype` varchar(100) DEFAULT NULL,
  `scalelodging` varchar(100) DEFAULT NULL,
  `subfacility` varchar(100) DEFAULT NULL,
  `barbecue` varchar(100) DEFAULT NULL,
  `beauty` varchar(100) DEFAULT NULL,
  `beverage` varchar(100) DEFAULT NULL,
  `bicycle` varchar(100) DEFAULT NULL,
  `campfire` varchar(100) DEFAULT NULL,
  `fitness` varchar(100) DEFAULT NULL,
  `karaoke` varchar(100) DEFAULT NULL,
  `publicbath` varchar(100) DEFAULT NULL,
  `publicpc` varchar(100) DEFAULT NULL,
  `sauna` varchar(100) DEFAULT NULL,
  `seminar` varchar(100) DEFAULT NULL,
  `sports` varchar(100) DEFAULT NULL,
  `refundregulation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (142785,'32','<a href=\"http://www.hotelkarak.com\" target=\"_blank\" title=\"새창 : 가락관광호텔 홈페이지로 이동\">http://www.hotelkarak.com</a>','02-400-6641~3','가락관광호텔',NULL,NULL,'1','18','B02','B0201','B02010100','서울특별시 송파구 송파대로28길 5','(가락동)','05719','127.1166298703','37.4966565128','가락 관광호텔은 동양 최대의 가락동농수산물시장과 인접해 있고 주변에 잠실 롯데월드, 올림픽공원, 삼성의료원, 현대아산병원, 가든파이브, 코엑스, 도심 공항 터미널, 잠실경기장 등이 근거리에 위치하여 비즈니스 스포츠 문화 건강의 중심에 있다.','6',NULL,'0','14:00','12:00','불가','Cafe, Restaurant','0','0','02-400-6641~3','주차 가능(발렛파킹 무료)',NULL,'71실','02-400-6641~3','','스탠다드 더블/트윈, 디럭스 더블, 주니어 스위트, 로얄 스위트','지상 8층/지하 3층',NULL,'0','0','0','0','0','0','0','0','0','0','0','0',NULL),(1884337,'32','<a href=\"http://www.iyc.or.kr\" target=\"_blank\" title=\"새창 : 국제청소년센터 유스호스텔 홈페이지로 이동\">http://www.iyc.or.kr</a>','02-2667-0535<br />02-2667-0157','국제청소년센터 유스호스텔',NULL,NULL,'1','4','B02','B0201','B02010600','서울특별시 강서구 금낭화로 234',NULL,'07508','126.8095860629','37.5794052857','서울 강서구 방화동에 위치한 국제청소년센터 유스호스텔은 277명이 숙박할 수 있는 시설과 300명 규모의 국제회의장, 연회장 및 세미나실 등이 갖춰져 있다. 수영장, 헬스장, 에어로빅장이 있는 스포츠센터 시설이 있어 숙박 고객, 청소년 및 주민들을 위한 생활체육 활동의 장으로 이용되고 있다.','6','277명','0','14:00','10:00',NULL,'레스토랑, 카페&매점','0','0','02-2667-0535<br />02-2667-0157','주차 가능',NULL,'61실','02-2667-0535<br />02-2667-0157','','2인실, 3인실, 4인실, 6인실, 10인실',NULL,'세미나실, 수영장, 휘트니스센터, 스피닝룸, 수영용품점, 산책로','0','0','0','0','0','0','0','0','0','0','0','0',NULL),(2049484,'32','<a href=\"http://www.facebook.com/mon.oncle.a.seoul\" target=\"_blank\" title=\"새창 : 게스트하우스 서울삼촌 홈페이지로 이동\">http://www.facebook.com/mon.oncle.a.seoul</a>','010-9753-5432','게스트하우스서울삼촌[한국관광 품질인증/Korea Quality]','http://tong.visitkorea.or.kr/cms/resource/59/2049459_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/59/2049459_image2_1.jpg','1','23','B02','B0201','B02010100','서울특별시 종로구 계동4길 15-3','(계동)','03057','126.9874919685','37.5826080955','\n서울삼촌은 종로구 계동의 북촌한옥마을 내에 있는 한옥 게스트하우스다. 드라마 촬영지로 외국인에게 유명한 서울중앙고등학교 맞은편 골목, 낮은 언덕 위에 자리했다. 지리적 특성 덕분에 거실에 앉으면 언덕 아래로 북촌 한옥들의 지붕이 너울너울 이어지는 전망을 감상할 수 있다. 특히 해가 질 무렵에는 한옥마을에 노을이 내리는 장면이 고즈넉하기 그지없다. 멀리에는 인왕산이 보이며 주변은 한가하고 조용한 편이다. 덕분에 서울삼촌은 서울 한복판에 있지만 도시 같지 않은 여유와 정취가 가득한 곳이다. <br />\n서울삼촌은 2015년에 새로 지은 한옥이라 매우 깨끗하며 이용하기 편리하다. 기와지붕, 마당, ‘ㅁ’자 구조의 한옥 등 전체적인 모양은 전형적인 양반집 모습을 그대로 살렸지만, 주방과 화장실은 현대식으로 만들었다. 여러 사람이 드나드는 거실에는 큰 테이블과 의자들을 두어 입식으로 사용할 수 있으며, 거실 한쪽에 현대식 주방이 있다. 주방에는 싱크대, 냉장고, 세탁기 등이 있는데 누구나 사용할 수 있다.<br />\n객실은 총 4개가 있다. 그중 2개는 작은 방이라 1~2명이 머물기 적당하고, 큰 방에는 최대 5명까지 묵을 수 있다. 방의 내부는 특별한 장식 없이 한옥의 멋을 단순하게 잘 살려놓았는데, 천장의 서까래는 그대로 노출했고, 전통적인 이부자리와 세간, 장식품을 두었다. 이곳 전체를 빌리거나 장기간 투숙할 시 할인 혜택이 있다.<br />\n서울삼촌은 ‘ㅁ’자 구조의 한옥 덕에 모든 방에 묵는 손님들이 마당에서 만난다. 마당이 넓진 않지만 몇 명이 앉아 담소를 나누거나 바비큐를 해먹기는 충분하다. 카페 같은 거실도 이 집의 인기 장소이다. 거실의 큰 테이블에 손님들이 둘러앉아 여행 이야기를 나누거나 아침 식사를 하기도 한다. 이렇듯 함께 어울리기 좋은 한옥을 만든 것은 순전히 주인장의 뜻이다. 여행을 좋아하고 사람을 좋아하는 주인장이 평생 즐기면서 일하기 위해 이곳 서울삼촌을 만들었다. 서울삼촌이라는 이름처럼 이곳에 오는 사람들에게 삼촌과 같은 존재이고 싶었단다. 말 뿐만이라 아니라 실제로 서울삼촌은 손님들과 등산도 하고 같이 동네 구경을 다닌다. 주인이 직접 만들어 제공하는 아침 식사는 정갈하고 맛있기로 입소문이 났으니 아침을 든든하게 챙겨 먹고 여행을 즐겨보자.\n<br>','6','10명','0','15:00','11:00','가능(공동 부엌 사용 가능)','있음','0','0','010-9753-5432','없음','가능','4실','가능(010-9753-5432, www.facebook.com/mon.oncle.a.seoul)','',NULL,'약 139㎡, 1층','바비큐시설(5만원)','1','0','0','0','0','0','0','0','0','0','0','0','※ OTA 사이트로 예매 시, 해당 사이트의 환불 규정에 따름'),(2528117,'32','http://blog.naver.com/ysh230','010-7390-5901','교대게스트하우스[한국관광 품질인증/Korea Quality]','http://tong.visitkorea.or.kr/cms/resource/81/2529081_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/81/2529081_image3_1.jpg','1','15','B02','B0201','B02011100','서울특별시 서초구 사임당로17길 116 서초삼성래미안아파트',NULL,'06635','127.0190443994','37.4933329219','교대게스트하우스는 서울 교대역 인근의 서초삼성래미안 아파트 내에 있다. 주로 인근 학원에서 공부하기 위해 한국을 방문하는 외국인 학생이 장기간 머물곤 한다. 일반 가정집 내의 일부 공간으로, 두 개의 객실이 각각 분리되어 있고, 각 방에는 컴퓨터와 책상이 있다. 주방과 욕실, 거실과 TV, 소파는 함께 사용하고, 세탁은 무료로 제공된다.','6','4','0','14:00','11:00','가능','없음','0','0','02-3486-7373, 010-7390-5901','가능','가능','2','가능(02-3486-7373, 010-7390-5901)','','양실','105㎡, 단층','PC, 세탁실, 산책로','0','0','0','1','0','0','0','0','0','0','0','0','입실 전 취소 시 환불'),(2572777,'32','<a href=\"https://abnb.me/c1gANiJsZR\"target=\"_blank\">https://abnb.me/c1gANiJsZR<a/>','010-5155-9995','게더링 앳 홍대1(게더링앳홍대)','http://tong.visitkorea.or.kr/cms/resource/93/2571393_image2_1.PNG','http://tong.visitkorea.or.kr/cms/resource/93/2571393_image2_1.PNG','1','13','B02','B0201','B02011100','서울특별시 마포구 동교로47길 3','(연남동) 201호','03983','126.9248537833','37.5632120044','#본 업소는 외국인관광 도시민박업으로 외국인만 이용이 가능하며 내국인은 이용할 수 없습니다.<br><br>연남동 중심지의 접근성 좋은 위치에 있다. 홍대역(공항철도)에서 도보 7분 거리이며 지하철, 공항철도, 버스를 이용하기 편리하다. 테마를 가진 여러 카페, 맛집, 연남 센트럴 파크, 테마를 가진 여러 카페, 맛집과도 가깝다.',NULL,NULL,'0','15:00','11:00',NULL,NULL,'0','0','010-5155-9995','가능(1대)','불가능','6','전화, 에어비앤비','',NULL,'48평',NULL,'1','0','0','0','0','0','0','0','0','0','0','0',NULL),(2572779,'32','<a href=\"https://www.airbnb.co.kr/users/89282583/listings?user_id=89282583&s=50\">https://www.airbnb.co.kr/users/89282583/listings?user_id=89282583&s=50</a>','010-5155-9995','게더링 앳 홍대2(게더링앳홍대)','http://tong.visitkorea.or.kr/cms/resource/93/2571393_image2_1.PNG','http://tong.visitkorea.or.kr/cms/resource/93/2571393_image2_1.PNG','1','13','B02','B0201','B02011100','서울특별시 마포구 동교로47길 3','(연남동) 301호','03983','126.9248537833','37.5632120044','#본 업소는 외국인관광 도시민박업으로 외국인만 이용이 가능하며 내국인은 이용할 수 없습니다.<br><br>게더링 앳 홍대는 멋진 루프탑이 있고 편안한 퀸 사이즈 침대 및 2층 침대는 호텔식 침구류로 마련되어 있다.',NULL,'16명','0','15:00','11:00',NULL,'없음','0','0','010-5155-9995','가능(중형이하 1대)','불가능','1','전화, 에어비앤비','',NULL,'77.85m2, 1개 층(3층)',NULL,'1','0','0','0','0','0','0','0','0','0','0','0',NULL),(2574118,'32','http://www.gnstayhill.com/','010-2746-7882','강남스테이힐(Gangnam Stay Hill)','http://tong.visitkorea.or.kr/cms/resource/28/2573328_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/28/2573328_image2_1.jpg','1','1','B02','B0201','B02011100','서울특별시 강남구 테헤란로13길 65','(역삼동)1, 2층','06127','127.0301236613','37.5034291706','#본 업소는 외국인관광 도시민박업으로 외국인만 이용이 가능하며 내국인은 이용할 수 없습니다.<br><br>모든 객실은 편안하고 안락함을 선사해 준다. 많은 객실에서 편안함을 더하기 위해 무선 인터넷(무료), 에어컨, 난방, 선풍기, 유선 인터넷(무료) 등을 제공한다. 본 숙소 투숙 기간 다양한 여가 시설 등을 이용할 수 있다. 아주 좋은 위치에 있고 우수한 시설을 구비한 본 숙소(강남 스테이 힐 게스트하우스)는 서울에서의 잊을 수 없는 추억을 위한 완벽한 장소이다.',NULL,'16명','0','15:00','11:00',NULL,'공용주방 취사가능','0','0','010-2746-7882',NULL,NULL,'5','홈페이지, 전화','',NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','0',NULL),(2574220,'32',NULL,'010-5417-1977','게스트하우스 류가(Guest House Ryuga)','http://tong.visitkorea.or.kr/cms/resource/07/2573607_image2_1.JPG','http://tong.visitkorea.or.kr/cms/resource/07/2573607_image2_1.JPG','1','13','B02','B0201','B02011100','서울특별시 마포구 독막로7길 19','(서교동)','04047','126.9187769621','37.5489302228','#본 업소는 외국인관광 도시민박업으로 외국인만 이용이 가능하며 내국인은 이용할 수 없습니다.<br><br>합정역과 상수역 중간에 위치하여 홍대 상권 중심에 있고, 새로 리모델링 하여 시설이 깨끗하다. 조식으로 우유, 식빵, 버터, 잼, 시리얼 등을 제공하고 있으며 편안한 휴식을 위해 최선을 다하고 있다.',NULL,'29명','0','15:00','11:00',NULL,NULL,'0','0','010-5417-1977','불가능','불가능','9','예약사이트, 전화, SNS','',NULL,NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','0',NULL),(2607620,'32','www.guesthousegangnam.com','010-8282-3580','게스트하우스강남',NULL,NULL,'1','1','B02','B0201','B02011100','서울특별시 강남구 압구정로34길 33','(신사동,현대맨션) 22-2-2','06023','127.0309007260','37.5261154387','#본 업소는 외국인관광 도시민박업으로 외국인만 이용이 가능하며 내국인은 이용할 수 없습니다.<br><br>\n\n게스트하우스 강남은 고급스럽고 편안한 여성 전용 부티크 게스트 하우스로 서울 강남에서도 교통의 중심부인 압구정동에 위치하고 있다.',NULL,'4명','0','14:00-24:00','11:00',NULL,'없음','0','0','070-8118-3587','가능(1대)','불가능','2','070-8118-3587','',NULL,'67평, 1개 층(2층에 위치)',NULL,'0','0','0','0','0','0','0','0','0','0','0','0',NULL),(2950469,'32','https://www.instagram.com/gowoon110','0504-0904-2464','고운[한국관광 품질인증/Korea Quality]','http://tong.visitkorea.or.kr/cms/resource/08/2948908_image2_1.JPG','http://tong.visitkorea.or.kr/cms/resource/08/2948908_image3_1.JPG','1','23','B02','B0201','B02011600','서울특별시 종로구 북촌로12길 35-1',NULL,'03056','126.9858393299','37.5830052419','‘높은 구름’을 의미하는 ‘고운’은 북촌 한옥마을 가회동 높은 언덕길에 자리한 한옥스테이다. 넓은 통창을 통해 보이는 인왕산, 기와 마을, 도시가 과거와 현재가 공존하는 독특한 전경을 선사한다. 북촌의 볼거리, 즐길거리, 먹거리를 즐긴 뒤 숙소로 돌아와, 바깥마당이 보이는 욕조에 한방 쑥 입욕제를 풀어 반신욕을 하거나, 빔프로젝터로 편안하게 영화를 보며 휴식을 누릴 수 있다.','6','8',NULL,'16:00','11:00','가능','없음',NULL,NULL,'0504-0904-2464','불가','불가','2','가능(0504-0904-2464)','','양실',NULL,NULL,'0','0','0','0','0','0','0','0','0','0','0','0','이용 20일전까지	총 결제금액의 100% 환불,이용 7일전까지	총 결제금액의 50% 환불, 이용 6일전부터 변경 / 환불 불가');
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `contentid` int NOT NULL,
  `contenttypeid` varchar(100) DEFAULT NULL,
  `homepage` varchar(200) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `firstimage` varchar(200) DEFAULT NULL,
  `firstimage2` varchar(200) DEFAULT NULL,
  `areacode` varchar(100) DEFAULT NULL,
  `sigungucode` varchar(100) DEFAULT NULL,
  `cat1` varchar(100) DEFAULT NULL,
  `cat2` varchar(100) DEFAULT NULL,
  `cat3` varchar(100) DEFAULT NULL,
  `addr1` varchar(100) DEFAULT NULL,
  `addr2` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `mapx` varchar(100) DEFAULT NULL,
  `mapy` varchar(100) DEFAULT NULL,
  `overview` varchar(2000) DEFAULT NULL,
  `mlevel` varchar(100) DEFAULT NULL,
  `chkcreditcardfood` varchar(100) DEFAULT NULL,
  `discountinfofood` varchar(100) DEFAULT NULL,
  `firstmenu` varchar(100) DEFAULT NULL,
  `infocenterfood` varchar(100) DEFAULT NULL,
  `kidsfacility` varchar(100) DEFAULT NULL,
  `opendatefood` varchar(200) DEFAULT NULL,
  `opentimefood` varchar(100) DEFAULT NULL,
  `packing` varchar(100) DEFAULT NULL,
  `parkingfood` varchar(100) DEFAULT NULL,
  `reservationfood` varchar(100) DEFAULT NULL,
  `restdatefood` varchar(200) DEFAULT NULL,
  `scalefood` varchar(100) DEFAULT NULL,
  `seat` varchar(100) DEFAULT NULL,
  `smoking` varchar(100) DEFAULT NULL,
  `treatmenu` varchar(100) DEFAULT NULL,
  `lcnsno` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1052741,'39',NULL,'02-990-0107','가문','http://tong.visitkorea.or.kr/cms/resource/34/1181034_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/34/1181034_image3_1.jpg','1','3','A05','A0502','A05020400','서울특별시 강북구 노해로 13',NULL,'01080','127.0226983297','37.6368246468','※ 영업시간 11:00 ~ 21:00\n\n수유중앙시장 부근의 중국음식점이다. 주출입구에 약 3cm 정도의 높이 차이가 있고 좌석이 의자와 테이블로 되어 있다.','6','가능',NULL,'코스요리','02-990-0107','0',NULL,'11:00 ~ 21:00','가능','주차 가능','전화 예약 문의 (02-990-0107)','연중무휴',NULL,NULL,'모두 금연석','코스요리 / 자장면 / 짬뽕 / 굴짬뽕 / 탕수육 외','19920053185'),(2679033,'39',NULL,'02-322-3302','가미우동','http://tong.visitkorea.or.kr/cms/resource/64/2676864_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/64/2676864_image2_1.jpg','1','13','A05','A0502','A05020300','서울특별시 마포구 홍익로2길 23',NULL,'04055','126.9238735556','37.5547407496','일본인 오너셰프가 요리하는 집이다. 서울특별시 마포구에 있는 일식전문점이다. 대표메뉴는 우동이다.','6','없음',NULL,'우동','02-322-3302','0',NULL,'12:00-15:00',NULL,NULL,NULL,'월요일',NULL,NULL,'금연','우동 / 새우튀김','20100069052'),(2682774,'39',NULL,'02-849-9288','가마로강정 신길삼거리','http://tong.visitkorea.or.kr/cms/resource/38/2682638_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/38/2682638_image2_1.jpg','1','20','A05','A0502','A05020100','서울특별시 영등포구 영등포로64길 11',NULL,'07317','126.9172780766','37.5142453371','다양한 종류의 소스를 선택 할 수 있다. 대표메뉴는 닭강정이다. 서울특별시 영등포구에 있는 한식전문점이다.','6','없음',NULL,'닭강정','02-849-9288','0',NULL,'14:00-23:30','가능',NULL,'가능','매주 일요일',NULL,NULL,'금연','닭강정 / 치킨',NULL),(2685271,'39',NULL,'02-3426-6460','가마골','http://tong.visitkorea.or.kr/cms/resource/54/2684754_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/54/2684754_image2_1.jpg','1','2','A05','A0502','A05020100','서울특별시 강동구 고덕로38길 63',NULL,'05257','127.1427398175','37.5517283673','솥뚜껑 위에서 구워 먹는 삼겹살이 유명한 곳이다. 서울특별시 강동구에 있는 한식전문점이다. 대표메뉴는 삼겹살이다.','6','없음',NULL,'삼겹살','02-3426-6460','0',NULL,'11:00-02:00',NULL,NULL,'가능','연중무휴',NULL,NULL,'금연','삼겹살 / 갈매기살','20010120485'),(2685272,'39',NULL,'02-364-3948','가미분식','http://tong.visitkorea.or.kr/cms/resource/85/2684785_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/85/2684785_image2_1.jpg','1','14','A05','A0502','A05020100','서울특별시 서대문구 이화여대8길 2',NULL,'03767','126.9459519870','37.5587101279','40년 넘게 운영되는 이화여대 근처 분식집이다. 서울특별시 서대문구에 있는 한식전문점이다. 대표메뉴는 치즈떡볶이다.','6','없음',NULL,'치즈떡볶이','02-364-3948','0',NULL,'10:00-21:30',NULL,'가능','가능','명절',NULL,NULL,'금연','치즈떡볶이 / 우동','19740066026'),(2757617,'39',NULL,NULL,'가락골마산아구찜',NULL,NULL,'1','18','A05','A0502','A05020100','서울특별시 송파구 송이로19길 3','(가락동)','05714','127.1217599348','37.4975120620','고추 된장 무침, 자른 김 등 반찬은 단출 하지만 푸짐하게 나오는 찜 요리와 맛으로 가락동에서 소문난 맛집이다. 매운 찜 요리를 다 먹고 나서 먹는 볶음밥도 인기다. 소수로 오는 손님들을 위한 2인 상 낙지볶음과 갈치조림 돌솥밥도 많이 찾는다. 3호선 경찰병원역 1번 출구에서 경찰병원을 지나 가락현대 아파트 맞은편 코너에 있다.','6','가능',NULL,'아구찜 낙지찜 아구탕','02-409-6665','0',NULL,'11:30 ~ 22:00<br>Break time 16:00 ~ 17:30','가능','불가 (인근 가락1공영주차장 이용요망)<br>(30분 1,500원)','전화문의','일요일',NULL,NULL,NULL,'해산물','19890114483'),(2849631,'39',NULL,NULL,'가막골흑염소요리전문점','http://tong.visitkorea.or.kr/cms/resource/29/2849629_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/29/2849629_image3_1.jpg','1','4','A05','A0502','A05020100','서울특별시 강서구 화곡로56길 37-11',NULL,'07657','126.8518857611','37.5516842628','가막골흑염소요리전문점은 서울특별시 강서구 화곡동에 있다. 건물 앞마당에 자체 주차장이 있어 자동차로 방문하기 편리하다. 매장 안에는 단체석이 준비돼 있고 개별 룸도 갖추고 있어 가족 식사나 단체 회식이 가능하다. 방목한 염소만을 매일 산지에서 공급받아 요리하는 흑염소 요리 전문점으로 대표 메뉴에는 흑염소 갈비 전골, 흑염소 수육, 흑염소 전골이 있고 흑염소탕과 직접 남은 양념에 볶아 먹을 수 있는 볶음밥이 있다. 주변에 우장산과 검덕산이 있어 등산 코스와 연계하기 좋다.','6','가능',NULL,'흑염소길비전골,흑염소수육,흑염소전골','02-2608-5255','0',NULL,'매일 10:00~22:00','가능','있음','예약 가능','연중무휴',NULL,NULL,NULL,'흑염소탕, 볶음밥','19990076340'),(2869760,'39',NULL,NULL,'가담','http://tong.visitkorea.or.kr/cms/resource/54/2869754_image2_1.JPG','http://tong.visitkorea.or.kr/cms/resource/54/2869754_image3_1.JPG','1','1','A05','A0502','A05020400','서울특별시 강남구 언주로167길 35',NULL,'06022','127.0302729961','37.5264209476','가담은 3호선 압구정역 3번 출구 글로벌사이버 서울학습관 인근에 있다. 매장 앞에 주자 공간이 있어 주차하기 편리하다. 브레이크 타임이 끝난 오후 5시 입장엔 대기 명단 등록이 없어 예약이 편리하다. 세트 메뉴는 스페셜세트, 로열세트, 에이스 세트, 베스트세트, 페밀리 세트로 나뉘어 있다. 스페셜세트는 3가지 냉채, 게살 해물 요리, 야향동고, 유린기 소고기 고추탕수육, 식사로 구성되어 있다. 식사류는 잡탕밥, 유산슬 밥, 잡채밥, 마파두부덮밥, 짬뽕밥, 새우볶음밥, 짜장밥, 짜장면, 삼선짬뽕, 삼선울면, 광동면, 쇠고기탕면, 기스면 등 다양하게 준비되어 있다. 식당 인근에 도산공원, 잠원한강공원이 있어 둘러보기 좋다.','6','가능',NULL,'게살해물요리, 고추탕수육','02-545-5163','0',NULL,'매일 11:20 ~ 21:30 (브레이크타임 15:00~17:00)','가능','있음','가능','연중무휴',NULL,NULL,NULL,'난자완스, 가담정식, 특색냉채, 오향장육, 깐풍기, 라조기','19990106403'),(2871024,'39',NULL,NULL,'가나돈까스의집','http://tong.visitkorea.or.kr/cms/resource/08/2871008_image2_1.JPG','http://tong.visitkorea.or.kr/cms/resource/08/2871008_image3_1.JPG','1','1','A05','A0502','A05020100','서울특별시 강남구 언주로 608',NULL,'06102','127.0377755568','37.5099674377','합정역 8번 출구에서 도보 5분 거리에 있는 곰탕으로 유명한 음식점이다. 대표 메뉴는 곰탕과 수육무침이다. 그 외에도 육회, 궁중전, 특속대국, 수육, 곱창전골 등 다양한 메뉴를 맛볼 수 있다. 모든 식자재를 국산만 사용한다. 미쉐린 가이드에 3년 연속으로 선정되었다. 하루에 탕 100인분만 준비해 재료 소진 시에 영업을 종료한다. 단체석이 마련되어 있어 모임이나 회식하기에 좋다. 7~8대 정도의 주차 공간이 있어서 차량을 가지고 방문하기에 편리하다. 근처에 공원이 많아서 식사 후 산책하거나 합정동의 다른 명소를 방문하기 좋다.','6','가능',NULL,'돈까스, 정식까스','02-511-6247','0',NULL,'월~토  09:00 ~ 21:00','가능','있음(발렛주차)','예약 가능','일요일',NULL,NULL,NULL,'돈까스, 정식까스, 육개장, 생선까스, 알밥, 회덮밥','20200109069'),(2871443,'39',NULL,NULL,'가람국시','http://tong.visitkorea.or.kr/cms/resource/32/2871032_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/32/2871032_image3_1.jpg','1','1','A05','A0502','A05020100','서울특별시 강남구 언주로135길 13',NULL,'06053','127.0341090296','37.5168415735','가람국시는 7호선 학동역 10번 출구 서울세관 관세박물관 인근에 있다. 매장 앞에 2대만 주차할 수 있고 발렛파킹 서비스(유료)를 받을 수 있다. 매장 내부는 한옥 스타일로 꾸며져 있다. 중앙엔 테이블 석이 배치되어 있고 양옆으로 룸이 있다. 매장 내부가 넓어 각종 모임을 하기에 적합하고, 유명인 단골 맛집으로도 유명하다. 대표 메뉴는 콩국수와 멸치 칼국수다. 이외에 전 종류도 많은데, 녹두전과는 달리 하나씩 집어먹을 수 있는 야채고기전, 굴전, 매생이전, 생선전 등은 반반 주문도 가능하다. 식당 인근에 서울세관 관세박물관, 논현 소나무공원, 개나리공원, 학동어린이공원 등이 있어 식사 전후로 가벼운 산책을 할 수 있다.','6','가능',NULL,'멸치국수, 콩국수','02-541-8200','0',NULL,'11:30 ~ 22:00(브레이크타임 토, 일 15:00 ~ 17:00)','가능','있음(발렛주차) / 발렛비 3,000원','예약 가능, 네이버예약','연중무휴',NULL,NULL,NULL,'멸치국수, 콩국수, 소고기국밥, 낙지볶음, 녹두전, 소고기칼국수, 생선전','20010105454');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourimage`
--

DROP TABLE IF EXISTS `tourimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourimage` (
  `iNo` int NOT NULL AUTO_INCREMENT,
  `contentid` int DEFAULT NULL,
  `imgname` varchar(1000) DEFAULT NULL,
  `originimgurl` varchar(1000) DEFAULT NULL,
  `smallimageurl` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`iNo`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourimage`
--

LOCK TABLES `tourimage` WRITE;
/*!40000 ALTER TABLE `tourimage` DISABLE KEYS */;
INSERT INTO `tourimage` VALUES (1,2733967,'가회동성당_조형물','http://tong.visitkorea.or.kr/cms/resource/49/2780549_image2_1.png','http://tong.visitkorea.or.kr/cms/resource/49/2780549_image2_1.png'),(2,2733967,'가회동성당_전경','http://tong.visitkorea.or.kr/cms/resource/54/2780554_image2_1.png','http://tong.visitkorea.or.kr/cms/resource/54/2780554_image2_1.png'),(3,2733967,'가회동성당_비석','http://tong.visitkorea.or.kr/cms/resource/55/2780555_image2_1.png','http://tong.visitkorea.or.kr/cms/resource/55/2780555_image2_1.png'),(4,1116925,'갈산근린공원_2','http://tong.visitkorea.or.kr/cms/resource/63/2612063_image2_1.bmp','http://tong.visitkorea.or.kr/cms/resource/63/2612063_image2_1.bmp'),(5,1116925,'갈산근린공원_3','http://tong.visitkorea.or.kr/cms/resource/64/2612064_image2_1.bmp','http://tong.visitkorea.or.kr/cms/resource/64/2612064_image2_1.bmp'),(6,1116925,'갈산근린공원_4','http://tong.visitkorea.or.kr/cms/resource/66/2612066_image2_1.bmp','http://tong.visitkorea.or.kr/cms/resource/66/2612066_image2_1.bmp'),(7,1116925,'갈산근린공원_5','http://tong.visitkorea.or.kr/cms/resource/67/2612067_image2_1.bmp','http://tong.visitkorea.or.kr/cms/resource/67/2612067_image2_1.bmp'),(8,294439,'서울_감로암(서울)02','http://tong.visitkorea.or.kr/cms/resource/86/2031886_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/86/2031886_image3_1.jpg'),(9,294439,'서울_감로암(서울)03','http://tong.visitkorea.or.kr/cms/resource/87/2031887_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/87/2031887_image3_1.jpg'),(10,294439,'서울_감로암(서울)04','http://tong.visitkorea.or.kr/cms/resource/88/2031888_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/88/2031888_image3_1.jpg'),(11,294439,'서울_감로암(서울)05','http://tong.visitkorea.or.kr/cms/resource/89/2031889_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/89/2031889_image3_1.jpg'),(12,294439,'서울_감로암(서울)06','http://tong.visitkorea.or.kr/cms/resource/90/2031890_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/90/2031890_image3_1.jpg'),(13,264570,'서울_강남_강남04','http://tong.visitkorea.or.kr/cms/resource/09/1984609_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/09/1984609_image3_1.jpg'),(14,264570,'서울_강남_강남05','http://tong.visitkorea.or.kr/cms/resource/10/1984610_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/10/1984610_image3_1.jpg'),(15,264570,'강남역거리','http://tong.visitkorea.or.kr/cms/resource/66/2648766_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/66/2648766_image3_1.jpg'),(16,264570,'강남역거리','http://tong.visitkorea.or.kr/cms/resource/68/2648768_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/68/2648768_image3_1.jpg'),(17,264570,'강남역거리','http://tong.visitkorea.or.kr/cms/resource/69/2648769_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/69/2648769_image3_1.jpg'),(18,264570,'강남역거리','http://tong.visitkorea.or.kr/cms/resource/71/2648771_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/71/2648771_image3_1.jpg'),(19,264570,'강남역거리','http://tong.visitkorea.or.kr/cms/resource/72/2648772_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/72/2648772_image3_1.jpg'),(20,264570,'강남역거리','http://tong.visitkorea.or.kr/cms/resource/67/2648767_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/67/2648767_image3_1.jpg'),(21,264570,'강남역거리','http://tong.visitkorea.or.kr/cms/resource/70/2648770_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/70/2648770_image3_1.jpg'),(22,264570,'강남역거리','http://tong.visitkorea.or.kr/cms/resource/73/2648773_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/73/2648773_image3_1.jpg'),(23,1949905,'인터컨티넨탈 서울코엑스','http://tong.visitkorea.or.kr/cms/resource/58/1798158_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/58/1798158_image3_1.jpg'),(24,1949905,'인터컨티넨탈 서울코엑스','http://tong.visitkorea.or.kr/cms/resource/59/1798159_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/59/1798159_image3_1.jpg'),(25,127377,'서울시 강동구 강동예찬시비02','http://tong.visitkorea.or.kr/cms/resource/63/720463_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/63/720463_image3_1.jpg'),(26,127377,'서울시 강동구 강동예찬시비03','http://tong.visitkorea.or.kr/cms/resource/64/720464_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/64/720464_image3_1.jpg'),(27,127377,'서울시 강동구 강동예찬시비06','http://tong.visitkorea.or.kr/cms/resource/65/720465_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/65/720465_image3_1.jpg'),(28,127377,'서울시 강동구 강동예찬시비07','http://tong.visitkorea.or.kr/cms/resource/66/720466_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/66/720466_image3_1.jpg'),(29,809490,'강서습지생태공원(강서한강공원)02','http://tong.visitkorea.or.kr/cms/resource/21/1805621_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/21/1805621_image3_1.jpg'),(30,809490,'강서습지생태공원(강서한강공원)04','http://tong.visitkorea.or.kr/cms/resource/26/1805626_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/26/1805626_image3_1.jpg'),(31,809490,'서울_강서_강서습지생태공원01','http://tong.visitkorea.or.kr/cms/resource/78/1894478_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/78/1894478_image3_1.jpg'),(32,809490,'서울_강서_강서습지생태공원04','http://tong.visitkorea.or.kr/cms/resource/84/1894484_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/84/1894484_image3_1.jpg');
/*!40000 ALTER TABLE `tourimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourspot`
--

DROP TABLE IF EXISTS `tourspot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourspot` (
  `contentid` int NOT NULL,
  `contenttypeid` varchar(100) DEFAULT NULL,
  `homepage` varchar(200) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `firstimage` varchar(200) DEFAULT NULL,
  `firstimage2` varchar(200) DEFAULT NULL,
  `areacode` varchar(100) DEFAULT NULL,
  `sigungucode` varchar(100) DEFAULT NULL,
  `cat1` varchar(100) DEFAULT NULL,
  `cat2` varchar(100) DEFAULT NULL,
  `cat3` varchar(100) DEFAULT NULL,
  `addr1` varchar(100) DEFAULT NULL,
  `addr2` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `mapx` varchar(100) DEFAULT NULL,
  `mapy` varchar(100) DEFAULT NULL,
  `overview` varchar(2000) DEFAULT NULL,
  `mlevel` varchar(100) DEFAULT NULL,
  `accomcount` varchar(100) DEFAULT NULL,
  `chkbabycarriage` varchar(100) DEFAULT NULL,
  `chkcreditcard` varchar(100) DEFAULT NULL,
  `chkpet` varchar(100) DEFAULT NULL,
  `expagerange` varchar(100) DEFAULT NULL,
  `expguide` varchar(100) DEFAULT NULL,
  `heritage1` varchar(100) DEFAULT NULL,
  `heritage2` varchar(100) DEFAULT NULL,
  `heritage3` varchar(100) DEFAULT NULL,
  `infocenter` varchar(100) DEFAULT NULL,
  `opendate` varchar(200) DEFAULT NULL,
  `parking` varchar(100) DEFAULT NULL,
  `restdate` varchar(200) DEFAULT NULL,
  `useseason` varchar(100) DEFAULT NULL,
  `usetime` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourspot`
--

LOCK TABLES `tourspot` WRITE;
/*!40000 ALTER TABLE `tourspot` DISABLE KEYS */;
INSERT INTO `tourspot` VALUES (127377,'12','<a href=\"http://culture.gangdong.go.kr/\" target=\"_blank\" title=\"강동 문화관광 사이트로 이동\">http://culture.gangdong.go.kr</a>',NULL,'강동예찬시비','http://tong.visitkorea.or.kr/cms/resource/60/720460_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/60/720460_image3_1.jpg','1','2','A02','A0201','A02010700','서울특별시 강동구 천호동',NULL,'05246','127.1207004140','37.5426873535','조선 초기의 서거정 선생이 지은 해질 무렵의 한강변과 강동지역의 아름다운 전원풍경을 노래한 시를 옛 광나루였던 광진교 입구에 한강의 쌍돛배의 모습으로 강동예찬시비를 건립하였다. 강동예찬시비는 한강을 조망하는 훌륭한 쉼터이며, 또한 지방자치시대를 맞아 지역주민들이 고장에 대한 자긍심과 애향심을 간직할 수 있는 한강변의 문화명소이다.<br>','6',NULL,'없음','없음','없음',NULL,NULL,'0','0','0','02-3425-5253',NULL,NULL,NULL,NULL,'24시간'),(128961,'12','<a href=\"http://ispaland.co.kr/\"target=\"_blank\" title=\"새창:강변스파랜드\">http://ispaland.co.kr/</a>',NULL,'강변스파랜드','http://tong.visitkorea.or.kr/cms/resource/13/1984613_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/13/1984613_image3_1.jpg','1','6','A02','A0202','A02020400','서울특별시 광진구 구의강변로 45','(구의동)','05049','127.0916116181','37.5348266305','강변스파랜드는 9917.4m²(3,000평) 규모의 지하 1,200m 게르마늄 탄산 암반유황천의 재래식 불한증막 및 사우나로 한국 최초, 최고의 발맛사지탕을 무료로 이용할 수 있으며, 한차원 높은 문화공간 체험이 가능한 곳이다. 후불제 정산시스템을 도입하여 락커키로 편리하게 시설들을 사용할 수 있으며, 지하 2층은 사우나, 지하 1층은 공용 찜질방이다. 세련된 인테리어와 유황 성분이 함유된 사우나 물은 매끄럽고 피부에도 좋다고 한다. 재래식 소나무장작 불한증막, 넓은 남.녀 공용홀을 비롯하여 숯방, 소금방, 은피라미드방, 황토불가마 등 다양한 찜질방과 야외 공기와 연결되는 발맛사지탕과 이글루체험방, 옥냉방 그외 휴식공간으로 산소방, 생잣나무방, 황토토굴방이 있으며 스넥코너, 아이스크림코너,한식당, 분식당, 헬스장, 에어로빅실, 영화방, 만화대여점(보드게임대여점, 어린이방), 매점, 스포츠마사지, 네일아트, 피부관리실, 좌욕실 등 각종 편의시설이 구비되어 있다.<br>','6',NULL,'불가','가능','불가',NULL,NULL,'0','0','0','02-455-3737',NULL,'주차 가능','연중무휴',NULL,'24시간<br />\n주간 : 05:00~20:00 / 야간 20:00~05:00'),(264570,'12','<a href=\"http://www.gangnam.go.kr/main.do\" target=\"_blank\" title=\"새창:  강남구청 \">http://www.gangnam.go.kr/main.do</a>',NULL,'강남','http://tong.visitkorea.or.kr/cms/resource/08/1984608_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/08/1984608_image3_1.jpg','1','1','A02','A0204','A02040800','서울특별시 강남구 역삼동','(역삼동)','06232','127.0281573537','37.4970465429','강남역 주변은 강남 지역에 있어서 교통의 핵심인 곳이다. 강남대로를 중심으로 동쪽으로는 테헤란로가 뻗어 있어 잠실 방향과 이어지며, 서쪽으로는 사당 방면으로 연결된다. 교보타워 사거리에서 좌측으로는 고속터미널과 이어져 노량진 및 서부 서울로 연결되며, 그대로 북쪽으로는 한남대교를 거쳐 강북으로 연결된다. 그리고 남쪽으로는 양재를 거쳐 분당 등의 신도시와 성남시 등 수도권으로 연결된다. 많은 유동인구가 강남역으로 모이는 이유는 강남역 부근이 만남을 위한 약속장소로 적합하기 때문이다. 각종 모임이나 행사 또는 개인적인 만남을 갖기에 좋은 지역적, 상권적 특성을 지니고 있다. 따라서 평일에는 주로 저녁 시간대, 주말의 경우는 낮부터 강남역 10, 11번 출구, 롯데시네마 앞(구,시티극장), 지오다노 매장 앞 등에서 많은 사람들로 붐비는 것을 흔히 볼 수 있다.<br /><br />편리한 교통과 다수의 패션관련 매장, 극장, 대형서점 등 소비를 하기 좋은 이러한 환경이 거리가 먼 지역의 소비자들까지 강남역으로 모이게 하고 있다. 강남구에서는 내ㆍ외국인 관광객에게 종합관광서비스는 물론, 강남구의 우수 인프라인 의료와 한류에 대하여 보고, 느끼고, 즐길 수 있는 체험형 관광거점시설인 강남관광정보센터를 건립ㆍ운영하고 있으며, 강남관광정보센터는 서울과 강남의 주요 관광명소를 안내하고 관광객 편의시설을 갖춘 ‘종합관광안내센터’와 강남구 특화 병원과 진료 프로그램을 소개하고 체험할 수 있는 ‘메디컬투어센터’,  한류 스타를 활용하여 다양한 한류체험이 가능한 ‘한류체험관’으로 구성되어있다.<br>','6',NULL,'없음','없음','없음',NULL,NULL,'0','0','0','02-3423-5114',NULL,'주차 가능',NULL,NULL,'24시간'),(294439,'12',NULL,NULL,'감로암(서울)','http://tong.visitkorea.or.kr/cms/resource/85/2031885_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/85/2031885_image3_1.jpg','1','23','A02','A0201','A02010800','서울특별시 종로구 율곡로23길 16','(충신동)','03099','127.0066015446','37.5753148419',' 동대문에서 대학로로 들어가는 율곡로 대로변에 자그마한 사찰이 있다. 그 이름도 특이하게 목마른 중생에게 구제의 감로를 준다는\'감로암\'이다. 도심 속 삭막한 빌딩 숲 사이에 아직 개발되지 않은 주택가 그 곳에 정말 도심에서 보기 힘든 자그마한 암자가 있다. 규모로 보나 사세로 보나 정말 암자의 수준이지만, 그 역사는 벌써 100여년이 흘렀다. 가람은 대로변에서 주택가로 나 있는 골목길을 따라 들어서면 보이는 곳에, 여느 주택과 별반 차이없이 건물을 지어 불상을 봉안하고 예배하고 있다. 하지만 여법하게 산문을 만들고 단청을 하며, 기와를 엮어 고풍스런 가람의 멋을 느끼게 한다.옛부터 관음영험도량으로 알려진 감로암은 동네 어르신들, 특히 할머니들의 다담방, 기도처로 알려져 있다. 감로암은 사찰의 이름처럼 누군가 구제 받을 수 있고, 고통에서 벗어날 수 있는 감로가 있는 곳이다. 지금은 마시지 못하지만 보타전 아래에는 여전히 그 옛날 감로의 맛을 느끼게 했던 감로가 흐르고 있다.<br>','6',NULL,'없음','없음','불가',NULL,NULL,'0','0','0','02-762-5861',NULL,NULL,'연중무휴',NULL,NULL),(809490,'12','<a href=\"http://hangang.seoul.go.kr/archives/46788\" target=\"_blank\" title=\"강서한강공원 사이트로 이동\">http://hangang.seoul.go.kr/archives/46788</a>',NULL,'강서습지생태공원','http://tong.visitkorea.or.kr/cms/resource/81/1894481_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/81/1894481_image3_1.jpg','1','4','A01','A0101','A01010500','서울특별시 강서구 양천로27길 279-23','(방화동)','07518','126.8171490732','37.5860879769','방화대교 남쪽 끝에서 행주대교 남쪽 끝 사이 한강 둔치에 있는 생태공원이다. 서울시 생태관광명소 30개소 중 하나로 선정된 강서습지생태공원은&nbsp;담수지·저습지 등을 조성하고 습생·수생식물을 심은 습지공원으로 2002년 7월에 개원되었다. 하중도, 자연관찰로, 습초지 등 습지 생태계를 복원하여 하천의 자연정화 기능을 제공한다. 갈대밭·버드나무숲이 어우러진 습지를 가로질러 두 곳의 탐방로와 철새 조망대 등이 있다. 여름과 겨울에는 철새들이 찾아들며, 다양한 생태학습 프로그램을 운영하고 있다. 또한 방화대교 하부, 가족 피크닉장 앞, 행주대교 하부에는 체력단련기구 등을 갖춰 시민의 여가활동과 스포츠 공간으로서의 기능을 하고있다.\n* 면적 : 370,000㎡','6',NULL,'가능','없음','없음',NULL,'생태학습프로그램 운영 (생태학교, 관찰교실)<br>\n생태교육 프로그램 참여를 원하는 경우에는 미리 인터넷 예약 필. (한강사업본부 홈페이지-예약하기-생태프로그램)<br>','0','0','0','한강사업본부 강서안내센터 02-3780-0621~3','2002년 7월 1일','있음(160대, 장애인구역 6대 포함)','연중무휴',NULL,'일출 후부터 일몰 전까지 자유롭게 이용 가능'),(1116925,'12','<a href=\"http://www.yangcheon.go.kr/\" target=\"_blank\" title=\"새창: 양천구 \">http://www.yangcheon.go.kr/</a>',NULL,'갈산근린공원','http://tong.visitkorea.or.kr/cms/resource/62/2612062_image2_1.bmp','http://tong.visitkorea.or.kr/cms/resource/62/2612062_image2_1.bmp','1','19','A02','A0202','A02020700','서울 양천구 신정동 162-56',NULL,'08104','126.8684105358','37.5061176314','대체로 산세가 둥근 양천구의 다른 산들과는 달리 갈산은 동쪽 부분이 벼랑처럼 깍인 절경을 뽐낸다. 안양천의 오랜 침식작용으로 산 정상이 칼날처럼 변한 것으로 \'칼산\'이라는 이름으로 불리다가 \'갈산\'으로 순화되었다. 갈산 입구에는 어린이교통공원이 들어서 있고, 중턱에는 중심광장과 산책로 등의 쉼터 그리고 정상에는 전망대가 있어 양천을 한눈에 감상할 수 있다. 갈산 정상에는 \'갈산정\'과 함께 그 옆으로 우리나라 최초의 \'대삼각본점\'이 설치되어 있다. 이 삼각점은 모든 측량의 기준이 되는 중요한 국가시설물로 1910년 6월 우리나라 최초로 토지조사 사업을 위해 설치한 측량기준점으로 서울시 미래유산으로 지정된 양천구의 중요한 문화유산이다.<br>','6',NULL,'없음','없음','없음',NULL,NULL,'0','0','0','양천구청 공원녹지과 02-2620-3576',NULL,'있음','연중개방',NULL,NULL),(1949905,'12','<a href=\"https://www.seoulcitytourbus.co.kr/\" target=\"_blank\" title=\"새창: 서울 시티투어버스\">https://www.seoulcitytourbus.co.kr/</a>',NULL,'강남 시티투어 (트롤리버스)','http://tong.visitkorea.or.kr/cms/resource/75/1258175_image2_1.jpg','http://tong.visitkorea.or.kr/cms/resource/75/1258175_image3_1.jpg','1','1','A02','A0203','A02030400','서울특별시 강남구 압구정로 161',NULL,'06001','127.0264344408','37.5269874797','강남의 주요 관광명소를 순환하는 셔틀버스로, 2016년 5월부터 세빛섬 정거장에서 강북을 여행하는 서울시티투어버스로 환승이 가능하도록 통합 운영 중이다.<br>','6',NULL,'없음','없음','없음',NULL,NULL,'0','0','0','02-777-6090',NULL,NULL,NULL,NULL,NULL),(2456536,'12',NULL,NULL,'강남 마이스 관광특구',NULL,NULL,'1','1','A02','A0202','A02020200','서울특별시 강남구 영동대로 513','(삼성동)','06164','127.0591318945','37.5118092746','일찍이 무역센터가 자리잡으며 국제 교류의 메카로 손꼽혀온 강남 삼성동 일대는, 세계에서 모여든 최첨단 비즈니스맨에게 한국을 알리는 창구 역할을 해왔다. 여기에 1990년대부터 강남 특유의 젊은 문화가 유입되면서 무역센터 일대는 비즈니스의 장이자 젊은 문화의 랜드마크라는 복합적인 성격을 띠며 발전했다. 2014년 싸이의 \'강남스타일\' 열풍과 더불어 국제교류 비즈니스 산업과 한류문화의 공생을 강화하기 위해 이 일대가 강남마이스 관광특구로 지정되었다. 강남 마이스 관광특구는 무역센터 일대로, 전시와 컨벤션, 세미나, 국제 전시회, 컨퍼런스 등이 이어지는 코엑스를 중심으로 자리잡고 있고, 백화점, 호텔, 면세점, 도심공항터미널이 유기적으로 물려 있어, 국내뿐만이 아니라 외국인 관광객이 끊이지 않는다. 특히 가수 싸이의 \'강남스타일\'의 세계적인 열풍 이후 문화공간으로서의 가치가 다시 한번 주목받고 있다. 최근에는 말춤을 형상화한 \'강남스타일 랜드마크\'가 조성되어, 새로운 명물로 떠오르고 있다. 또한 매년 C페스티벌도 열리고 있다. 한류 문화 콘텐츠를 중심에 둔 C 페스티벌은 가요부터 회화와 조각,만화, 캐릭터 상품, 게임 등 복합 문화가 어우러진 축제의 장으로서, 강남 마이스를 대표하는 축제다. 앞으로 강남 마이스 관광특구 일대는 한국판 타임스 스퀘어인 ‘KoMAD(Korea Media Art District(가칭))’로 조성된다. 최첨단 디스플레이를 활용해 홀로그램과 증강현실을 체험하고, 건물 외벽에 설치된 초대형 LED 전광판에서 표출되는 미디어아트의 장관과 화려한 광고를 감상할 수 있다.<br /><br />\n* 강남 마이스 관광특구 현황<br />1) 벙위 / 서울특별시 강남구 삼성동 일대<br />2) 면적 / 190,386㎡<br />3) 관광특구 지정일 / 2014년 12월 29일<br /><br />* 강남 마이스 관광특구 시설 현황<br />코엑스전시컨벤션센터, 코엑스 아쿠아리움, 코엑스 아티움, 메가박스, 현대백화점, 그랜드인터콘티넨탈호텔, 도심공항터미널 등<br>','6',NULL,'없음','없음','없음',NULL,NULL,'0','0','0','02-3445-0111',NULL,'주차장 이용 가능',NULL,NULL,NULL),(2733967,'12','<a href=\"https://gahoe.or.kr\" target=\"_blank\" title=\"새창 : 가회동성당 사이트로 이동\">https://gahoe.or.kr</a>',NULL,'가회동성당','http://tong.visitkorea.or.kr/cms/resource/61/2780561_image2_1.png','http://tong.visitkorea.or.kr/cms/resource/61/2780561_image2_1.png','1','23','A02','A0201','A02010900','서울특별시 종로구 북촌로 57','(가회동)','03052','126.9846616856','37.5820858828','가회동성당이 위치한 북촌 일대는 최초의 선교사 주문모(周文謨, 야고보) 신부가 조선에 밀입국하여 1795년 4월 5일 부활 대축일에 최인길(崔仁吉, 마티아)의 집에서 조선 땅에서의 ‘첫 미사’를 집전한 지역이다. 본당 관할구역은 주문모 신부가 강완숙(姜完淑, 골롬바)의 집에 숨어 지내면서 사목활동을 펼쳤던 지역으로서 한국 교회사에서 매우 중요한 의미가 있다.<br>정식으로 본당이된 것은 1949년이고, 이후 1954년에 성전이 완공되었다. 하지만 성전이 낡아 2011년부터 옛 성전을 허물고 현재의 새 성전을 짓게 되었다. 2013년 11월 21일 준공되었고, 준공 3일 후인 24일(그리스도왕대축일)에 입주하여 입주미사를 봉헌하였다. 현재의 동서양 건축양식이 어우러진 새 성전은 과거의 역사를 되살리고자 2014년 4월 20일 부활대축일에 서울교구장 염수정 추기경님에 의하여 축성되었다. (출처 : 가회동성당 홈페이지)<br>* 서울대교구 성지 순례길 2코스 (생명의 길) 시작 성지<br>* 2017년 배우 김태희와 가수 비가 결혼한 장소로도 유명','6',NULL,'없음','불가','불가',NULL,'성지순례 - 서울대교구 성지 순례길 2코스 (생명의 길)','0','0','0','02-763-1570',NULL,'가능 (지하 주차장)','월요일 (미사 후)',NULL,'주일 미사 - 06:00 (새벽미사) 11:00 (교중미사)  18:00 (학생미사) <br>\n토요일 - 18:00 (저녁 주일미사) <br>\n평일 미사 - 월요일 06:00 화요일 19:00 수요일 10:00 목요일 19:00 금요일 10:00 <br>  \n[월요일은 휴무로 미사 후 성당 문을 닫음]'),(2763807,'12',NULL,NULL,'간데메공원',NULL,NULL,'1','11','A02','A0202','A02020700','서울특별시 동대문구 서울시립대로2길 59','(답십리동)','02595','127.0490977427','37.5728520032','서울 동대문구 답십리 천변에 위치한 근린공원이다. 어린이 놀이터와 연못, 팔각정 정자, 장미 넝쿨 터널, 소나무 쉼터, 산책로까지 작지만 아기자기하게 조성된 공원이다. 농구장과 배드민턴장도 있다. 전매청 자리를 공원으로 조성하면서 옛날 답십리 일대 간데메(中山) 자연 부락 마을의 토박이 이름을 따서 간데메공원이라 이름을 정했다고 한다.','6',NULL,'없음','없음','가능',NULL,NULL,'0','0','0','02-2249-2770',NULL,'예정(2021년 12월 간데메공원 지하주차장)',NULL,NULL,'00:00 ~ 24:00');
/*!40000 ALTER TABLE `tourspot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29  8:50:12
