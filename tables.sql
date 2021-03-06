--创建表
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
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."ID" IS '编号';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."NAME" IS '名称';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."GRADE" IS '等级,0：普通客户，1：VIP客户，2：高级VIP客户';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."POINTS" IS '积分';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."SEX" IS '性别，1：男，0：女';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."MOBILE" IS '电话';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."BIRTHDAY" IS '生日';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."ADDRESS" IS '地址';
COMMENT ON COLUMN "INVENTORY"."T_CUSTOMER"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_CUSTOMER"  IS '客户表';

CREATE TABLE T_DEPARTMENT 
(	ID NUMBER(10,0) NOT NULL, 
	MANAGER_ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	TELEPHONE VARCHAR2(20), 
	FAX VARCHAR2(20), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."ID" IS '编号';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."MANAGER_ID" IS '部门经理';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."NAME" IS '名称';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."TELEPHONE" IS '电话';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."FAX" IS '传真';
COMMENT ON COLUMN "INVENTORY"."T_DEPARTMENT"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_DEPARTMENT"  IS '部门表';


CREATE TABLE T_DEPOSIT 
(	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	WAREHOUSE_ID NUMBER(10,0) NOT NULL, 
	QUANTITY NUMBER(10,0) NOT NULL, 
	WARN_QUANTITY NUMBER(10,0) NOT NULL, 
	PRE_QUANTITY NUMBER(10,0) NOT NULL, 
	REMARK VARCHAR2(200),
	PRIMARY KEY(PRODUCT_ID,WAREHOUSE_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."PRODUCT_ID" IS '商品编号';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."WAREHOUSE_ID" IS '仓库编号';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."QUANTITY" IS '库存量';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."WARN_QUANTITY" IS '预警库存';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."PRE_QUANTITY" IS '预占库存';
COMMENT ON COLUMN "INVENTORY"."T_DEPOSIT"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_DEPOSIT"  IS '存放表';

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

COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."ID" IS '员工编号';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."DEPARTMENT_ID" IS '部门编号';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."NAME" IS '名称';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."STATUS" IS '在职状态,0：离职，1：在职';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."SEX" IS '性别，1：男，0：女';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."EMAIL" IS '邮箱';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."MOBILE" IS '联系电话';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."BIRTHDAY" IS '出生年月';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."EDUCATION" IS '最高学历';
COMMENT ON COLUMN "INVENTORY"."T_EMPLOYEE"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_EMPLOYEE"  IS '员工表';

CREATE TABLE T_LOGISTICS 
(	ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	LINKMAN VARCHAR2(20), 
	MOBILE VARCHAR2(20), 
	ADDRESS VARCHAR2(100), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."ID" IS '编号';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."NAME" IS '名称';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."LINKMAN" IS '联系人';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."MOBILE" IS '电话';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."ADDRESS" IS '地址';
COMMENT ON COLUMN "INVENTORY"."T_LOGISTICS"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_LOGISTICS"  IS '仓库表';

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
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."ID" IS '编号';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."NAME" IS '名称';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."CATEGORY" IS '类别';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."SPECS" IS '规格';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."MODEL" IS '型号';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."UNIT" IS '计量单位';
COMMENT ON COLUMN "INVENTORY"."T_PRODUCT"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_PRODUCT"  IS '商品表';

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
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."ID" IS '采购单编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."SUPPLIER_ID" IS '供应商编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."BUYER_ID" IS '采购员编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."PURCHASE_DATE" IS '采购日期';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."APPROVAL_STATUS" IS '审批状态，0：新建，1：审批通过，2：审批拒绝';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."SUPPLY_STATUS" IS '供货状态，0：未入库，1：部分入库，2：全部入库';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."DEAD_LINE" IS '要货日期';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."DELIVERY_ADDRESS" IS '供货地址';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_PURCHASE"  IS '采购单表';

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
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."ID" IS '采购明细单编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."PURCHASE_ID" IS '采购单编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."PRODUCT_ID" IS '商品编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."PRICE" IS '价格';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."AMOUNT" IS '数量';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."IN_AMOUNT" IS '已入库数量';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_DETAILS"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_PURCHASE_DETAILS"  IS '采购明细单表';

CREATE TABLE T_PURCHASE_IN 
(	ID NUMBER(10,0) NOT NULL, 
	PURCHASE_ID NUMBER(10,0) NOT NULL, 
	EMPLOYEE_ID NUMBER(10,0) NOT NULL, 
	IN_DATE DATE NOT NULL, 
	SUPPLIER VARCHAR2(20), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."ID" IS '采购入库单编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."PURCHASE_ID" IS '采购单编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."EMPLOYEE_ID" IS '仓管员编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."IN_DATE" IS '入库时间';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."SUPPLIER" IS '供货人';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_PURCHASE_IN"  IS '采购入库单表';

CREATE TABLE T_PURCHASE_IN_DETAILS 
(	ID NUMBER(10,0) NOT NULL, 
	PURCHASE_IN_ID NUMBER(10,0) NOT NULL, 
	PRODUCT_ID NUMBER(10,0), 
	AMOUNT NUMBER(10,0),
	PRIMARY KEY(ID,PURCHASE_IN_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN_DETAILS"."ID" IS '采购入库明细单号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN_DETAILS"."PURCHASE_IN_ID" IS '采购入库单号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN_DETAILS"."PRODUCT_ID" IS '商品编号';
COMMENT ON COLUMN "INVENTORY"."T_PURCHASE_IN_DETAILS"."AMOUNT" IS '数量';
COMMENT ON TABLE "INVENTORY"."T_PURCHASE_IN_DETAILS"  IS '采购入库明细单表';

CREATE TABLE T_SALES 
(	ID NUMBER(10,0) NOT NULL, 
	CUSTOMER_ID NUMBER(10,0) NOT NULL, 
	SELLER_ID NUMBER(10,0) NOT NULL, 
	SELL_DATE DATE, 
	STATUS NUMBER(10,0), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SALES"."ID" IS '销售单编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."CUSTOMER_ID" IS '客户编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."SELLER_ID" IS '销售员编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."SELL_DATE" IS '销售日期';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."STATUS" IS '状态，0：未出库，1：部分出库，2：全部出库';
COMMENT ON COLUMN "INVENTORY"."T_SALES"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_SALES"  IS '销售单表';

CREATE TABLE T_SALES_DETAILS 
(	ID NUMBER(10,0) NOT NULL, 
	SALES_ID NUMBER(10,0) NOT NULL, 
	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	PRICE NUMBER(38,2) NOT NULL, 
	AMOUNT NUMBER(10,0) NOT NULL, 
	OUT_AMOUNT NUMBER(10,0),
	PRIMARY KEY(ID,SALES_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."ID" IS '销售明细单号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."SALES_ID" IS '销售单编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."PRODUCT_ID" IS '商品编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."PRICE" IS '单价';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."AMOUNT" IS '数量';
COMMENT ON COLUMN "INVENTORY"."T_SALES_DETAILS"."OUT_AMOUNT" IS '出库数量';
COMMENT ON TABLE "INVENTORY"."T_SALES_DETAILS"  IS '销售明细单表';

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
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."ID" IS '销售出库单号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."SALES_ID" IS '销售单编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."EMPLOYEE_ID" IS '仓管员编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."LOGISTICS_ID" IS '物流公司编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."LOGISTICS_NO" IS '物流单号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."OUT_DATE" IS '出库日期';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_SALES_OUT"  IS '销售出库单表';

CREATE TABLE T_SALES_OUT_DETAILS 
(	ID NUMBER(10,0) NOT NULL, 
	SALES_OUT_ID NUMBER(10,0) NOT NULL, 
	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	AMOUNT NUMBER(10,0)  NOT NULL,
	PRIMARY KEY(ID,SALES_OUT_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT_DETAILS"."ID" IS '销售出库明细单号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT_DETAILS"."SALES_OUT_ID" IS '销售出库单号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT_DETAILS"."PRODUCT_ID" IS '商品编号';
COMMENT ON COLUMN "INVENTORY"."T_SALES_OUT_DETAILS"."AMOUNT" IS '数量';
COMMENT ON TABLE "INVENTORY"."T_SALES_OUT_DETAILS"  IS '销售出库明细单表';

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
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."ID" IS '编号';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."NAME" IS '名称';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."GRADE" IS '级别';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."TELEPHONE" IS '电话';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."FAX" IS '传真';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."ADDRESS" IS '地址';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLIER"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_SUPPLIER"  IS '供应商表';

CREATE TABLE T_SUPPLY 
(	PRODUCT_ID NUMBER(10,0) NOT NULL, 
	SUPPLIER_ID NUMBER(10,0) NOT NULL, 
	PRICE NUMBER(38,2) NOT NULL, 
	REMARK VARCHAR2(200),
	PRIMARY KEY(PRODUCT_ID,SUPPLIER_ID)
);
COMMENT ON COLUMN "INVENTORY"."T_SUPPLY"."PRODUCT_ID" IS '商品编号';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLY"."SUPPLIER_ID" IS '供应商编号';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLY"."PRICE" IS '价格';
COMMENT ON COLUMN "INVENTORY"."T_SUPPLY"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_SUPPLY"  IS '供应表';

CREATE TABLE T_WAREHOUSE 
(	ID NUMBER(10,0) NOT NULL, 
	NAME VARCHAR2(20) NOT NULL, 
	TELEPHONE VARCHAR2(20), 
	FAX VARCHAR2(20), 
	ADDRESS VARCHAR2(100), 
	REMARK VARCHAR2(200),
	PRIMARY KEY(ID)
);
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."ID" IS '编号';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."NAME" IS '名称';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."TELEPHONE" IS '电话';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."FAX" IS '传真';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."ADDRESS" IS '地址';
COMMENT ON COLUMN "INVENTORY"."T_WAREHOUSE"."REMARK" IS '备注';
COMMENT ON TABLE "INVENTORY"."T_WAREHOUSE"  IS '仓库表';


--创建主键序列
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
   

--创建主键触发器
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

--初始化数据
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12001,'总经理室','021-31233401','021-31233401','管理公司重大决策以及各部门的工作');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12002,'采购部','021-33233402','021-33233402','管理公司供应商和商品采购等工作');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12004,'销售部','021-33233403','021-33233403','管理公司客户和销售工作');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12006,'仓储部','021-33233404','021-33233404','管理公司仓库商品出库和入库等工作');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12008,'信息部','021-33233405','021-33233405','管理公司软硬件的使用和维护工作');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12009,'财务部','021-31233406','021-31233406','管理公司对外对内收付款项等工作');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12010,'行政部','021-31233407','021-31233407','管理公司各项制度和纪律等工作');
insert into T_DEPARTMENT (ID,MANAGER_ID,NAME,TELEPHONE,FAX,REMARK) values (SEQ_DEPARTMENT_ID.NEXTVAL,12011,'人事部','021-31233408','021-31233408','管理公司人力资源招聘培训任用等工作');

insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11001,'李有富',1,1,'12001@td.com','13771535001',to_date('10-5月 -78','DD-MON-RR'),'博士研究生');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11002,'张勇',1,1,'12002@td.com','13771535002',to_date('08-10月-85','DD-MON-RR'),'硕士研究生');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11002,'王钢',1,1,'12003@td.com','13771535003',to_date('23-6月 -88','DD-MON-RR'),'本科');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11003,'赵胜男',1,0,'12004@td.com','13771535004',to_date('09-10月-86','DD-MON-RR'),'本科');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11003,'黄天强',1,1,'12005@td.com','13771535005',to_date('18-11月-87','DD-MON-RR'),'本科');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11004,'李鹏',1,1,'12006@td.com','13771535006',to_date('02-3月 -84','DD-MON-RR'),'硕士研究生');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11004,'陈一平',1,1,'12007@td.com','13771535007',to_date('19-2月 -87','DD-MON-RR'),'本科');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11005,'戴东',1,1,'12008@td.com','13771535008',to_date('25-7月 -89','DD-MON-RR'),'硕士研究生');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11006,'李娟',1,0,'12009@td.com','13771535009',to_date('09-11月-89','DD-MON-RR'),'本科');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11007,'张国栋',1,1,'12010@td.com','13771535010',to_date('09-11月-89','DD-MON-RR'),'本科');
insert into T_EMPLOYEE (ID,DEPARTMENT_ID,NAME,STATUS,SEX,EMAIL,MOBILE,BIRTHDAY,EDUCATION) values (SEQ_EMPLOYEE_ID.NEXTVAL,11008,'李芬',1,0,'12011@td.com','13771535011',to_date('09-11月-89','DD-MON-RR'),'本科');

