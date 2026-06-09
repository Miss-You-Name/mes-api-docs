---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
prod_url: "http://10.200.6.27:10002``/fundation/``online-mes/ml/ss/bindsnsbypcbasn"
---

# AOI上传SN信息给MES

> **模块**: [[00-总览|MES接口]] > MES交互接口
> **方式**: POST
> **正式**: `http://10.200.6.27:10002``/fundation/``online-mes/ml/ss/bindsnsbypcbasn`

---

###### **AOI上传SN信息给MES**

**简要描述**

该接口是给DBD项目，AOI设备采集到了物料上的SN，上传信息给到MES。

**请求URL**

`http://10.200.6.27:10002``/fundation/``online-mes/ml/ss/bindsnsbypcbasn`

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
|pcbasn|是|string|计划号|-|
|planNo|是|string|站位||
|station|是|string|条码||
|groupNo|||||
|user|||||
|line|||||
|sns|||||



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|data|object|结果|-|
|data.pinSns|int|拼版条码|-|

**请求成功示例**

|```JSON {   "pcbasn": "string",   "planNo": "string",   "station": "string",   "groupNo": "string",   "user": "string",   "line": "string",   "sns": [     "string"   ] } ``` |
|---|

**返回示例**

|```JSON {   "data": "操作成功",   "succ": false,   "code": 0,   "msg": "",   "exceptionMsg": "",   "excuteMiniSeconds": 799,   "env": "Development" } ``` |
|---|

##### 工装相关接口

