---
tags: [mes-api, HUD项目相关接口]
module: HUD项目相关接口
method: POST
prod_url: "http://10.200.6.27:10002/fundation/online-mes/ml/ss/hudcheckagingstation"
---

# HUD产品判断是否老化测试站位(华为专用)

> **模块**: [[00-总览|MES接口]] > [[HUD项目相关接口/HUD项目相关接口-概览|HUD项目相关接口]]
> **方式**: POST
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/ml/ss/hudcheckagingstation`

---

##### **HUD产品判断是否老化测试站位(华为专用)**

**简要描述**

HUD产品判断是否老化测试站位(华为调用)

**请求URL**

`http://10.200.6.27:10002/fundation/online-mes/ml/ss/hudcheckagingstation`

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
|pcbaSn|是|string|条码|-|



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|data|bool|true:是老化站位， false：不是老化站位||

**请求成功示例**

|`JSON {   "pcbaSn": "LD251H100096" } ` |
|---|

**返回示例**

|`JSON {   "data": false,   "succ": false,   "code": 2,   "msg": "根据条码:LD251H100096 未找到生产计划信息",   "exceptionMsg": "",   "excuteMiniSeconds": 20510,   "env": "Development" } ` |
|---|





##### 

#### HPLC相关接口

