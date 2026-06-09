---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
prod_url: "http://10.200.6.27:10002``/fundation/online-mes/ms/ss/getccdrecord"
---

# CCD查询成功个数

> **模块**: [[00-总览|MES接口]] > [[MES交互接口/MES交互接口-概览|MES交互接口]]
> **方式**: POST
> **正式**: `http://10.200.6.27:10002``/fundation/online-mes/ms/ss/getccdrecord`

---

###### CCD查询成功个数



**简要描述**

CCD查询测试记录

**请求URL**

`http://10.200.6.27:10002``/fundation/online-mes/ms/ss/getccdrecord`

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
|planName|是|string|计划名称|-|
|station|是|string|站位|-|
|codeSn|是|string|产品条码|-|
|result|是|int|结果状态 |传固定值1 （0：NG 1：OK）|



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|data|int|次数||

**请求成功示例**

|```JSON {   "planName": "PCB2503-027635",   "station": "CZ-CCD1",   "codeSn": "R3253H068030",   "result":1 } ``` |
|---|

**返回示例**

|```JSON {   "data": 0,   "succ": true,   "code": 0,   "msg": "",   "exceptionMsg": "",   "excuteMiniSeconds": 57738,   "env": "Development" } ``` |
|---|

