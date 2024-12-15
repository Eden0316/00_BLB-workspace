--------------- ��ٱ��� ---------------

-- ���̵�����

-- �ɼ�
INSERT INTO TB_OPTION (OPT_NO, OPT_NAME, OPT_VALUE, OPT_ADD_PRICE, REMAIN_QTY, PROD_NO)
VALUES (1, 'Option1', 'Value1', 1000, 100, 9);
INSERT INTO TB_OPTION (OPT_NO, OPT_NAME, OPT_VALUE, OPT_ADD_PRICE, REMAIN_QTY, PROD_NO)
VALUES (2, 'Option2', 'Value2', 2000, 200, 10);
INSERT INTO TB_OPTION (OPT_NO, OPT_NAME, OPT_VALUE, OPT_ADD_PRICE, REMAIN_QTY, PROD_NO)
VALUES (3, 'Option3', 'Value3', 3000, 150, 11);
INSERT INTO TB_OPTION (OPT_NO, OPT_NAME, OPT_VALUE, OPT_ADD_PRICE, REMAIN_QTY, PROD_NO)
VALUES (4, 'Option4', 'Value4', 4000, 50, 11);
INSERT INTO TB_OPTION (OPT_NO, OPT_NAME, OPT_VALUE, OPT_ADD_PRICE, REMAIN_QTY, PROD_NO)
VALUES (5, 'Option5', 'Value5', 5000, 75, 11);
-- ��ٱ���
INSERT INTO TB_CART (CART_NO, MEMBER_ID, PROD_NO, OPT_NO, CART_QTY) VALUES (SEQ_CART_NO.NEXTVAL, 'user1', 9, 1, 3);
INSERT INTO TB_CART (CART_NO, MEMBER_ID, PROD_NO, OPT_NO, CART_QTY) VALUES (SEQ_CART_NO.NEXTVAL, 'admin', 10, 2, 1);
INSERT INTO TB_CART (CART_NO, MEMBER_ID, PROD_NO, OPT_NO, CART_QTY) VALUES (SEQ_CART_NO.NEXTVAL, 'admin', 11, 3, 3);
INSERT INTO TB_CART (CART_NO, MEMBER_ID, PROD_NO, OPT_NO, CART_QTY) VALUES (SEQ_CART_NO.NEXTVAL, 'admin', 11, 4, 9);
INSERT INTO TB_CART (CART_NO, MEMBER_ID, PROD_NO, OPT_NO, CART_QTY) VALUES (SEQ_CART_NO.NEXTVAL, 'admin', 11, 5, 5);
COMMIT;


-- 1. ��ٱ��� ��ü ���� ��ȸ�� ������
SELECT COUNT(*)
  FROM TB_CART
 WHERE CART_QTY >= 1
 
-- 2. ��ٱ��� ��� ��ȸ�� ������
SELECT C.CART_NO
     , P.PROD_NAME
     , O.OPT_NAME
     , C.CART_QTY
     , P.PROD_PRICE
  FROM TB_CART C
  LEFT JOIN TB_PRODUCT P ON (C.PROD_NO = P.PROD_NO)
  LEFT JOIN TB_OPTION O ON (C.OPT_NO = O.OPT_NO)
 WHERE C.MEMBER_ID = #{memberId}
 ORDER BY C.CART_NO DESC
 
-- 3. ��ٱ��� X��ư���� 1�� ��ǰ�� ����
DELETE
  FROM TB_CART
 WHERE CART_NO IN (${cartNo})

-- 4. ��ٱ��� ���� ����
DELETE
  FROM TB_CART
 WHERE CART_NO IN
<foreach collection="cartNoList" item="cartNos" separator="," open="(" close=")">
    #{cartNo}
</foreach>

-- 5. ��ٱ��� ��ǰ �ɼ� ��ȸ
SELECT OPT_NO
     , OPT_NAME
  FROM TB_OPTION
 WHERE PROD_NO = #{prodNo}
 ORDER BY OPT_NO DESC
 
-- 6. ��ٱ��� ���� �� ���� ����
UPDATE TB_CART
   SET CART_QTY = #{updatedQty}
 WHERE CART_NO = #{cartNo}
 
-- �ɼ� ����
UPDATE TB_CART
  SET OPT_NO = ?
WHERE CART_NO = ?

-- ��ٱ��� ���� �ο� --
BEGIN
    FOR cart_no IN 1..10 LOOP
        INSERT INTO TB_CART (
            CART_NO, 
            MEMBER_ID, 
            PROD_NO, 
            OPT_NO, 
            CART_QTY
        ) VALUES (
            SEQ_CART_NO.NEXTVAL, -- CART_NO�� �������� ����
            'admin', -- MEMBER_ID�� �׻� 'admin'
            TRUNC(DBMS_RANDOM.VALUE(1, 36)), -- PROD_NO (1���� 36 ���� ���� ��)
            TRUNC(DBMS_RANDOM.VALUE(1, 72)), -- OPT_NO (1���� 72 ���� ���� ��)
            TRUNC(DBMS_RANDOM.VALUE(1, 10)) -- CART_QTY (1���� 10 ���� ���� ��)
        );
    END LOOP;

    COMMIT;
END;
/

