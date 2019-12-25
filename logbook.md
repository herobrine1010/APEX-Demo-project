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
<b><i>销售出库表已经建好了，详情看文档.</i></b><br />
<b><i>所有和销退、采退有关的表的命名规则是在对应的销售、采购表后面直接加上"_back"或将"_in"改成"_out".</i></b><br />
<b><i>新建表中的所有字段的英文和原表一致，请参照理解.</i></b><br />

- 销退表 t_purchase_back

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
采退单编号|id|number(10,0)||N|PK
供应商编号|supplier_id|number(10,0)||N|FK 
采退员编号|buyer_id|number(10,0)||N|FK
采退日期|purchase_date|date||N|  
审批状态|approval_status|smallint|1|N|
退货状态|supply_status|smallint|1|N|
要货日期|deadline|date||N|
退货地址|delivery_address|varchar2|100|N|
备注|remark|varchar2|200||

-采退明细表 t_purchase_details_back

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
采退明细单编号|id|number(10,0)||N|PK
采退单编号|purchase_id|number(10,0)||N|PK,FK
商品编号|product_id|number(10,0)||N|FK
价格|price|decimal|10,2|N|
数量|amount|number(10,0)||N|
状态|status|smallint|1|N|
备注|remark|varchar2|200||

- 采退出库表 t_purchase_out

中文名|字段名|类型|宽度|可空|主外码
-|-|-|-|-|-
采购入库单编号|id|number(10,0)||N|PK
采购单编号|purchase_id|number(10,0)||N|FK
仓管员工编号|employee_id|number(10,0)||N|FK
入库时间|in_date|date||N|
供货人|supplier|varchar2|20|N| 
备注|remark|varchar2|200||   

//未写完
