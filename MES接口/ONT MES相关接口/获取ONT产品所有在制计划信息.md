---
tags: [mes-api, ONT MES相关接口]
module: ONT MES相关接口
method: POST
prod_url: "http://10.200.6.27:10002``/ontmes/api/inprocess/plan/info/get/v1.0.0"
---

# 获取ONT产品所有在制计划信息

> **模块**: [[00-总览|MES接口]] > ONT MES相关接口
> **方式**: POST
> **正式**: `http://10.200.6.27:10002``/ontmes/api/inprocess/plan/info/get/v1.0.0`

---

##### **获取****ONT产品****所有在制计划信息**

**简要描述**

获取所有在制计划信息

**请求URL**

`http://10.200.6.27:10002``/ontmes/api/inprocess/plan/info/get/v1.0.0`

**请求方式**

POST

**请求参数说明**

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID|String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

**Body参数**

无



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误代码|0：成功；1：失败|
|message|string|处理结果消息||
|data|List|结果数据||
|data\[i\].taskNo|string|华为任务令||
|data\[i\].planNo|string|九州计划号||
|data\[i\].qty|string|数量||
|data\[i\].remark|string|备注||
|data\[i\].productName|string|产品名称|-|

**请求成功示例**

|```JSON {    } ``` |
|---|

**返回示例**

|```JSON {     "code": 0,     "message": "success",     "status": 200,     "data": [         {             "taskNo": "ASM2404010966",             "planNo": "123456",             "qty": 1.0,             "remark": "4.19研发用机器-张恒岭",             "productName": "GPON终端GJZ2.028.2993"         },         {             "taskNo": "ASM2011999001",             "planNo": "ASM2011-999001",             "qty": 20.0,             "remark": "11月22日    根据李康科研预投    预投单板20块",             "productName": "无线局域网设备GJZ2.028.4176"         },         {             "taskNo": "PCB2311007036",             "planNo": "ASM2111-007036",             "qty": 50.0,             "remark": "11月9日    根据李康科研预投    预投单板50块",             "productName": "无线局域网设备GJZ2.028.4174"         },         {             "taskNo": "ASM2307000001",             "planNo": "ASM2307-000001",             "qty": 10.0,             "remark": "研发虚拟计划50050157",             "productName": "防火墙GJZ2.028.4582"         }    ] } ``` |
|---|



