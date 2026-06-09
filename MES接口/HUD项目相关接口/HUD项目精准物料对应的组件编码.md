---
tags: [mes-api, HUD项目相关接口]
module: HUD项目相关接口
method: POST
prod_url: "http://10.200.6.27:10002/fundation/``online-mes/ml/ss/hud/getpcodewithserialnumber"
---

# HUD项目精准物料对应的组件编码

> **模块**: [[00-总览|MES接口]] > [[HUD项目相关接口/HUD项目相关接口-概览|HUD项目相关接口]]
> **方式**: POST
> **正式**: `http://10.200.6.27:10002/fundation/``online-mes/ml/ss/hud/getpcodewithserialnumber`

---

##### **HUD项目精准物料对应的组件编码**

**简要描述**

HUD项目精准物料对应的组件编码

**请求URL**

`http://10.200.6.27:10002/fundation/``online-mes/ml/ss/hud/getpcodewithserialnumber`

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
|scanCode|是|string|||



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|data|object|||
|data.pcbaSn|string|条码SN||

**请求成功示例**

|```JSON {   "planName": "ASM2410-017947",   "scanCode": "2.CZ.07.0000184,DKBA80237197,4957QAM000061" } ``` |
|---|

**返回示例**

|```JSON {   "data": {     "pcbaSn": "LD24AH164020"   },   "succ": true,   "code": 0,   "msg": "",   "exceptionMsg": "",   "excuteMiniSeconds": 21320,   "env": "Development" } ``` |
|---|





