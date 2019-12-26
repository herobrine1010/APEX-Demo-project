---
# 原生bug

页面|错误|错误原因|备注
-|-|-|-
采购入库单列表页面|表或视图不存在|表名错误|
销售单列表页面|表或视图不存在|表名错误|
编辑采购单对话框|提交和删除按钮不显示|？|已解决，不是bug
采购单审核页面|无内容|表名错误|
采购入库列表页面|提交无效||

---
# 新增功能
---
# 新建表
<b><i>销售出库表已经建好了，详情看包总文档.</i></b><br />
<b><i>所有和销退、采退有关的表的命名规则是在对应的销售、采购表后面直接加上"_back"或将"_in"改成"_out".</i></b><br />
<b><i>新建表中的所有字段的英文和原表一致，请参照中文命名理解.</i></b><br />

- 采退表 t_purchase_back

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
采退单编号|id|number(10,0)||N|PK
供应商编号|supplier_id|number(10,0)||N|FK 
采退员编号|buyer_id|number(10,0)||N|FK
采退日期|purchase_date|date||N|  
审批状态|approval_status|smallint|1|N|
退货状态|supply_status|smallint|1|N|
要货日期|dead_line|date||N|
退货地址|delivery_address|varchar2|100|N|
备注|remark|varchar2|200||

- 采退明细表 t_purchase_back_details

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
采退明细单编号|id|number(10,0)||N|PK
采退单编号|purchase_id|number(10,0)||N|PK,FK
商品编号|product_id|number(10,0)||N|FK
价格|price|decimal|10,2|N|
数量|amount|number(10,0)||N|
状态|status|smallint|1|N|
备注|remark|varchar2|200||

- 采退出库表 t_purchase_back_out

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
采退出库单编号|id|number(10,0)||N|PK
采退单编号|purchase_id|number(10,0)||N|FK
仓管员工编号|employee_id|number(10,0)||N|FK
出库时间|in_date|date||N|
收货人|supplier|varchar2|20|N| 
备注|remark|varchar2|200||   

- 采退出库明细表 t_purchase_back_out_details

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
采退出库明细编号|id|number(10,0)||N|PK
采退出库单号|purchase_in_id|number(10,0)||N|PK,FK
商品编号|product_id|number(10,0)||N|FK
数量|amount|number(10,0)||N| 
 
- 销退表 t_sales_back

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
销退单编号|id|number(10,0)||N|PK
客户编号|customer_id|number(10,0)||N|FK
销售员编号|seller_id|number(10,0)||N|FK
销退日期|sell_date|date||N|
状态|status|smallint|1|N|
备注|remark|varchar2|200||

- 销退明细表 t_sales_back_details

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
销退明细单编号|id|number(10,0)||N|PK
销退单编号|sales_id|number(10,0)||N|FK 
商品编号|product_id|number(10,0)||N|FK
单价|price|decimal|(10,2)|N|  
数量|amount|number(10,0)||N|

- 销退入库表 t_sales_back_in

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
销退入库单编号|id|number(10,0)||N|PK
销退单编号|sales_id|number(10,0)||N|FK
仓管员编号|employee_id|number(10,0)||N|FK 
物流公司编号|logistics_id|number(10,0)||N|FK 
物流单号|logistics_no|varchar2|50||   
出库日期|out_date|date||N|  
备注|remark|varchar2|200||

- 销退入库明细表 t_sales_back_in_details

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
销退入库明细单编号|id|number(10,0)||N|PK
销退入库单编号|sales_out_id|number(10,0)||N|PK,FK
商品编号|product_id|number(10,0)||N|FK 
数量|amount|number(10,0)||N|  
 
 
# 命名规则
<b><i>在原文档4.3部分的基础上增加了对应表的编号规则.</i></b><br />

实体|编码规则 
-|-
部门编号|11001  
员工编号|12001  
商品编号|21001  
供应商编号|22001  
采购单编号|23001  
<b>销售管理</b>|24001 
客户编号|31001  
销售单编号|32001  
<b>销退单编号</b>|33001
采购入库单编号|41001  
销售出库单编号|42001
<b>采退出库单编号</b>|43001
<b>销退入库单编号</b>|44001
 
# 新建视图
<b><i>新建了若干视图，与数据库中已有的视图对应</i></b><br />

- V_PURCHASE_BACK (对应V_PURCHASE)
```sql
create or replace view v_purchase_back as
select a.id,a.supplier_id,b.name as supplier_name,a.buyer_id,c.name as buyer_name,a.purchase_date,
a.approval_status,(case when a.approval_status = 2 then '审批拒绝' when a.approval_status = 1 then '审批通过' else '新建' end) as approval,
a.supply_status,(case when a.supply_status = 2 then '全部出库' when a.supply_status = 1 then '部分出库' else '未出库' end) as supply,a.dead_line,a.delivery_address,a.remark
from t_purchase_back a 
left join t_supplier b on a.supplier_id=b.id 
left join t_employee c on a.buyer_id=c.id;
```
- V_PURCHASE_BACK_DETAILS (对应V_PURCHASE_DETAILS)
```sql
create or replace view v_purchase_back_details as
select a.id,a.purchase_id,a.product_id,b.name as product_name,a.price,a.amount,a.out_amount,a.remark,0 as process_amt 
from t_purchase_back_details a left join t_product b on a.product_id=b.id;
```
- V_PURCHASE_BACK_OUT (对应V_PURCHASE_IN)
```sql
create or replace view v_purchase_back_out as
select a.ID,a.PURCHASE_ID,b.name as EMPLOYEE_name,a.OUT_DATE,a.SUPPLIER,a.REMARK
from t_purchase_back_out a left join t_employee b on a.employee_id=b.id;
```
- V_PURCHASE_BACK_OUT_DETAILS (对应V_PURCHASE_IN_DETAILS)
```sql
create or replace view v_purchase_back_out_details as
select a.id,a.purchase_out_id,a.product_id,b.name as product_name,a.amount 
from t_purchase_back_out_details a left join t_product b on a.product_id = b.id; 
```
- V_SALES_BACK (对应V_SALES)
```sql
create or replace view v_sales_back as
select a.id,b.name as customer_name,c.name as seller_name,a.sell_back_date,(case when a.status = 2 then '全部入库' when a.status = 1 then '部分入库' else '未入库' end) as status,a.remark 
from t_sales_back a left join t_customer b on a.customer_id=b.id left join t_employee c on a.seller_id=c.id;
```
