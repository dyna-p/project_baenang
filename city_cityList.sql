DROP TABLE CITY;

CREATE TABLE CITY(
    CITYID VARCHAR2(200) NOT NULL,
	CITYNAME VARCHAR2(20),
    LONGITUDE VARCHAR2(100),
    LATITUDE VARCHAR2(100)
);

DROP SEQUENCE CITYID_SEQ;

CREATE SEQUENCE CITYID_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOMAXVALUE
  NOCYCLE;

INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '서울', '37.5665', '126.978');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '부산', '35.1796', '129.0756');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '대구', '35.8714', '128.6014');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '인천', '37.4563', '126.7052');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '대전', '36.3504', '127.3845');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '울산', '35.5384', '129.3114');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '수원', '37.2636', '127.0286');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '성남', '37.4221', '127.1382');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '의정부', '37.7386', '127.0471');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '안양', '37.3943', '126.9568');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '부천', '37.5034', '126.7662');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '광명', '37.4785', '126.8666');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '평택', '36.994', '127.0977');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '동두천', '37.9019', '127.0604');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '안산', '37.3215', '126.8308');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '고양', '37.6584', '126.8327');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '과천', '37.4266', '126.9896');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '구리', '37.5948', '127.1293');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '남양주', '37.6369', '127.2152');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '오산', '37.1494', '127.0773');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '시흥', '37.3806', '126.8033');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '군포', '37.3624', '126.9358');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '의왕', '37.3444', '126.9678');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '하남', '37.5566', '127.2129');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '용인', '37.2411', '127.1775');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '파주', '37.7599', '126.685');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '이천', '37.2734', '127.4356');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '안성', '37.0107', '127.2706');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '김포', '37.6154', '126.7156');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '화성', '37.1995', '126.8312');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '양주', '37.7744', '127.0452');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '포천', '37.8943', '127.2007');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '여주', '37.2984', '127.6373');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '연천', '38.0971', '127.0674');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '가평', '37.8312', '127.5096');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '양평', '37.4915', '127.4871');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '춘천', '37.8815', '127.7295');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '원주', '37.3496', '127.9395');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '강릉', '37.751', '128.8761');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '동해', '37.5089', '129.1211');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '태백', '37.1611', '128.9874');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '속초', '38.2046', '128.5649');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '삼척', '37.4473', '129.1686');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '홍천', '37.6907', '127.897');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '횡성', '37.4881', '128.2027');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '영월', '37.1839', '128.4643');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '평창', '37.3705', '128.3954');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '정선', '37.3788', '128.6568');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '철원', '38.1469', '127.3036');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '화천', '38.105', '127.7064');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '양구', '38.1055', '127.9897');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '인제', '38.071', '128.1698');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '고성', '38.3876', '128.4678');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '양양', '38.0805', '128.623');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '청주', '36.6372', '127.4889');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '충주', '36.9704', '127.9286');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '제천', '37.1499', '128.2143');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '청원', '36.6385', '127.4471');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '보은', '36.4871', '127.7198');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '옥천', '36.3086', '127.5749');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '영동', '36.1751', '127.784');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '증평', '36.7963', '127.5867');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '진천', '36.8558', '127.4335');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '괴산', '36.8134', '127.7919');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '음성', '36.9401', '127.6885');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '단양', '36.9865', '128.3711');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '천안', '36.8065', '127.152');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '공주', '36.45', '127.1207');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '보령', '36.3489', '126.5921');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '아산', '36.7924', '127.0048');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '서산', '36.7769', '126.4504');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '논산', '36.1976', '127.0986');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '계룡', '36.2691', '127.2401');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '금산', '36.1053', '127.4793');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '연기', '36.9836', '127.0628');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '부여', '36.2726', '126.9105');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '서천', '36.076', '126.6846');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '청양', '36.4591', '126.7989');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '홍성', '36.6008', '126.6644');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '예산', '36.6881', '126.8414');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '태안', '36.7429', '126.2987');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '당진', '37.0553', '126.5078');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '전주', '35.8242', '127.1474');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '군산', '35.981', '126.7376');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '익산', '35.9409', '126.9543');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '정읍', '35.5695', '126.8513');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '남원', '35.4103', '127.3903');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '김제', '35.805', '126.8886');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '완주', '35.9218', '127.1775');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '진안', '35.791', '127.4363');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '무주', '36.0022', '127.6607');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '장수', '35.6469', '127.5168');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '임실', '35.6131', '127.287');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '순창', '35.3541', '127.1405');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '고창', '35.4311', '126.511');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '부안', '35.7304', '126.7348');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '목포', '34.8101', '126.3923');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '여수', '34.7604', '127.6622');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '순천', '34.948', '127.4875');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '나주', '35.0102', '126.7113');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '광양', '34.9401', '127.6954');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '담양', '35.3191', '127.3957');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '곡성', '35.2228', '127.2867');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '구례', '35.2083', '127.4593');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '고흥', '34.6115', '127.2752');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '보성', '34.7788', '127.0749');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '화순', '35.0615', '126.9906');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '장흥', '34.6874', '126.9027');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '강진', '34.6436', '126.7681');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '해남', '34.5706', '126.5837');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '영암', '34.8068', '126.6888');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '무안', '34.9923', '126.4782');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '함평', '35.5122', '126.5202');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '영광', '35.3656', '126.5052');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '장성', '35.2998', '126.7837');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '완도', '34.3129', '126.738');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '진도', '34.4838', '126.265');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '신안', '34.54', '126.3169');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '포항', '36.0188', '129.3529');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '경주', '35.8562', '129.2242');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '김천', '36.1459', '128.1098');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '안동', '36.5686', '128.725');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '구미', '36.1213', '128.3456');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '영주', '36.826', '128.6272');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '영천', '35.977', '128.9458');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '상주', '36.4087', '128.1543');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '문경', '36.5946', '128.1883');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '경산', '35.8561', '128.5911');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '군위', '36.2391', '128.5625');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '의성', '36.355', '128.6937');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '청송', '36.4354', '129.056');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '영양', '36.6613', '129.1209');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '영덕', '36.4154', '129.4094');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '청도', '35.6419', '128.7413');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '고령', '35.7175', '128.2467');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '성주', '35.918', '128.2857');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '칠곡', '36.0287', '128.3294');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '예천', '36.6473', '128.449');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '봉화', '36.8909', '128.7463');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '울진', '36.9912', '129.4122');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '울릉', '37.4851', '130.899');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '창원', '35.2272', '128.6811');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '진주', '35.1796', '128.1076');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '통영', '34.8544', '128.4262');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '사천', '35.0767', '128.0474');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '김해', '35.1798', '128.8567');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '밀양', '35.4923', '128.7474');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '거제', '34.8804', '128.6162');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '양산', '35.3272', '129.0081');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '의령', '35.3075', '128.2658');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '함안', '35.272', '128.4055');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '창녕', '35.5425', '128.4997');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '고성', '34.9754', '128.3174');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '남해', '34.8416', '127.8928');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '하동', '35.1284', '127.7587');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '산청', '35.4158', '127.8797');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '함양', '35.5218', '127.7416');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '거창', '35.686', '127.909');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '합천', '35.5667', '128.169');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '제주', '33.4996', '126.5312');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '서귀포', '33.2479', '126.5093');
INSERT INTO CITY (CITYID, CITYNAME, LATITUDE, LONGITUDE) VALUES (CITYID_SEQ.NEXTVAL, '광주', '35.1595', '126.8526');


COMMIT;