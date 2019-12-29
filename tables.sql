--������
CREATE TABLE T_CUSTOMER 
(	
	ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	GRADE NUMBER(10,0), 
	POINTS NUMBER(10,0), 
	SEX NUMBER(10,0), 
	MOBILE VARCHAR2(20), 
	BIRTHDAY DATE, 
	ADDRESS VARCHAR2(100), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."ID" IS '���';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."NAME" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."GRADE" IS '�ȼ�,0����ͨ�ͻ���1��VIP�ͻ���2���߼�VIP�ͻ�';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."POINTS" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."SEX" IS '�Ա�1���У�0��Ů';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."MOBILE" IS '�绰';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."BIRTHDAY" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."ADDRESS" IS '��ַ';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_CUSTOMER"  IS '�ͻ���';

CREATE TABLE T_DEPARTMENT 
(	ID NUMBER(10,0) NOT NULL, 
	MANAGER_ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	TELEPHONE VARCHAR2(20), 
	FAX VARCHAR2(20), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."ID" IS '���';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."MANAGER_ID" IS '���ž���';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."NAME" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."TELEPHONE" IS '�绰';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."FAX" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_DEPARTMENT"  IS '���ű�';


CREATE TABLE T_DEPOSIT 
(	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	WAREHOUSE_ID NUMBER(10,0) NOT NULL, 
	QUANTITY NUMBER(10,0) NOT NULL, 
	WARN_QUANTITY NUMBER(10,0) NOT NULL, 
	PRE_QUANTITY NUMBER(10,0) NOT NULL, 
	REMARK VARCHAR2(200),
	PRIMARY KEY(PRODUCT_ID,WAREHOUSE_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."PRODUCT_ID" IS '��Ʒ���';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."WAREHOUSE_ID" IS '�ֿ���';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."QUANTITY" IS '�����';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."WARN_QUANTITY" IS 'Ԥ�����';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."PRE_QUANTITY" IS 'Ԥռ���';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_DEPOSIT"  IS '��ű�';

CREATE TABLE T_EMPLOYEE 
(	ID NUMBER(10,0) NOT NULL, 
	DEPARTMENT_ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	STATUS NUMBER(10,0), 
	SEX NUMBER(10,0), 
	EMAIL VARCHAR2(50), 
	MOBILE VARCHAR2(20), 
	BIRTHDAY DATE, 
	EDUCATION VARCHAR2(20), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);

COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."ID" IS 'Ա�����';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."DEPARTMENT_ID" IS '���ű��';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."NAME" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."STATUS" IS '��ְ״̬,0����ְ��1����ְ';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."SEX" IS '�Ա�1���У�0��Ů';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."EMAIL" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."MOBILE" IS '��ϵ�绰';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."BIRTHDAY" IS '��������';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."EDUCATION" IS '���ѧ��';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_EMPLOYEE"  IS 'Ա����';

CREATE TABLE T_LOGISTICS 
(	ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	LINKMAN VARCHAR2(20), 
	MOBILE VARCHAR2(20), 
	ADDRESS VARCHAR2(100), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."ID" IS '���';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."NAME" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."LINKMAN" IS '��ϵ��';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."MOBILE" IS '�绰';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."ADDRESS" IS '��ַ';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_LOGISTICS"  IS '�ֿ��';

CREATE TABLE T_PRODUCT 
(	ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	CATEGORY VARCHAR2(20), 
	SPECS VARCHAR2(20), 
	MODEL VARCHAR2(20), 
	UNIT VARCHAR2(10), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."ID" IS '���';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."NAME" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."CATEGORY" IS '���';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."SPECS" IS '���';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."MODEL" IS '�ͺ�';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."UNIT" IS '������λ';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_PRODUCT"  IS '��Ʒ��';

CREATE TABLE T_PURCHASE 
(	ID NUMBER(10,0) NOT NULL, 
	SUPPLIER_ID NUMBER(10,0) NOT NULL, 
	BUYER_ID NUMBER(10,0) NOT NULL, 
	PURCHASE_DATE DATE NOT NULL, 
	APPROVAL_STATUS NUMBER(10,0) NOT NULL, 
	SUPPLY_STATUS NUMBER(10,0) NOT NULL, 
	DEAD_LINE DATE NOT NULL, 
	DELIVERY_ADDRESS VARCHAR2(100), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."ID" IS '�ɹ������';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."SUPPLIER_ID" IS '��Ӧ�̱��';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."BUYER_ID" IS '�ɹ�Ա���';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."PURCHASE_DATE" IS '�ɹ�����';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."APPROVAL_STATUS" IS '����״̬��0���½���1������ͨ����2�������ܾ�';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."SUPPLY_STATUS" IS '����״̬��0��δ��⣬1��������⣬2��ȫ�����';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."DEAD_LINE" IS 'Ҫ������';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."DELIVERY_ADDRESS" IS '������ַ';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_PURCHASE"  IS '�ɹ�����';

CREATE TABLE T_PURCHASE_DETAILS 
(	ID NUMBER(10,0) NOT NULL, 
	PURCHASE_ID NUMBER(10,0) NOT NULL, 
	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	PRICE NUMBER(38,2) NOT NULL, 
	AMOUNT NUMBER(10,0) NOT NULL, 
	IN_AMOUNT NUMBER(10,0), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID,PURCHASE_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."ID" IS '�ɹ���ϸ�����';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."PURCHASE_ID" IS '�ɹ������';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."PRODUCT_ID" IS '��Ʒ���';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."PRICE" IS '�۸�';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."AMOUNT" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."IN_AMOUNT" IS '���������';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_PURCHASE_DETAILS"  IS '�ɹ���ϸ����';

CREATE TABLE T_PURCHASE_IN 
(	ID NUMBER(10,0) NOT NULL, 
	PURCHASE_ID NUMBER(10,0) NOT NULL, 
	EMPLOYEE_ID NUMBER(10,0) NOT NULL, 
	IN_DATE DATE NOT NULL, 
	SUPPLIER VARCHAR2(20), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."ID" IS '�ɹ���ⵥ���';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."PURCHASE_ID" IS '�ɹ������';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."EMPLOYEE_ID" IS '�ֹ�Ա���';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."IN_DATE" IS '���ʱ��';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."SUPPLIER" IS '������';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_PURCHASE_IN"  IS '�ɹ���ⵥ��';

CREATE TABLE T_PURCHASE_IN_DETAILS 
(	ID NUMBER(10,0) NOT NULL, 
	PURCHASE_IN_ID NUMBER(10,0) NOT NULL, 
	PRODUCT_ID NUMBER(10,0), 
	AMOUNT NUMBER(10,0),
	PRIMARY KEY(ID,PURCHASE_IN_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN_DETAILS"."ID" IS '�ɹ������ϸ����';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN_DETAILS"."PURCHASE_IN_ID" IS '�ɹ���ⵥ��';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN_DETAILS"."PRODUCT_ID" IS '��Ʒ���';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN_DETAILS"."AMOUNT" IS '����';
COMMENT ON TABLE "INVENTORY"."T_PURCHASE_IN_DETAILS"  IS '�ɹ������ϸ����';

CREATE TABLE T_SALES 
(	ID NUMBER(10,0) NOT NULL, 
	CUSTOMER_ID NUMBER(10,0) NOT NULL, 
	SELLER_ID NUMBER(10,0) NOT NULL, 
	SELL_DATE DATE, 
	STATUS NUMBER(10,0), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SALES"."ID" IS '���۵����';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."CUSTOMER_ID" IS '�ͻ����';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."SELLER_ID" IS '����Ա���';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."SELL_DATE" IS '��������';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."STATUS" IS '״̬��0��δ���⣬1�����ֳ��⣬2��ȫ������';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_SALES"  IS '���۵���';

CREATE TABLE T_SALES_DETAILS 
(	ID NUMBER(10,0) NOT NULL, 
	SALES_ID NUMBER(10,0) NOT NULL, 
	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	PRICE NUMBER(38,2) NOT NULL, 
	AMOUNT NUMBER(10,0) NOT NULL, 
	OUT_AMOUNT NUMBER(10,0),
	PRIMARY KEY(ID,SALES_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."ID" IS '������ϸ����';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."SALES_ID" IS '���۵����';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."PRODUCT_ID" IS '��Ʒ���';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."PRICE" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."AMOUNT" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."OUT_AMOUNT" IS '��������';
COMMENT ON TABLE "INVENTORY"."T_SALES_DETAILS"  IS '������ϸ����';

CREATE TABLE T_SALES_OUT 
(	ID NUMBER(10,0) NOT NULL, 
	SALES_ID NUMBER(10,0) NOT NULL, 
	EMPLOYEE_ID NUMBER(10,0) NOT NULL, 
	LOGISTICS_ID NUMBER(10,0) NOT NULL, 
	LOGISTICS_NO VARCHAR2(50) NOT NULL, 
	OUT_DATE DATE NOT NULL, 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."ID" IS '���۳��ⵥ��';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."SALES_ID" IS '���۵����';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."EMPLOYEE_ID" IS '�ֹ�Ա���';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."LOGISTICS_ID" IS '������˾���';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."LOGISTICS_NO" IS '��������';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."OUT_DATE" IS '��������';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_SALES_OUT"  IS '���۳��ⵥ��';

CREATE TABLE T_SALES_OUT_DETAILS 
(	ID NUMBER(10,0) NOT NULL, 
	SALES_OUT_ID NUMBER(10,0) NOT NULL, 
	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	AMOUNT NUMBER(10,0)  NOT NULL,
	PRIMARY KEY(ID,SALES_OUT_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT_DETAILS"."ID" IS '���۳�����ϸ����';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT_DETAILS"."SALES_OUT_ID" IS '���۳��ⵥ��';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT_DETAILS"."PRODUCT_ID" IS '��Ʒ���';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT_DETAILS"."AMOUNT" IS '����';
COMMENT ON TABLE "INVENTORY"."T_SALES_OUT_DETAILS"  IS '���۳�����ϸ����';

CREATE TABLE T_SUPPLIER 
(	ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(50) NOT NULL, 
	GRADE VARCHAR2(20), 
	TELEPHONE VARCHAR2(20), 
	FAX VARCHAR2(20), 
	ADDRESS VARCHAR2(100), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."ID" IS '���';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."NAME" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."GRADE" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."TELEPHONE" IS '�绰';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."FAX" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."ADDRESS" IS '��ַ';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_SUPPLIER"  IS '��Ӧ�̱�';

CREATE TABLE T_SUPPLY 
(	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	SUPPLIER_ID NUMBER(10,0) NOT NULL, 
	PRICE NUMBER(38,2) NOT NULL, 
	REMARK VARCHAR2(200),
	PRIMARY KEY(PRODUCT_ID,SUPPLIER_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SUPPLY"."PRODUCT_ID" IS '��Ʒ���';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLY"."SUPPLIER_ID" IS '��Ӧ�̱��';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLY"."PRICE" IS '�۸�';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLY"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_SUPPLY"  IS '��Ӧ��';

CREATE TABLE T_WAREHOUSE 
(	ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	TELEPHONE VARCHAR2(20), 
	FAX VARCHAR2(20), 
	ADDRESS VARCHAR2(100), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."ID" IS '���';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."NAME" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."TELEPHONE" IS '�绰';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."FAX" IS '����';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."ADDRESS" IS '��ַ';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."REMARK" IS '��ע';
COMMENT ON TABLE "INVENTORY"."T_WAREHOUSE"  IS '�ֿ��';


--������������
CREATE SEQUENCE  SEQ_DEPARTMENT_ID  MINVALUE 1 INCREMENT BY 1 START WITH 11001;
CREATE SEQUENCE  SEQ_EMPLOYEE_ID  MINVALUE 1 INCREMENT BY 1 START WITH 12001;
CREATE SEQUENCE  SEQ_PRODUCT_ID  MINVALUE 1 INCREMENT BY 1 START WITH 21001;
CREATE SEQUENCE  SEQ_SUPPLIER_ID  MINVALUE 1 INCREMENT BY 1 START WITH 22001;
CREATE SEQUENCE  SEQ_PURCHASE_ID  MINVALUE 1 INCREMENT BY 1 START WITH 23001;
CREATE SEQUENCE  SEQ_PURCHASE_DTL_ID  MINVALUE 1 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE  SEQ_CUSTOMER_ID  MINVALUE 1 INCREMENT BY 1 START WITH 31001;
CREATE SEQUENCE  SEQ_SALES_ID  MINVALUE 1 INCREMENT BY 1 START WITH 32001;
CREATE SEQUENCE  SEQ_SALES_DTL_ID  MINVALUE 1 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE  SEQ_PURCHASE_IN_ID  MINVALUE 1 INCREMENT BY 1 START WITH 41001;
CREATE SEQUENCE  SEQ_PURCHASE_IN_DTL_ID  MINVALUE 1 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE  SEQ_SALES_OUT_ID  MINVALUE 1 INCREMENT BY 1 START WITH 42001;
CREATE SEQUENCE  SEQ_SALES_OUT_DTL_ID  MINVALUE 1 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE  SEQ_LOGISTICS_ID  MINVALUE 1 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE  SEQ_WAREHOUSE_ID  MINVALUE 1 INCREMENT BY 1 START WITH 1;
   

--��������������
CREATE OR REPLACE TRIGGER TRIG_CUSTOMER_ID BEFORE INSERT OR UPDATE ON t_customer
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_customer_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_customer;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_customer_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_CUSTOMER_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_DEPARTMENT_ID BEFORE INSERT OR UPDATE ON t_department
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_department_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_department;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_department_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_DEPARTMENT_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_EMPLOYEE_ID BEFORE INSERT OR UPDATE ON t_employee
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_employee_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_employee;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_employee_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_EMPLOYEE_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_LOGISTICS_ID BEFORE INSERT OR UPDATE ON t_logistics
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_logistics_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_logistics;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_logistics_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_LOGISTICS_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_PRODUCT_ID BEFORE INSERT OR UPDATE ON t_product
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_product_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_product;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_product_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   -- assign the value from the sequence to emulate the identity column
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_PRODUCT_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_PURCHASE_DTL_ID BEFORE INSERT OR UPDATE ON t_purchase_details
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_purchase_dtl_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_purchase_details;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_purchase_dtl_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_PURCHASE_DTL_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_PURCHASE_ID BEFORE INSERT OR UPDATE ON t_purchase
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_purchase_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_purchase;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_purchase_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_PURCHASE_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_PURCHASE_IN_DTL_ID BEFORE INSERT OR UPDATE ON t_purchase_in_details
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_purchase_in_dtl_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_purchase_in_details;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_purchase_in_dtl_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_PURCHASE_IN_DTL_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_PURCHASE_IN_ID BEFORE INSERT OR UPDATE ON t_purchase_in
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_purchase_in_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_purchase_in;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_purchase_in_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_PURCHASE_IN_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_SALES_DETAILS_ID BEFORE INSERT OR UPDATE ON t_sales_details
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_sales_dtl_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_sales_details;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_sales_dtl_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_SALES_DETAILS_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_SALES_ID BEFORE INSERT OR UPDATE ON t_sales
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_sales_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_sales;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_sales_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_SALES_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_SALES_OUT_DTL_ID BEFORE INSERT OR UPDATE ON t_sales_out_details
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_sales_out_dtl_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_sales_out_details;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_sales_out_dtl_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_SALES_OUT_DTL_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_SALES_OUT_ID BEFORE INSERT OR UPDATE ON t_sales_out
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_sales_out_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_sales_out;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_sales_out_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_SALES_OUT_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_SUPPLIER_ID BEFORE INSERT OR UPDATE ON t_supplier
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_supplier_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_supplier;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_supplier_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_SUPPLIER_ID ENABLE;


CREATE OR REPLACE TRIGGER TRIG_WAREHOUSE_ID BEFORE INSERT OR UPDATE ON t_warehouse
FOR EACH ROW
DECLARE 
v_newval NUMBER(12) := 0;
v_incval NUMBER(12) := 0;
BEGIN
  IF INSERTING AND :new.id IS NULL THEN
    SELECT  seq_warehouse_id.NEXTVAL INTO v_newval FROM DUAL;
    IF v_newval = 1 THEN 
      SELECT NVL(max(id),0) INTO v_newval FROM t_warehouse;
      v_newval := v_newval + 1;
      LOOP
           EXIT WHEN v_incval>=v_newval;
           SELECT seq_warehouse_id.nextval INTO v_incval FROM dual;
      END LOOP;
    END IF;
   :new.id := v_newval;
  END IF;
END;
/
ALTER TRIGGER TRIG_WAREHOUSE_ID ENABLE;

--��ʼ������
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12001,'�ܾ�����','021-31233401','021-31233401','������˾�ش�����Լ������ŵĹ���');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12002,'�ɹ���','021-33233402','021-33233402','������˾��Ӧ�̺���Ʒ�ɹ��ȹ���');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12004,'���۲�','021-33233403','021-33233403','������˾�ͻ������۹���');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12006,'�ִ���','021-33233404','021-33233404','������˾�ֿ���Ʒ��������ȹ���');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12008,'��Ϣ��','021-33233405','021-33233405','������˾��Ӳ����ʹ�ú�ά������');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12009,'����','021-31233406','021-31233406','������˾��������ո�����ȹ���');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12010,'������','021-31233407','021-31233407','������˾�����ƶȺͼ��ɵȹ���');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12011,'���²�','021-31233408','021-31233408','������˾������Դ��Ƹ��ѵ���õȹ���');

insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11001,'���и�',1,1,'12001@td.com','13771535001',to_date('10-5�� -78','DD-MON-RR'),'��ʿ�о���');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11002,'����',1,1,'12002@td.com','13771535002',to_date('08-10��-85','DD-MON-RR'),'˶ʿ�о���');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11002,'����',1,1,'12003@td.com','13771535003',to_date('23-6�� -88','DD-MON-RR'),'����');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11003,'��ʤ��',1,0,'12004@td.com','13771535004',to_date('09-10��-86','DD-MON-RR'),'����');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11003,'����ǿ',1,1,'12005@td.com','13771535005',to_date('18-11��-87','DD-MON-RR'),'����');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11004,'����',1,1,'12006@td.com','13771535006',to_date('02-3�� -84','DD-MON-RR'),'˶ʿ�о���');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11004,'��һƽ',1,1,'12007@td.com','13771535007',to_date('19-2�� -87','DD-MON-RR'),'����');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11005,'����',1,1,'12008@td.com','13771535008',to_date('25-7�� -89','DD-MON-RR'),'˶ʿ�о���');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11006,'���',1,0,'12009@td.com','13771535009',to_date('09-11��-89','DD-MON-RR'),'����');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11007,'�Ź���',1,1,'12010@td.com','13771535010',to_date('09-11��-89','DD-MON-RR'),'����');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11008,'���',1,0,'12011@td.com','13771535011',to_date('09-11��-89','DD-MON-RR'),'����');

insert into T_CUSTOMER (ID,NAME,GRADE,POINTS,SEX,MOBILE,BIRTHDAY,ADDRESS) values (SEQ_CUSTOMER_ID.NEXTVAL,'½����',1,0,1,'13892231221',to_date('09-11��-95','DD-MON-RR'),'�Ϻ����ɽ�����·321��');
insert into T_CUSTOMER (ID,NAME,GRADE,POINTS,SEX,MOBILE,BIRTHDAY,ADDRESS) values (SEQ_CUSTOMER_ID.NEXTVAL,'����',1,0,1,'15678902515',to_date('13-1�� -86','DD-MON-RR'),'�Ϻ���������ս�·207��');
insert into T_CUSTOMER (ID,NAME,GRADE,POINTS,SEX,MOBILE,BIRTHDAY,ADDRESS) values (SEQ_CUSTOMER_ID.NEXTVAL,'����',1,0,0,'139467891011',to_date('08-7�� -88','DD-MON-RR'),'�Ϻ��мζ������·2109��');

insert into T_SUPPLIER (ID,NAME,GRADE,TELEPHONE,FAX,ADDRESS,REMARK) values (SEQ_SUPPLIER_ID.NEXTVAL,'�����������ͱ���Ʒ��','ս��ͬ��','0512-65451745','0512-65451745','����ʡ���������������·1201��','��Ӫ�����ͱ���Ʒ��');
insert into T_SUPPLIER (ID,NAME,GRADE,TELEPHONE,FAX,ADDRESS,REMARK) values (SEQ_SUPPLIER_ID.NEXTVAL,'��ͨ�н�ͨ�����糧','ս��ͬ��','0513-65328901','0513-65328901','����ʡ��ͨ��ͨ������һ·389��','��Ӫ�����������Ʒ');
insert into T_SUPPLIER (ID,NAME,GRADE,TELEPHONE,FAX,ADDRESS,REMARK) values (SEQ_SUPPLIER_ID.NEXTVAL,'������������������˾','�������','0539-89212210','0539-89212210','ɽ��ʡ�����о��ÿ���������·898��','��Ӫ��������е����������Ʒ��');

insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'��ĥ��������','�ͱ���Ʒ','L����','NN518','˫','ǿ����ĥ�����ͷ�����ץ����ǿ��');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'���ⱳ������','�ͱ���Ʒ','ӫ���L��','TMBX-06DF-1','��','�������⣬�������ϣ��ɶ������֡�');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'��˿ǯ','����е','6���˿ǯ','70301A','��','��Ƶ�ȴ���Ӳ�ȸߣ��Ӻ���Ƽ��з�����');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'ʮ����˿��','����е','#0x100','62302','��','�����ֶ��죬�ӴŴ�����');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'��ͭ���׵���','����','2.5mm^2','2x0.3','100��','�����ȶ����������Ա��������ϻ�������');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'������˨','��е���','6*60','M8','��','304����ֲ��ʡ�');

insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21001,1,200,100,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21002,1,200,100,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21003,1,0,50,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21004,1,0,50,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21005,1,0,100,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21006,1,0,50,0);

insert into T_LOGISTICS (ID,NAME,LINKMAN,MOBILE,ADDRESS) values (SEQ_LOGISTICS_ID.NEXTVAL,'˳������','�Ծ�','13771989332',null);
insert into T_LOGISTICS (ID,NAME,LINKMAN,MOBILE,ADDRESS) values (SEQ_LOGISTICS_ID.NEXTVAL,'�ϴ�����','�ܽ���','15363234881',null);
insert into T_LOGISTICS (ID,NAME,LINKMAN,MOBILE,ADDRESS) values (SEQ_LOGISTICS_ID.NEXTVAL,'��ͨ����','���','13983212331',null);
insert into T_LOGISTICS (ID,NAME,LINKMAN,MOBILE,ADDRESS) values (SEQ_LOGISTICS_ID.NEXTVAL,'Բͨ����','��Ⱥ','18321123882',null);

insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21001,22001,20);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21002,22001,78);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21003,22002,102);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21004,22002,23);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21005,22003,356);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21006,22003,12);

insert into T_WAREHOUSE (ID,NAME,TELEPHONE,FAX,ADDRESS,REMARK) values (SEQ_WAREHOUSE_ID.NEXTVAL,'1�Ųֿ�','02131233343','02131233343','�Ϻ����ɽ���ƽ̩·321��','��˾�ֿܲ�');


