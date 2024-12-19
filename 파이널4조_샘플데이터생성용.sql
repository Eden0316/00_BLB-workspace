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
                        'user02',
                        '������',
                        '$2a$10$10sE..DFkXAKR0br6NBeAu1i3bNswzZq2sA34zdq9244HK1cai2b2', -- 'password01!'
                        '01022222222',
                        'user02@gmail.com',
                        TO_DATE('2000-01-11', 'YYYY-MM-DD'), 
                        DEFAULT,
                        NULL,
                        'Y',
                        DEFAULT,
                        DEFAULT,
                        'BABY'
                    );
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
                        'user03',
                        '������',
                        '$2a$10$10sE..DFkXAKR0br6NBeAu1i3bNswzZq2sA34zdq9244HK1cai2b2', -- 'password01!'
                        '01022222222',
                        'user03@gmail.com',
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


-- ��ǰ �̹��� ���� ������--
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 36);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_2.jpg'
                                       , 'product1_2.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 36);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_3.jpg'
                                       , 'product1_3.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 36);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product_caution.jpg'
                                       , 'product_caution.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 36);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 36);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 35);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_2.jpg'
                                       , 'product2_2.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 35);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_3.jpg'
                                       , 'product2_3.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 35);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product_caution.jpg'
                                       , 'product_caution.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 35);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 35);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 34);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_2.jpg'
                                       , 'product3_2.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 34);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_3.jpg'
                                       , 'product3_3.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 34);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product_caution.jpg'
                                       , 'product_caution.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 34);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 34);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 34);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 33);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 33);
                                       
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 32);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 32);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 31);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 31);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 30);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 30);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 29);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 29);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 28);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 28);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 27);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 27);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 26);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 26);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 25);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 25);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 24);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 24);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 23);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 23);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 22);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 22);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 21);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 21);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 20);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 20);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 19);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 19);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 18);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 18);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 17);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 17);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 16);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 16);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 15);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 15);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 14);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 14);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 13);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 13);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 12);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 12);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 11);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 11);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 10);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 10);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 9);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 9);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 8);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 8);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 7);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 7);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 6);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 6);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 5);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 5);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 4);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 4);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_1.jpg'
                                       , 'product1_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 3);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product1_detail.jpg'
                                       , 'product1_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 3);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_1.jpg'
                                       , 'product2_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 2);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product2_detail.jpg'
                                       , 'product2_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 2);

INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_1.jpg'
                                       , 'product3_1.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , '/resources/uploadFiles/product/thumb/'
                                       , 'Y'
                                       , 1);
INSERT INTO TB_PRODUCT_ATTACHMENT VALUES(SEQ_PROD_ATT_NO.NEXTVAL
                                       , 'product3_detail.jpg'
                                       , 'product3_detail.jpg'
                                       , '/resources/uploadFiles/product/'
                                       , null
                                       , 'Y'
                                       , 1);

-- ��ǰ �ɼ� (�⺻��ǰ) ��ü �߰� --
BEGIN
    FOR i IN 1..36 LOOP
        INSERT INTO TB_OPTION VALUES(
            SEQ_OPT_NO.NEXTVAL,
            '�⺻ ��ǰ', -- �ɼ� �̸�
            NULL, -- �ɼ� ��
            0, -- �߰��ݾ�
            300, -- ������
            i -- PROD_NO
        );
    END LOOP;
    COMMIT;
END;
/
-- ��ǰ �ɼ� (�߰��ɼ�1) ��ü �߰� --
BEGIN
    FOR i IN 1..36 LOOP
        INSERT INTO TB_OPTION VALUES(
            SEQ_OPT_NO.NEXTVAL,
            '�߰� �ɼ�1', -- �ɼ� �̸�
            '50ml', -- �ɼ� ��
            5000, -- �߰��ݾ�
            5, -- ������
            i -- PROD_NO
        );
    END LOOP;
    COMMIT;
END;
/

