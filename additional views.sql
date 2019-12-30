create view v_purchase_in as
select a.id,a.purchase_id,b.NAME as EMPLOYEE_NAME,a.IN_DATE,a.SUPPLIER,a.REMARK
from t_purchase_in a
left join T_EMPLOYEE b on a.EMPLOYEE_ID=b.id

create view v_purchase_back as
select a.id,a.supplier_id,b.name as supplier_name,a.buyer_id,c.name as buyer_name,a.purchase_back_date,
a.approval_status,(case when a.approval_status = 2 then '审批拒绝' when a.approval_status = 1 then '审批通过' else '新建' end) as approval,
a.supply_status,(case when a.supply_status = 2 then '全部出库' when a.supply_status = 1 then '部分出库' else '未出库' end) as supply,a.dead_line,a.delivery_address,a.remark,a.purchase_id
from t_purchase_back a 
left join t_supplier b on a.supplier_id=b.id 
left join t_employee c on a.buyer_id=c.id;

create or replace view v_purchase_back_details as
select a.id,a.purchase_back_id,a.product_id,b.name as product_name,a.price,a.amount,a.out_amount,a.remark,0 as process_amt 
from t_purchase_back_details a 
left join t_product b on a.product_id=b.id;


create or replace view v_purchase_back_out as
select a.ID,a.purchase_back_id,b.name as EMPLOYEE_name,a.OUT_DATE,a.SUPPLIER,a.REMARK
from t_purchase_back_out a 
left join t_employee b on a.employee_id=b.id;


create or replace view v_purchase_back_out_details as
select a.id,a.purchase_out_id,a.product_id,b.name as product_name,a.amount 
from t_purchase_back_out_details a 
left join t_product b on a.product_id = b.id; 


CREATE OR REPLACE FORCE VIEW  V_SALES_DETAILS ("ID", "SALES_ID", "PRODUCT_ID", "PRODUCT_NAME", "PRICE", "AMOUNT", "OUT_AMOUNT", "PROCESS_AMT") AS 
select a.id,a.sales_id,a.product_id,b.name as product_name,a.price,a.amount,a.out_amount,0 as process_amt  
from t_sales_details a 
left join t_product b on a.product_id=b.id;


CREATE OR REPLACE FORCE VIEW  V_SALES_OUT ("ID", "SALES_ID", "EMPLOYEE_NAME", "OUT_DATE", "LOGISTICS_NO", "LOGISTICS_NAME", "REMARK") AS 
select a.ID,a.SALES_ID,b.name as EMPLOYEE_name,a.OUT_DATE,a.LOGISTICS_NO,c.name as LOGISTICS_name, a.REMARK 
from T_SALES_OUT a 
left join t_employee b on a.employee_id=b.id 
left join T_LOGISTICS c on a.LOGISTICS_ID=c.id;


CREATE OR REPLACE FORCE VIEW  V_SALES_OUT_DETAILS ("ID", "SALES_OUT_ID", "PRODUCT_ID", "PRODUCT_NAME", "AMOUNT") AS 
select a.id,a.sales_out_id,a.product_id,b.name as product_name,a.amount 
from t_sales_out_details a 
left join t_product b on a.product_id = b.id;

create or replace view v_sales as
select a.id,b.name as customer_name,c.name as seller_name,a.sell_date,(case when a.status = 2 then '全部出库' when a.status = 1 then '部分出库' else '未出库' end) as status,a.remark 
from t_sales a 
left join t_customer b on a.customer_id=b.id 
left join t_employee c on a.seller_id=c.id;

create or replace view v_sales_back as
select a.id,b.name as customer_name,c.name as seller_name,a.sell_back_date,(case when a.status = 2 then '全部入库' when a.status = 1 then '部分入库' else '未入库' end) as status,a.remark 
from t_sales_back a 
left join t_customer b on a.customer_id=b.id 
left join t_employee c on a.seller_id=c.id;

CREATE OR REPLACE FORCE VIEW  V_SALES_BACK_DETAILS ("ID", "SALES_BACK_ID", "PRODUCT_ID", "PRODUCT_NAME", "PRICE", "AMOUNT", "IN_AMOUNT", "PROCESS_AMT") AS 
select a.id,a.sales_back_id,a.product_id,b.name as product_name,a.price,a.amount,a.in_amount,0 as process_amt  
from t_sales_back_details a 
left join t_product b on a.product_id=b.id;


CREATE OR REPLACE FORCE VIEW  V_SALES_BACK_IN ("ID", "SALES_BACK_ID", "EMPLOYEE_NAME", "IN_DATE", "LOGISTICS_NO", "LOGISTICS_NAME", "REMARK") AS
select a.ID,a.sales_back_id,b.name as EMPLOYEE_name,a.IN_DATE,a.LOGISTICS_NO,c.name as LOGISTICS_name, a.REMARK
from T_SALES_BACK_IN a 
left join t_employee b on a.employee_id=b.id 
left join T_LOGISTICS c on a.LOGISTICS_ID=c.id;


CREATE OR REPLACE FORCE VIEW  V_SALES_BACK_IN_DETAILS ("ID", "SALES_BACK_IN_ID", "PRODUCT_ID", "PRODUCT_NAME", "AMOUNT") AS
select a.id,a.sales_back_in_id,a.product_id,b.name as product_name,a.amount 
from t_sales_back_in_details a 
left join t_product b on a.product_id = b.id;


--采退单创建明细视图
create view v_create_purchase_back_details as
select a.id,a.purchase_id,a.product_id,b.name as product_name,a.price,a.amount,a.in_amount,c.quantity as deposit_amount,0 as process_amt,a.remark 
from t_purchase_details a 
left join t_product b on a.product_id=b.id
left join t_deposit c on a.product_id=c.product_id;
