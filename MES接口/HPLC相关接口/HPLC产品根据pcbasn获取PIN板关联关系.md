---
tags: [mes-api, HPLC相关接口]
module: HPLC相关接口
method: POST
prod_url: "http://10.200.6.27:10002/fundation``/online-mes/ml/ss/hplcgetpcbrelationship"
---

# HPLC产品根据pcbasn获取PIN板关联关系

> **模块**: [[00-总览|MES接口]] > HPLC相关接口
> **方式**: POST
> **正式**: `http://10.200.6.27:10002/fundation``/online-mes/ml/ss/hplcgetpcbrelationship`

---

##### **HPLC产品根据pcbasn获取PIN板关联关系**

**简要描述**

HPLC产品根据pcbasn获取PIN板关联关系，同时获取每个pcbasn关联的MAC地址(planName:允许空)

**请求URL**

`http://10.200.6.27:10002/fundation``/online-mes/ml/ss/hplcgetpcbrelationship`

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
|planName|是|string|计划号|-|
|pcbaSn|是|string|条码|-|



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|data|object\[\]|数据||
|data\[i\].planName|string|计划||
|data\[i\].pcbaSn|string|条码||
|data\[i\].mac|string|MAC||

**请求成功示例**

|```JSON {   "planName": "PCB2510-039406",   "pcbaSn": "2198031864LDRA850175" } ``` |
|---|

**返回示例**

|```JSON {   "data": [     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850171",       "mac": "00B903796792"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850172",       "mac": "00B903796793"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850173",       "mac": "00B903796794"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850174",       "mac": "00B903796795"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850175",       "mac": "00B903796796"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850176",       "mac": "00B903796797"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850177",       "mac": "00B903796798"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850178",       "mac": "00B903796799"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850179",       "mac": "00B903796801"     },     {       "planName": "PCB2510-039406",       "pcbaSn": "2198031864LDRA850180",       "mac": "00B903796802"     }   ],   "succ": true,   "code": 0,   "msg": "",   "message": "",   "exceptionMsg": "",   "excuteMiniSeconds": 2647,   "env": "Production" } ``` |
|---|

#### ONT-MES相关接口

