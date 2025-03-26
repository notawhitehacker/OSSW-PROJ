DROP TABLE IF EXISTS OTC_Medicines;
-- 1. 데이터베이스 생성


CREATE TABLE OTC_Medicines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Medicine_Name VARCHAR(255) NOT NULL,
    Main_Ingredients TEXT NOT NULL,
    Effects VARCHAR(255) NOT NULL,
    Dosage_by_Age TEXT NOT NULL,
    Pharmaceutical_Company VARCHAR(255) NOT NULL,
    Image_Path VARCHAR(255) 
);

-- 3. 데이터 삽입
-- Fever
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('타이레놀 어린이 시럽', '아세트아미노펜 160mg/5ml', '해열', '2-3세: 5ml, 1일 3~4회; 4-5세: 7.5ml, 1일 3~4회; 6-8세: 10ml, 1일 3~4회', '한국존슨앤드존슨', '/images/tylenol_kids.jpg'),
('타이레놀 정 500mg', '아세트아미노펜 500mg', '해열', '성인: 1회 1정, 1일 3~4회', '한국존슨앤드존슨', '/images/tylenol.jpg'),
('부루펜', '이부프로펜 200mg', '해열', '성인: 1회 1~2정, 1일 3회', '삼일제약', '/images/brufen.jpg'),
('타이레놀 콜드 정', '아세트아미노펜 500mg, 페닐레프린 5mg', '해열, 감기 증상', '성인: 1회 1정, 1일 3회', '한국존슨앤드존슨', '/images/tylenol_cold.jpg'),
('판콜에이 내복액', '아세트아미노펜 325mg, 클로르페니라민 2mg, 페닐레프린 5mg', '해열, 감기 증상', '성인: 1회 30ml, 1일 3회', '동화약품', '/images/pancol_a.jpg');

-- Pain Relief
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('게보린', '아세트아미노펜 300mg, 이소프로필안티피린 150mg, 카페인 50mg', '진통, 소염', '성인: 1회 1정, 1일 3회', '삼진제약', '/images/geborin.jpeg'),
('펜잘Q', '아세트아미노펜 325mg, 카페인 50mg, 에텐자미드 160mg', '진통, 소염', '성인: 1회 1정, 1일 3회', '종근당', '/images/penzal_q.jpeg'),
('이지엔6', '이부프로펜 200mg', '진통, 소염', '성인: 1회 1~2정, 1일 3회', '대웅제약', '/images/easy_n6.jpg'),
('탁센', '이부프로펜 400mg', '진통, 소염', '성인: 1회 1정, 1일 3회', 'gc녹십자', '/images/tuxen.jpg'),
('애드빌', '록소프로펜 60mg', '진통, 소염', '성인: 1회 1정, 1일 3회', 'GSK', '/images/advil.jpg');

-- Anti-Inflammatory 
/*INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('덱시부프로펜', '폴리소르베이트 80mg', '소염, 진통', '성인: 1회 200~400mg, 1일 3회', '알피바이오', '/images/dexibuprofen.jpg'),
('나프록센 정', '나프록센 250mg', '소염, 진통', '성인: 1회 250~500mg, 1일 2회', '종근당', '/images/naproxen.jpg'),
('모티펜', '디클로페낙 50mg', '소염, 진통', '성인: 1회 1정, 1일 3회', '대웅제약', '/images/motifen.jpg'),
('멜록시캄', '멜록시캄 7.5mg', '소염, 진통', '성인: 1일 1정', '한미약품', '/images/meloxicam.jpg'),
('아스피린', '아세틸살리실산 500mg', '소염, 진통', '성인: 1회 1~2정, 1일 3회', '바이엘', '/images/aspirin.jpg');*/

-- Indigestion
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('훼스탈', '파파인 150mg, 디메티콘 50mg', '소화불량, 속쓰림', '성인: 1회 1병, 1일 3회', '한독', '/images/festal_plus.jpg'),
('베나치오', '트리메부틴 100mg', '소화불량, 위장장애', '성인: 1회 1병, 1일 3회', '동아제약', '/images/benachio.jpg'),
('판크레온', '판크레아틴 150mg', '소화불량, 소화촉진', '성인: 1회 1정, 1일 3회', '영진약품', '/images/pancreon.jpg'),
('까스활명수', '디메치콘 50mg', '소화불량, 속쓰림', '성인: 1회 30ml, 1일 3회', '동화약품', '/images/kas_myeongsu.jpg'),
('속편엔', '판크레아틴 40mg', '소화불량, 위장장애', '성인: 1회 1정, 1일 3회', '한국파바스 제약', '/images/sokpionen.jpg');

