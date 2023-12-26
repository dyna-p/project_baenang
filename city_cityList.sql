DROP TABLE CITY;

CREATE TABLE CITY(
    CITYID VARCHAR2(200) NOT NULL,
	CITYNAME VARCHAR2(20)
);

CREATE SEQUENCE CITYID_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOMAXVALUE
  NOCYCLE;

INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','서울');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','부산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','대구');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','인천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','대전');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','울산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','수원');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','성남');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','의정부');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','안양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','부천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','광명');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','평택');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','동두천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','안산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','고양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','과천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','구리');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','남양주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','오산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','시흥');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','군포');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','의왕');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','하남');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','용인');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','파주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','이천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','안성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','김포');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','화성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','양주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','포천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','여주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','연천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','가평');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','양평');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','춘천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','원주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','강릉');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','동해');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','태백');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','속초');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','삼척');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','홍천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','횡성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','영월');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','평창');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','정선');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','철원');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','화천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','양구');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','인제');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','고성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','양양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','청주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','충주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','제천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','청원');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','보은');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','옥천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','영동');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','증평');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','진천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','괴산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','음성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','단양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','천안');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','공주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','보령');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','아산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','서산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','논산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','계룡');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','금산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','연기');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','부여');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','서천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','청양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','홍성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','예산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','태안');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','당진');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','전주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','군산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','익산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','정읍');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','남원');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','김제');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','완주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','진안');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','무주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','장수');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','임실');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','순창');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','고창');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','부안');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','목포');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','여수');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','순천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','나주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','광양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','담양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','곡성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','구례');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','고흥');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','보성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','화순');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','장흥');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','강진');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','해남');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','영암');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','무안');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','함평');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','영광');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','장성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','완료도');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','진도');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','신안');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','포항');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','경주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','김천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','안동');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','구미');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','영주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','영천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','상주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','문경');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','경산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','군위');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','의성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','청송');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','영양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','영덕');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','청도');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','고령');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','성주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','칠곡');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','예천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','봉화');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','울진');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','울릉');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','창원');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','진주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','통영');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','사천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','김해');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','밀양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','거제');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','양산');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','의령');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','함안');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','창녕');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','고성');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','남해');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','하동');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','산청');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','함양');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','거창');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','합천');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','제주');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','서귀포');
INSERT INTO CITY (CITYID, CITYNAME) VALUES('CITYID_SEQ.NEXTVAL','광주');

COMMIT;