insert into T_CUSTOMER (ID,NAME,GRADE,POINTS,SEX,MOBILE,BIRTHDAY,ADDRESS) values (SEQ_CUSTOMER_ID.NEXTVAL,'陆博文',1,0,1,'13892231221',to_date('09-11月-95','DD-MON-RR'),'上海市松江区启路321号');
insert into T_CUSTOMER (ID,NAME,GRADE,POINTS,SEX,MOBILE,BIRTHDAY,ADDRESS) values (SEQ_CUSTOMER_ID.NEXTVAL,'许彬',1,0,1,'15678902515',to_date('13-1月 -86','DD-MON-RR'),'上海市徐汇区钦江路207号');
insert into T_CUSTOMER (ID,NAME,GRADE,POINTS,SEX,MOBILE,BIRTHDAY,ADDRESS) values (SEQ_CUSTOMER_ID.NEXTVAL,'杨丽',1,0,0,'139467891011',to_date('08-7月 -88','DD-MON-RR'),'上海市嘉定区田丰路2109号');

insert into T_SUPPLIER (ID,NAME,GRADE,TELEPHONE,FAX,ADDRESS,REMARK) values (SEQ_SUPPLIER_ID.NEXTVAL,'苏州市万利劳保用品厂','战略同盟','0512-65451745','0512-65451745','江苏省苏州市相城区永昌路1201号','主营生产劳保用品。');
insert into T_SUPPLIER (ID,NAME,GRADE,TELEPHONE,FAX,ADDRESS,REMARK) values (SEQ_SUPPLIER_ID.NEXTVAL,'南通市金通五金机电厂','战略同盟','0513-65328901','0513-65328901','江苏省南通市通州区五一路389号','主营各类五金机电产品');
insert into T_SUPPLIER (ID,NAME,GRADE,TELEPHONE,FAX,ADDRESS,REMARK) values (SEQ_SUPPLIER_ID.NEXTVAL,'临沂市明瑞五金配件公司','合作伙伴','0539-89212210','0539-89212210','山东省临沂市经济开发区海升路898号','主营各类五金机械、五金配件商品。');

insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'耐磨防滑手套','劳保用品','L均码','NN518','双','强劲耐磨，耐油防腐，抓握力强。');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'反光背心马夹','劳保用品','荧光黄L码','TMBX-06DF-1','件','高亮反光，有型有料，可定制文字。');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'钢丝钳','五金机械','6寸钢丝钳','70301A','把','高频热处理硬度高，加厚设计剪切锋利。');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'十字螺丝刀','五金机械','#0x100','62302','把','铬钒钢锻造，加磁处理。');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'纯铜护套电线','电线','2.5mm^2','2x0.3','100米','电流稳定，高柔韧性保护，抗老化提升。');
insert into T_PRODUCT (ID,NAME,CATEGORY,SPECS,MODEL,UNIT,REMARK) values (SEQ_PRODUCT_ID.NEXTVAL,'膨胀螺栓','机械配件','6*60','M8','箱','304不锈钢材质。');

insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21001,1,200,100,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21002,1,200,100,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21003,1,0,50,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21004,1,0,50,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21005,1,0,100,0);
insert into T_DEPOSIT (PRODUCT_ID,WAREHOUSE_ID,QUANTITY,WARN_QUANTITY,PRE_QUANTITY) values (21006,1,0,50,0);

insert into T_LOGISTICS (ID,NAME,LINKMAN,MOBILE,ADDRESS) values (SEQ_LOGISTICS_ID.NEXTVAL,'顺丰物流','赵军','13771989332',null);
insert into T_LOGISTICS (ID,NAME,LINKMAN,MOBILE,ADDRESS) values (SEQ_LOGISTICS_ID.NEXTVAL,'韵达物流','曹金利','15363234881',null);
insert into T_LOGISTICS (ID,NAME,LINKMAN,MOBILE,ADDRESS) values (SEQ_LOGISTICS_ID.NEXTVAL,'申通物流','李达','13983212331',null);
insert into T_LOGISTICS (ID,NAME,LINKMAN,MOBILE,ADDRESS) values (SEQ_LOGISTICS_ID.NEXTVAL,'圆通物流','田群','18321123882',null);

insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21001,22001,20);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21002,22001,78);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21003,22002,102);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21004,22002,23);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21005,22003,356);
insert into T_SUPPLY (PRODUCT_ID,SUPPLIER_ID,PRICE) values (21006,22003,12);

insert into T_WAREHOUSE (ID,NAME,TELEPHONE,FAX,ADDRESS,REMARK) values (SEQ_WAREHOUSE_ID.NEXTVAL,'1号仓库','02131233343','02131233343','上海市松江区平泰路321号','公司总仓库');


--创建视图
CREATE VIEW V_DEPARTMENT
AS select a.id as id,a.name as name,a.manager_id as manager_id,b.name as manager,a.telephone as telephone,a.fax as fax,a.remark as remark 
from t_department a left join t_employee b on a.manager_id=b.id;

CREATE VIEW V_EMPLOYEE
AS select a.id,a.department_id,b.name as department,a.name,(case when a.status=1 then '在职' else '离职' end) as status, (case when a.sex = 0 then '女' else '男' end) as sex,a.email,a.mobile,a.birthday,a.education,a.remark 
from t_employee a left join t_department b on a.department_id=b.id;

CREATE VIEW V_CUSTOMER
AS select id,name,(case when grade=2 then '高级VIP客户' when grade=1 then 'VIP客户' else '普通客户' end) as grade, points,(case when sex = 0 then '女' else '男' end) as sex,mobile,birthday,address,remark from t_customer;

CREATE VIEW V_DEPOSIT
AS select a.warehouse_id,c.name as warehouse_name,a.product_id,b.name as product_name,a.quantity,a.warn_quantity,a.pre_quantity,a.remark from t_deposit a left join t_product b on a.product_id = b.id left join t_warehouse c on a.warehouse_id=c.id;

create view v_purchase as
select a.id,a.supplier_id,b.name as supplier_name,a.buyer_id,c.name as buyer_name,a.purchase_date,
a.approval_status,(case when a.approval_status = 2 then '审批拒绝' when a.approval_status = 1 then '审批通过' else '新建' end) as approval,
a.supply_status,(case when a.supply_status = 2 then '全部入库' when a.supply_status = 1 then '部分入库' else '未入库' end) as supply,a.dead_line,a.delivery_address,a.remark
from t_purchase a 
left join t_supplier b on a.supplier_id=b.id 
left join t_employee c on a.buyer_id=c.id;

create view v_purchase_details as
select a.id,a.purchase_id,a.product_id,b.name as product_name,a.price,a.amount,a.in_amount,a.remark 
from t_purchase_details a left join t_product b on a.product_id=b.id;