---
tags: [mes-api, HPLC相关接口]
module: HPLC相关接口
method: POST
prod_url: "http://10.200.6.27:10002/fundation/online-mes/ml/ss/getcustomersnwithplanname"
---

# 南网HPLC根据整机计划获取客户SN

> **模块**: [[00-总览|MES接口]] > [[HPLC相关接口/概览|HPLC相关接口]]
> **方式**: POST
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/ml/ss/getcustomersnwithplanname`

---

##### **南网HPLC根据整机计划获取客户SN**

**简要描述**

南网HPLC根据整机计划获取客户SN

**请求URL**

`http://10.200.6.27:10002/fundation/online-mes/ml/ss/getcustomersnwithplanname`

**请求方式**

POST

**请求参数说明**

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID|String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

**Body参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|planName|是|string|易损件代码|-|



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|data|string|客户SN||

**请求成功示例**

|```JSON {   "planName": "ASM2410-017867" } ``` |
|---|

**返回示例**

|```JSON {   "data": "03001EM01008412401300007",   "succ": true,   "code": 0,   "msg": "",   "exceptionMsg": "",   "excuteMiniSeconds": 611,   "env": "Development" } ``` |
|---|