-- Allergy
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('지르텍 정', '세티리진 염산염 10mg', '알레르기 비염, 두드러기', '성인: 1회 1정, 1일 1회', '글락소스미스클라인', '/images/zyrtec.jpg'),
('클라리틴 정', '로라타딘 10mg', '알레르기 비염, 두드러기', '성인: 1회 1정, 1일 1회', '바이엘', '/images/claritin.jpg'),
('알레그라', '펙소페나딘 180mg', '알레르기 비염, 두드러기', '성인: 1회 1정, 1일 1회', '사노피', '/images/allegra.jpg'),
('페니라민', '클로르페니라민 4mg', '알레르기 비염, 두드러기', '성인: 1회 1정, 1일 3회', '삼성제약', '/images/peniramin.jpg'),
('알러진 정', '펙소페나딘 20mg', '알레르기 비염, 두드러기', '성인: 1회 1정, 1일 1회', '동화약품', '/images/allagyn.jpg');

-- Constipation
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('둘코락스', '비스아코딜 5mg', '변비', '성인: 1회 1~2정, 1일 1회', '오펠라헬스케어코리아', '/images/dulcolax.jpg'),
('베비움', '락툴로오스 10g', '변비', '성인: 1일 15~30ml', 'JW중외제약', '/images/baebium.jpg'),
('장제로 정', '락툴로오스 10g', '변비', '성인: 1회 1~2정', '일양약품', '/images/jangzero.jpg'),
('센스락유', '센노사이드 8.6mg', '변비', '성인: 1회 1~2정, 1일 1회', '현대약품', '/images/senselock.jpg'),
('센코딜', '락토바실루스균 2억 CFU', '변비', '성인: 1회 2정, 1일 1회', '동화약품', '/images/sencodill.jpg');

-- Muscle Pain
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('셀라펜정', '보스웰리아 추출물 50mg', '근육통, 관절통', '성인: 1일 2정', '현대약품', '/images/sellapan.jpg'),
('플루펜', '멘톨 8%, 캄파 5%', '근육통, 타박상', '성인: 1일 1~2회 환부에 부착', '현대약품', '/images/flupan.jpg'),
('케토톱', '디클로페낙 1%', '근육통, 관절통', '성인: 1일 1~2회 환부에 부착', '한독', '/images/ketotop.jpg'),
('록소엔겔', '멘톨 5%, 살리실산 메틸 10%', '근육통, 타박상', '성인: 1일 2~3회 환부에 도포', '제일헬스사이언스', '/images/loxoan.jpg'),
('콘멕스 정', '리도카인 4%', '근육통, 관절통', '성인: 1일 1정, 2회', '종근당', '/images/conmax.jpg');

-- Anthelmintic (deworming)
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('젠텔 정', '알벤다졸 400mg', '구충제', '성인: 1회 1정, 1일 1회', '유한양행', '/images/zentell.jpg'),
('알졸타 정', '알벤다졸 400mg', '구충제', '성인: 1회 1정, 1일 1회', '경남제약', '/images/alzolta.jpg'),
('젤콤 정', '플루벤다졸 400mg', '구충제', '성인: 1회 1정, 1일 1회', '동아제약', '/images/jellcom.jpg'),
('알벤졸 정', '알벤다졸 500mg', '구충제', '성인: 1회 1정, 1일 1회', '삼성제약', '/images/albenzol.jpg'),
('훌벤현탁액', '플루벤다졸 400mg', '구충제', '성인: 1회 1포, 1일 1회', '종근당', '/images/hullben.jpg');

-- Cough
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('코푸시럽', '덱스트로메토르판 15mg/5ml', '기침, 진해', '성인: 1회 5ml, 1일 3~4회', '유한양행', '/images/copu.jpg'),
('액티피드 시럽', '트리프롤리딘 1.25mg/5ml', '기침, 가래', '성인: 1회 5ml, 1일 3~4회', '동아제약', '/images/actipeed.jpg'),
('판텍큐 정', '트리메토프림 50mg', '기침, 가래', '성인: 1회 1정, 1일 2회', '동아제약', '/images/panteckq.jpg'),
('판콜에이', '트리프롤리딘 1.25mg/5ml', '기침, 가래', '성인: 1회 1정, 1일 3회', '동화약품', '/images/pancalla.jpg'),
('판피린', '브롬헥신 8mg', '기침, 가래', '성인: 1회 1정, 1일 3회', '동아제약', '/images/panpirin.jpg');

-- Fatigue
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('비맥스 메타 정', '비타민C 500mg, 비타민B 복합체', '피로회복', '성인: 1일 1정', 'GC녹십자', '/images/bmaxmeta.jpg'),
('마이비젯 정', '비타민C 500mg', '피로회복, 항산화', '성인: 1일 1정', '광동제약', '/images/mybizat.jpg'),
('투엑스비 정', '비타민B 복합체', '피로회복, 면역강화', '성인: 1일 1정', '제일약품', '/images/twoxb.jpg'),
('에너릭 정', '종합비타민', '피로회복, 면역강화', '성인: 1일 1정', '광동제약', '/images/eneric.jpg'),
('박카스', '타우린 1000mg', '피로회복, 신경통', '성인: 1회 1병, 1일 1~2회', '동아제약', '/images/bakas.jpg');

