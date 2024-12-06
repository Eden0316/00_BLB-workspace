-- 회원 생일컬럼 제약조건 변경구문-- 
ALTER TABLE TB_MEMBER
MODIFY BIRTHDATE DEFAULT NULL;

-- 회원 등급컬럼 제약조건 변경구문-- 
ALTER TABLE TB_MEMBER
          MODIFY GRADE_NAME  DEFAULT 'BABY';
         
-- 회원 배송지테이블 컬럼 추가 구문 --
ALTER TABLE TB_DELIVERY
ADD POSTCODE VARCHAR2(10);

ALTER TABLE TB_DELIVERY
          MODIFY POSTCODE  NOT NULL;
          
ALTER TABLE TB_DELIVERY     
ADD DETAIL_ADDRESS VARCHAR(255) ;

-- 회원 배송지테이블 데이터타입변경구문 -- 
ALTER TABLE TB_DELIVERY 
ADD POSTCODE NUMBER;  


-- 상품 테이블 컬럼 추가 구문 --
ALTER TABLE TB_PRODUCT
ADD (SUBCATEGORY_NAME VARCHAR2(60) NOT NULL);
