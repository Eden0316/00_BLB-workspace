--ȸ����� (TB_GRADE) �����Ͱ� --
INSERT INTO TB_GRADE(GRADE_NAME
                                        ,MIN_POINT
                                        ,MAX_POINT)
                            VALUES('BABY'
                                        , 0
                                        ,3000);
                        
INSERT INTO TB_GRADE(GRADE_NAME
                                        ,MIN_POINT
                                        ,MAX_POINT)
                            VALUES('MINT'
                                        , 3000
                                        ,5000);
                                        
INSERT INTO TB_GRADE(GRADE_NAME
                                        ,MIN_POINT
                                        ,MAX_POINT)
                            VALUES('GOLD'
                                        , 5000
                                        ,10000);
                                        
INSERT INTO TB_GRADE(GRADE_NAME
                                        ,MIN_POINT
                                        ,MAX_POINT)
                            VALUES('VIP'
                                        , 10000
                                        ,99999999);

-- ������ ����--
 INSERT INTO TB_MEMBER ( MEMBER_ID,
                                                MEMBER_NAME,
                                                MEMBER_PWD,
                                                PHONE,
                                                EMAIL,
                                                BIRTHDATE,
                                                CREATE_DATE,
                                                DELETE_DATE,
                                                STATUS,
                                                TOTAL_POINTS,
                                                CURRENT_POINTS,
                                                GRADE_NAME
                                            ) 
                              VALUES ( 'admin',
                                                '������',
                                                '$2a$10$C80V3tc1Sy0rEjBf/izb9OPjvV5sKzbp0AqAzR6nd395KWgHcUg8S', -- 'admin01!'
                                                '01011112222',
                                                'admin@mig.com',
                                                TO_DATE('2000-01-01', 'YYYY-MM-DD'),
                                                DEFAULT,
                                                NULL,
                                                'Y',
                                                DEFAULT,
                                                DEFAULT,
                                                'VIP'
                                            );
-- �⺻����� ���ð���--
INSERT INTO TB_DELIVERY (DELI_CODE,
                                              DELI_NAME,
                                              DELI_PHONE,
                                              POSTCODE,
                                              DELI_ADDRESS,
                                                DETAIL_ADDRESS,
                                              DELI_COMMENT,
                                               DELI_DEFAULT,
                                              MEMBER_ID) 
                              VALUES ( SEQ_DELI_CODE.NEXTVAL,
                                                '������',
                                                '01011112222',
                                                '07212',
                                               ' ���� �������� ������2�� 57 (����4��)',
                                                '�̷����� 19��',
                                                NULL,
                                                DEFAULT,
                                                'admin' );

--ȸ�����ð���--
INSERT INTO TB_MEMBER (
                                            MEMBER_ID,
                                            MEMBER_NAME,
                                            MEMBER_PWD,
                                            PHONE,
                                            EMAIL,
                                            BIRTHDATE,
                                            CREATE_DATE,
                                            DELETE_DATE,
                                            STATUS,
                                            TOTAL_POINTS,
                                            CURRENT_POINTS,
                                            GRADE_NAME
                                        ) 
                                        VALUES (
                                            'user01',
                                            'ȫ�浿',
                                            '$2a$10$10sE..DFkXAKR0br6NBeAu1i3bNswzZq2sA34zdq9244HK1cai2b2', -- 'password01!'
                                            '01088889999',
                                            'user01@gmail.com',
                                            TO_DATE('2000-01-11', 'YYYY-MM-DD'), 
                                            DEFAULT,
                                            NULL,
                                            'Y',
                                            DEFAULT,
                                            DEFAULT,
                                            'BABY'
                                        );