-- �ֹ� ���� ������ --
BEGIN
    FOR order_no IN 1..100 LOOP
        INSERT INTO TB_ORDER (
            ORDER_NO, 
            RCVR_NAME, 
            RCVR_PHONE, 
            RCVR_ADDRESS, 
            DLVR_REQ_MESSAGE, 
            DLVR_STATUS, 
            DLVR_FEE, 
            DLVR_COMPANY, 
            DISPATCH_DATE, 
            COMPLETE_DATE, 
            ORDER_TOTAL_AMT, 
            PAYMENT_CODE, 
            PAYMENT_METHOD, 
            ORDER_DATE, 
            REFUND_DATE, 
            REFUND_REASON, 
            MEMBER_ID
        ) VALUES (
            SEQ_ORDER_NO.NEXTVAL, -- ORDER_NO �������� ����
            '������' || TO_CHAR(order_no, 'FM000'), -- RCVR_NAME
            '010' || LPAD(TRUNC(DBMS_RANDOM.VALUE(10000000, 99999999)), 8, '0'), -- RCVR_PHONE
            '����Ư���� ������ ���ﵿ ' || TO_CHAR(order_no, 'FM000') || '����', -- RCVR_ADDRESS
            CASE 
                WHEN MOD(order_no, 5) = 0 THEN '��� ��û ���� ����'
                WHEN MOD(order_no, 5) = 1 THEN '���� �� ���ǿ� �ð��ּ���.'
                WHEN MOD(order_no, 5) = 2 THEN '��� �� ���� ��Ź�帳�ϴ�.'
                ELSE NULL
            END, -- DLVR_REQ_MESSAGE
            '��۴��', -- DLVR_STATUS
            2500, -- DLVR_FEE
            CASE 
                WHEN MOD(order_no, 3) = 0 THEN 'CJ�������'
                WHEN MOD(order_no, 3) = 1 THEN '�����ù�'
                ELSE '�����ù�'
            END, -- DLVR_COMPANY
            CASE 
                WHEN MOD(order_no, 4) = 0 THEN SYSDATE + TRUNC(DBMS_RANDOM.VALUE(1, 5)) -- DISPATCH_DATE
                ELSE NULL
            END, 
            CASE 
                WHEN MOD(order_no, 4) = 0 THEN SYSDATE + TRUNC(DBMS_RANDOM.VALUE(6, 10)) -- COMPLETE_DATE
                ELSE NULL
            END, 
            TRUNC(DBMS_RANDOM.VALUE(30000, 150000)), -- ORDER_TOTAL_AMT
            CASE 
                WHEN MOD(order_no, 4) = 0 THEN 'PAYCODE' || TO_CHAR(order_no, 'FM000')
                ELSE NULL
            END, -- PAYMENT_CODE
            CASE 
                WHEN MOD(order_no, 2) = 0 THEN 'ī�����'
                ELSE '������ü'
            END, -- PAYMENT_METHOD
            SYSDATE - TRUNC(DBMS_RANDOM.VALUE(0, 30)), -- ORDER_DATE
            CASE 
                WHEN MOD(order_no, 10) = 0 THEN SYSDATE + TRUNC(DBMS_RANDOM.VALUE(1, 5)) -- REFUND_DATE
                ELSE NULL
            END, 
            CASE 
                WHEN MOD(order_no, 10) = 0 THEN '��ǰ �ļ����� ���� ȯ�� ��û'
                ELSE NULL
            END, -- REFUND_REASON
            CASE 
                WHEN MOD(order_no, 3) = 0 THEN 'user01'
                WHEN MOD(order_no, 3) = 1 THEN 'user02'
                ELSE 'user03'
            END -- MEMBER_ID
        );
    END LOOP;
    COMMIT;
END;
/


-- ��ǰ ���� ���� ������ --
BEGIN
    -- TB_ORDER���� ������ ORDER_NO ��������
    FOR order_rec IN (SELECT DISTINCT ORDER_NO, MEMBER_ID FROM TB_ORDER) LOOP
        -- ���� ����: ORDER_NO�� �ϳ��� ����
        INSERT INTO TB_REVIEW VALUES(
            SEQ_REV_NO.NEXTVAL,
            '��ǰ�� �ʹ� ���ƿ�! �籸�� �ǻ� �ֽ��ϴ�.',
            SYSDATE,
            5, -- ���� ����
            'Y', -- ���� ����
            order_rec.ORDER_NO, -- ORDER_NO
            order_rec.MEMBER_ID -- MEMBER_ID
        );

        -- ��ǰ �ֹ� ����: �ϳ��� ORDER_NO�� ���� �ɼ��� �߰�
        FOR opt_no IN 50..72 LOOP
            INSERT INTO TB_PRODUCT_ORDER VALUES(
                SEQ_SERIAL_NO.NEXTVAL,
                1, -- �ֹ� ����
                38000, -- �� �ݾ�
                order_rec.ORDER_NO, -- ORDER_NO
                opt_no -- OPT_NO
            );
        END LOOP;
    END LOOP;

    COMMIT; -- ���� ���� ����
END;
/
-- ��ǰ ���� ���� ���� �ο� --
BEGIN
    FOR rev_no IN 1..100 LOOP
        UPDATE TB_REVIEW
        SET REV_RATING = TRUNC(DBMS_RANDOM.VALUE(1, 6)) -- 1���� 5������ ������
        WHERE REV_NO = rev_no;
    END LOOP;

    COMMIT; -- ���� ���� ����
END;
-- ���� ���뿡 ��ȣ �ο� --
BEGIN
    FOR rev_no IN 1..100 LOOP
        UPDATE TB_REVIEW
        SET REV_CONTENT = '��ǰ�� �ʹ� ���ƿ�! �籸�� �ǻ� �ֽ��ϴ�.' || rev_no -- 1���� 5������ ������
        WHERE REV_NO = rev_no;
    END LOOP;
    COMMIT; -- ���� ���� ����
END;


-- ���������� ��ȸ�� order, product_order ���õ�����----
INSERT INTO TB_ORDER(ORDER_NO,
                     RCVR_NAME,
                     RCVR_PHONE,
                     RCVR_ADDRESS,
                     DLVR_STATUS,
                     DLVR_FEE,
                     DLVR_COMPANY,
                     ORDER_TOTAL_AMT,
                     PAYMENT_METHOD,
                     ORDER_DATE,
                     MEMBER_ID)
        VALUES(SEQ_ORDER_NO.NEXTVAL,
               'ȫ�浿',
               '01088889999',
               '����������',
               '��ۿϷ�',
                0,
               '��ü���ù�',
                35800,
                '�ſ�ī��',
                TO_DATE('2024-11-11', 'YYYY-MM-DD'),
                'user01' );
                   
INSERT INTO TB_ORDER(ORDER_NO,
                     RCVR_NAME,
                     RCVR_PHONE,
                     RCVR_ADDRESS,
                     DLVR_STATUS,
                     DLVR_FEE,
                     DLVR_COMPANY,
                     ORDER_TOTAL_AMT,
                     PAYMENT_METHOD,
                     ORDER_DATE,
                     MEMBER_ID)
        VALUES(SEQ_ORDER_NO.NEXTVAL,
                    'ȫ�浿',
                    '01088889999',
                    '����������',
                    '��ۿϷ�',
                     0,
                    '��ü���ù�',
                    63600,
                   '�ſ�ī��',
                   TO_DATE('2024-11-21', 'YYYY-MM-DD'),
                   'user01' );
    
                   
 INSERT INTO TB_PRODUCT_ORDER(SERIAL_NO,
                             ORDER_QTY,
                             TOTAL_AMT,
                             ORDER_NO,
                             OPT_NO)
        VALUES(SEQ_SERIAL_NO.NEXTVAL,
                    2,
                    35800,
                    1,
                    1 );    
                    
INSERT INTO TB_PRODUCT_ORDER(SERIAL_NO,
                             ORDER_QTY,
                             TOTAL_AMT,
                             ORDER_NO,
                             OPT_NO)
        VALUES(SEQ_SERIAL_NO.NEXTVAL,
                    1,
                    12900,
                    2,
                    2 );  
                    
INSERT INTO TB_PRODUCT_ORDER(SERIAL_NO,
                             ORDER_QTY,
                             TOTAL_AMT,
                             ORDER_NO,
                             OPT_NO)
        VALUES(SEQ_SERIAL_NO.NEXTVAL,
                    2,
                    35800,
                    2,
                    1 ); 
INSERT INTO TB_PRODUCT_ORDER(SERIAL_NO,
                             ORDER_QTY,
                             TOTAL_AMT,
                             ORDER_NO,
                             OPT_NO)
        VALUES(SEQ_SERIAL_NO.NEXTVAL,
                    1,
                    14900,
                    2,
                    57);   
                    
-- ���� ���� ������ ����
DECLARE
    v_member_ids SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST('admin', 'user01', 'user02', 'user03');
    v_review_content SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST(
        '�� ��ǰ ���� ���ƿ�!',
        'ȿ���� �����������ϴ�.',
        '����� �������.',
        '��� �̻��Դϴ�. ��õ�մϴ�!',
        '�������� ������ ����.'
    );
    v_index NUMBER := 0; -- �ۼ��� ��ȯ�� �ε���
BEGIN
    -- TB_PRODUCT_ORDER�� SERIAL_NO���� ���� ����
    FOR rec IN (SELECT SERIAL_NO FROM TB_PRODUCT_ORDER) LOOP
        -- �ۼ��� ��ȯ
        v_index := v_index + 1;

        -- ���� ������ ����
        INSERT INTO TB_REVIEW (
            REV_NO,
            REV_CONTENT,
            REV_RATING,
            REV_STATUS,
            SERIAL_NO,
            MEMBER_ID
        ) VALUES (
            SEQ_REV_NO.NEXTVAL, -- ���� ��ȣ ������
            v_review_content(MOD(v_index, 5) + 1), -- ���� ���� ����
            TRUNC(DBMS_RANDOM.VALUE(3, 6)), -- ���� ���� (3~5)
            'Y', -- ���� ���� Ȱ��ȭ
            rec.SERIAL_NO, -- SERIAL_NO
            v_member_ids(MOD(v_index, 4) + 1) -- �ۼ��� ��ȯ: admin, user01, user02, user03
        );
    END LOOP;

    COMMIT;
END;
/

COMMIT;