-- Oral Health
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('오라메디 연고', '트리암시놀론 아세토니드 0.1%', '구내염, 구강염', '성인: 1일 2~3회 환부에 도포', '동국제약', '/images/oramedy.jpg'),
('알보칠', '폴리크레줄렌 10%', '구내염, 구강염', '성인: 1일 2~3회 환부에 도포', '동화약품', '/images/albochill.jpg'),
('오라스틱', '클로르헥시딘 0.2%', '구내염, 구강염', '성인: 1일 2~3회 환부에 도포', '동국제약', '/images/orastick.jpg'),
('아프니벤큐', '플로르헥시딘 0.12%', '구내염, 구강염', '성인: 1일 2회 구강 세정', '일동제약', '/images/avnivenq.jpg'),
('조아구강청', '플로르헥시딘 0.12%', '구내염, 구강염', '성인: 1일 2~3회 환부에 도포', '조아제약', '/images/zoa.jpg');

-- Skin Care
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('후시딘 연고', '푸시드산 2%', '피부 감염증', '성인: 1일 2~3회 환부에 도포', '동화약품', '/images/fucidin.jpg'),
('마데카솔', '센텔라 아시아티카 추출물 1%', '상처 치료, 피부 재생', '성인: 1일 2~3회 환부에 도포', '동국제약', '/images/madecassol.jpg'),
('겐트리손', '베타메타손 0.05%', '피부염, 습진', '성인: 1일 2~3회 환부에 도포', '신풍제약', '/images/gentrisone.jpg'),
('베아로반', '무피로신 2%', '피부 감염증', '성인: 1일 2~3회 환부에 도포', '대웅제약', '/images/baeroban.jpg'),
('비판텐', '덱스판테놀 5%', '상처 치료, 피부 재생', '성인: 1일 2~3회 환부에 도포', '바이엘코리아', '/images/bepanthen.jpg');

-- Bone Health
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('조인본골드', '칼슘 500mg, 비타민D 400IU', '뼈 건강, 칼슘 보충', '성인: 1일 1정', '유한양행', '/images/joinbone.jpg'),
('호관원', '칼슘 600mg, 비타민D 400IU', '뼈 건강, 칼슘 보충', '성인: 1일 1포', '동진제약', '/images/hoguanwon.jpg'),
('조인엔콘드', '칼슘 600mg, 비타민D 1000IU', '뼈 건강, 면역강화', '성인: 1일 1정', 'GC녹십자', '/images/joinandcond.jpg'),
('맥스콘트로이딘', '칼슘 500mg, 비타민D 400IU', '뼈 건강, 칼슘 보충', '성인: 1일 1포', '동아제약', '/images/maxcontroidin.jpg'),
('본스칼엠', '칼슘 500mg, 마그네슘 250mg', '뼈 건강, 칼슘 보충', '성인: 1일 1정', '조아제약', '/images/bonskalm.jpg');

-- Eye-related Conditions
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('시크린 정', '벤질코늄염화물, 보로산', '안구 피로, 자극', '성인: 1회 1정, 1일 2회', '조아제약', '/images/secreen.jpg'),
('아로나민', '폴리헥사메틸렌 비구아니드, 소듐 염화물', '안구 건조', '성인: 1일 4회, 각 1~2방울', '일동제약', '/images/aronamin.jpg'),
('씨스타포르테', '카르복시메틸셀룰로오스 0.5%', '안구 가려움, 알레르기성 결막염', '성인: 1일 2~3회, 각 1방울', '대우제약', '/images/seestaforte.jpg'),
('아이톡', '사이클로스포린 0.05%', '안구 건조증', '성인: 1일 2회, 각 1방울', '광동제약', '/images/eyetok.jpg'),
('루핑', '카르복시메틸셀룰로오스 0.5%', '눈의 건조, 안구 피로', '성인: 1일 4회, 각 1~2방울', '현대약품', '/images/looping.jpg');

-- General/Other Conditions
INSERT INTO OTC_Medicines (Medicine_Name, Main_Ingredients, Effects, Dosage_by_Age, Pharmaceutical_Company, Image_Path) 
VALUES 
('텐텐', '비타민A 20mg, 비타민B 30mg, 비타민C 100mg', '기타 비타민 보충, 성장 발육', '어린이: 1일 2정, 성인: 1일 4정', '한미약품', '/images/tenten.jpg'),
('우황청심원', '복령, 황기, 산조인', '기타 스트레스 완화, 신경 안정', '성인: 1회 1병, 필요시 복용', '광동제약', '/images/uwangcheongsimhwan.jpg'),
('센트롬 프로', '비타민A 20mg, 비타민B 30mg, 비타민C 100mg', '기타 비타민 보충', '성인: 1회 1정, 필요시 복용', '콜마비앤에이치', '/images/centrom.jpg'),
('고려은단 비타민C 1000', '비타민C 1000mg', '기타 비타민C 보충, 피로 회복', '성인: 1일 1정', '고려은단', '/images/koreaeundanch.jpg'),
('뉴트리라이트 오메가3', 'EPA 180mg, DHA 120mg', '기타 오메가3 보충, 혈액순환 개선', '성인: 1일 1~2정', '암웨이', '/images/newtreelight.jpg');

select *
from OTC_Medicines;