--������ͼ
CREATE VIEW V_DEPARTMENT
AS select a.id as id,a.name as name,a.manager_id as manager_id,b.name as manager,a.telephone as telephone,a.fax as fax,a.remark as remark 
from t_department a left join t_employee b on a.manager_id=b.id;

CREATE VIEW V_EMPLOYEE
AS select a.id,a.department_id,b.name as department,a.name,(case when a.status=1 then '��ְ' else '��ְ' end) as status, (case when a.sex = 0 then 'Ů' else '��' end) as sex,a.email,a.mobile,a.birthday,a.education,a.remark 
from t_employee a left join t_department b on a.department_id=b.id;

CREATE VIEW V_CUSTOMER
AS select id,name,(case when grade=2 then '�߼�VIP�ͻ�' when grade=1 then 'VIP�ͻ�' else '��ͨ�ͻ�' end) as grade, points,(case when sex = 0 then 'Ů' else '��' end) as sex,mobile,birthday,address,remark from t_customer;

CREATE VIEW V_DEPOSIT
AS select a.warehouse_id,c.name as warehouse_name,a.product_id,b.name as product_name,a.quantity,a.warn_quantity,a.pre_quantity,a.remark from t_deposit a left join t_product b on a.product_id = b.id left join t_warehouse c on a.warehouse_id=c.id;

create view v_purchase as
select a.id,a.supplier_id,b.name as supplier_name,a.buyer_id,c.name as buyer_name,a.purchase_date,
a.approval_status,(case when a.approval_status = 2 then '�����ܾ�' when a.approval_status = 1 then '����ͨ��' else '�½�' end) as approval,
a.supply_status,(case when a.supply_status = 2 then 'ȫ�����' when a.supply_status = 1 then '�������' else 'δ���' end) as supply,a.dead_line,a.delivery_address,a.remark
from t_purchase a 
left join t_supplier b on a.supplier_id=b.id 
left join t_employee c on a.buyer_id=c.id;

create view v_purchase_details as
select a.id,a.purchase_id,a.product_id,b.name as product_name,a.price,a.amount,a.in_amount,a.remark 
from t_purchase_details a left join t_product b on a.product_id=b.id;