-- ��ǰ���� ������--
INSERT INTO TB_PRODUCT (PROD_NO
                      , CATEGORY_NAME
                      , PROD_NAME
                      , PROD_CONTENT
                      , PROD_PRICE
                      , PROD_ORIGIN
                      , PROD_CAUTION
                      , PROD_COUNT
                      , PROD_ENROLL_DATE
                      , PROD_STATUS
                      , SUBCATEGORY_NAME
                        )
                VALUES (SEQ_PROD_NO.NEXTVAL
                      , '��Ų�ɾ�'
                      , '���� ���̽�ó ������'
                      , '�������� ������ ���ڱؼ� ��ǰ'
                      , 17900
                      , '��ö�����⹰(96.0%),��ƿ���۶�����,1,2.-�����̿�'
                      , '��. ȭ��ǰ ��� �� �Ǵ� ��� �� ���籤���� ���Ͽ� �������� ���� ����, �ξ���� �Ǵ� �������� ���� �̻� �����̳� ���ۿ��� �ִ� ��쿡�� ������ ��� ����� ��. ��. ��ó�� �ִ� ���� ��� ����� ������ ��. ��. ���� �� ��� �� ���ǻ��� 1) ����� ���� ���� �ʴ� ���� ������ ��. 2) ���������� ���ؼ� ������ ��.'
                      , DEFAULT
                      , DEFAULT
                      , DEFAULT
                      , '��Ų/������'
                        );

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� Ŭ��¡ ����', '���ڱ��� �ΰ��� �Ǻο� Ŭ��¡', 12900, '�������⹰(70%), �۸�����, ī�������۶�����', '��. ���� ���� �ʵ��� ������ ��. ��. ��ó ���� ��� ����. ��. ���籤���� ���� ��.', DEFAULT, DEFAULT, DEFAULT, 'Ŭ��¡');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� ��Ʈ ����ƽ', '��߻��� ��Ʈ ����ƽ', 9900, '�������, ����ν�, �������', '��. �� ���� ��� ����. ��. ȭ�� �� ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '��');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� ���ϸ� ��ũ��', 'SPF50+/PA+++�� ��������', 14900, '¡ũ�����̵�, ƼŸ��������̵�, �˷ο����������⹰', '��. �� ���� ��� ����. ��. �޺� ���� �� 30�� ���� ����� ��.', DEFAULT, DEFAULT, DEFAULT, '���ɾ�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����', '���� ���� ���ν�', '������ �������� �����ϴ� �ν�', 13900, '���׾Ƹ����ڿ�, ���ġ��, ���', '��. ���� ���� �ʵ��� �� ��. ��. ��ó ���� ��� ����.', DEFAULT, DEFAULT, DEFAULT, '���');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� ����', '����� �ε巴�� ����� ����', 8900, '���׳�, ���̵�Ѷ�������ũ, ���ڳӿ���', '��. ���ǿ� ��Ⱓ ��ġ���� �� ��. ��. ���� ���� �ʰ� �� ��.', DEFAULT, DEFAULT, DEFAULT, '����');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� ���̼����� �ȷ�Ʈ', '8���� �÷��� ���̼�����', 20900, 'Żũ, ����ī, ���ġ��', '��. ���� ���� �ʰ� ����. ��. ���糯�� ����.', DEFAULT, DEFAULT, DEFAULT, '����');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� ���� ũ��', '������ Ź���� ����� ũ��', 19900, '���˷�л�, �۸�����, �˷ο����������⹰', '��. �� ���� ��� ����. ��. ���� �� ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, 'ũ��/�μ�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� ���̽�ó �ٵ�μ�', '������ ������ ���� �ٵ�μ�', 15900, '�������, ���ڳӿ���, �˷ο����������⹰', '��. ��ó ���� ��� ����. ��. ��� ���� ���� �ʴ� ���� ����.', DEFAULT, DEFAULT, DEFAULT, '�ٵ�μ�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����', '���� ���� ���ο� ��Ų', '��Ų�� �μ��� ������ ��ǰ', 22900, '�˷ο����������⹰, �۸�����, ��ƿ���۶�����', '��. �Ǻο� ���� �� ��� ��� �ߴ�. ��. ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '��Ų');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� ��Ǫ', '��߰� ���Ǹ� �����ϰ� �ϴ� ��Ǫ', 9900, '����, ���׳�, ���ڳӿ���', '��. ���� ���� �ʰ� �� ��. ��. ��ó ���� ��� ����.', DEFAULT, DEFAULT, DEFAULT, '��Ǫ');


INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� ���̵巹���� ������', '�Ǻο� ���� ���а��� �ִ� ������', 24900, '�۸�����, ��ƿ���۶�����, �������⹰', '��. �Ǻ� �ڱ� �� ��� ����. ��. ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '��Ų/������');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� ƾƮ ����', '������ ������ �ڿ������� ���� ����', 12900, '�������, ��ī�ٹ̾ƾ�����, ��Ÿ��E', '��. �Լ� �� ��� ����. ��. ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '��');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����', '���� ���� Ŭ��¡ ��', '�����ռ� �Ǻθ� ���� Ŭ��¡ ��', 17900, '�۸�����, �츮�ǻ�, ƼƮ������', '��. ���� ���� �ʰ� ����. ��. ���� �� ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '��Ų');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� ��� ����', '��߿� ����� �ǰ��� �ο��ϴ� ����', 18900, '�Ƹ�������, ���׳�, ���̵�Ѷ�������ɶ�ƾ', '��. ���ǿ� ������� �� ��. ��. ��� �տ� ���� �ʰ� ����.', DEFAULT, DEFAULT, DEFAULT, '���');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� ī�� ���', '�ΰ��� �Ǻθ� ���� ���� ���', 15900, 'ī�������⹰, �˶�����, �۸�����', '��. ��� �� ���� ����. ��. �Ǻ� �̻� �߻� �� ��� �ߴ�.', DEFAULT, DEFAULT, DEFAULT, '��Ų/������');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� �۷ο� �Ŀ�̼�', '�ڿ������� ��ä�� �ο��ϴ� ���̽�', 29900, '�̳׶��Ŀ��, �Ǹ�ī, �������', '��. ���� ���� �ʵ��� ����. ��. ��Ⱓ ��ġ ����.', DEFAULT, DEFAULT, DEFAULT, '���̽�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����', '���� ���� ���̺� ��', '�ε巯�� �鵵�� ���� ��', 13900, '�˷ο����������⹰, �۸�����, ƼƮ������', '��. ��ó ���� ��� ����. ��. ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '��Ų');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� ������ �ٵ����', '������ ��밨�� �ִ� �ٵ����', 11900, '����, ���ڳӿ���, ��Ÿ��E', '��. ���� ���� �ʰ� ����. ��. ��ó ���� ��� ����.', DEFAULT, DEFAULT, DEFAULT, '�ٵ�μ�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� �����Ʈ�� ����', '�Ǻ� �� ������ ���� ����� ����', 21900, '���̾ƽžƸ��̵�, �Ƹ���ƾ, �۸�����', '��. �Ǻ� �̻� �߻� �� ��� �ߴ�. ��. ��� ���� ���� �ʴ� ���� ����.', DEFAULT, DEFAULT, DEFAULT, '��Ų/������');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� ���������� ���̶��̳�', '���� ���� ���ӵǴ� ���̶��̳�', 16900, '����ν�, ī����, ������', '��. ���� ���� �ʰ� ����. ��. ��� �� ������ �ݾ� ����.', DEFAULT, DEFAULT, DEFAULT, '����');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� �� ����ų�', '������ ����� ���� ���� �ɾ� ����', 17900, '�������, ���̵�Ѷ�������ɶ�ƾ, ���׳�', '��. ���ǿ� ��ð� ��ġ ����. ��. ���� ���� �ʰ� ����.', DEFAULT, DEFAULT, DEFAULT, '����');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����', '���� ���� ���̽�ũ��', '���� �Ǻθ� ���� ���� ũ��', 15900, '���˷�л�, �۸�����, �������', '��. ��ó ���� ��� ����. ��. ��� �� ���� ����.', DEFAULT, DEFAULT, DEFAULT, '��Ų');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� ũ���� ����', '�ε巴�� �ڿ������� �÷��� ����', 19900, '�̳׶��Ŀ��, �������, �������', '��. �� ���� ��� ����. ��. ��� �� ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '���̽�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� ����� ����ũ', '�ջ� ��߿� ������ �����ϴ� ����ũ', 25900, '���׳�, �������, ���̵�Ѷ�������ɶ�ƾ', '��. ���ǿ� ���� ������� �� ��. ��. ��� �� ���� �ʴ� ���� ����.', DEFAULT, DEFAULT, DEFAULT, '���');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� ���� ��', '�Ǻ� �ڱ��� ��ȭ�ϴ� ��', 14900, '�˷ο����������⹰, �۸�����, ���׳�', '��. ��ó ���� ��� ����. ��. ���� �� ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, 'ũ��/�μ�');


INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� ���̽�ó����¡ ũ��', '������ �Ǻο� ������ �����ϴ� ũ��', 23900, '�������, �۸�����, ���׳�', '��. ���� ���� �ʰ� ����. ��. ���籤���� ���ؼ� ����.', DEFAULT, DEFAULT, DEFAULT, 'ũ��/�μ�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� ��Ʈ ����ƽ', '������ �÷��� ��Ʈ�� �������� ����', 15900, 'ī�ø�, �������, ��Ÿ��E', '��. �Լ� ���� ��� ����. ��. ��� �� ������ �ݾ� ����.', DEFAULT, DEFAULT, DEFAULT, '��');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����', '���� ���� ��ũ��', 'UV ���ܰ� �Բ� �Ǻ� ��ȣ', 18900, 'ƼŸ��������̵�, �۸�����, ���׳�', '��. �� ���� ��� ����. ��. ��� �� ���� �ʴ� ���� ����.', DEFAULT, DEFAULT, DEFAULT, '��Ų');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� ǻ�� ��Ǫ', '���ǿ� ����� �ǰ��ϰ� �����ϴ� ��Ǫ', 12900, '���ڳӿ���, �˷ο��������⹰, �۸�����', '��. ���� ���� �ʰ� ����. ��. ��� �� ���� �ʴ� ���� ����.', DEFAULT, DEFAULT, DEFAULT, '��Ǫ');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� UV ��������', '�ΰ��� �Ǻθ� ���� ���ڱ� ��ũ��', 20900, '¡ũ�����̵�, ƼŸ��������̵�, �۸�����', '��. ��ó ���� ��� ����. ��. ��� �� ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '���ɾ�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� ���̶�����', '�Ǻο� �ڿ������� ������ �ο��ϴ� ���̶�����', 17900, '�̳׶��Ŀ��, �������, �������', '��. �� ���� ��� ����. ��. ���籤���� ���ؼ� ����.', DEFAULT, DEFAULT, DEFAULT, '����');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����', '���� ���� ���ν�', '�ڿ������� ��Ÿ�ϸ��� ������ ����', 14900, 'ī�ø�, �������, �۸�����', '��. ���� ���� �ʰ� ����. ��. ���籤���� ���ؼ� ����.', DEFAULT, DEFAULT, DEFAULT, '���');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '���/�ٵ�', '���� �� ���̽�ó �ٵ�μ�', '������ �Ǻθ� ���� ���� �ٵ�μ�', 19900, '�������, �۸�����, ���׳�', '��. �Ǻ� �ڱ� �� ��� �ߴ�. ��. ��� �� ���� �ʴ� ���� ����.', DEFAULT, DEFAULT, DEFAULT, '�ٵ�μ�');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '��Ų�ɾ�', '���� Ŭ��¡ ����', '����ũ���� ���� ���Ÿ� ���� Ŭ��¡ ����', 18900, '���ڳӿ���, ����������, ��Ÿ��E', '��. ���� ���� �ʰ� ����. ��. ���籤���� ���ؼ� ����.', DEFAULT, DEFAULT, DEFAULT, 'Ŭ��¡');

INSERT INTO TB_PRODUCT (PROD_NO, CATEGORY_NAME, PROD_NAME, PROD_CONTENT, PROD_PRICE, PROD_ORIGIN, PROD_CAUTION, PROD_COUNT, PROD_ENROLL_DATE, PROD_STATUS, SUBCATEGORY_NAME)
VALUES (SEQ_PROD_NO.NEXTVAL, '����ũ��', '���� �շ����� �Ŀ��', '���� �ð� ���ӵǴ� �Ǻ� ǥ���� ���� �Ŀ��', 13900, '�̳׶��Ŀ��, �Ǹ�ī, �������', '��. ��� �� ���� ����. ��. ���籤�� ���� ��.', DEFAULT, DEFAULT, DEFAULT, '���̽�');


COMMIT;