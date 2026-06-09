---
tags: [mes-api, 车灯v3相关接口]
module: 车灯v3相关接口
method: POST
prod_url: "http://10.200.6.27:10002/fundation/api/online-mes``/online-mes/ml/ss/hud/beforetestwithdevicecode"
---

# HUD带设备编号的站前检测

> **模块**: [[00-总览|MES接口]] > [[车灯v3相关接口/概览|车灯v3相关接口]]
> **方式**: POST
> **正式**: `http://10.200.6.27:10002/fundation/api/online-mes``/online-mes/ml/ss/hud/beforetestwithdevicecode`

---

##### HUD带设备编号的站前检测

简要描述

带设备编码的站前检测

请求URL

- `http://10.200.6.27:10002/fundation/api/online-mes``/online-mes/ml/ss/hud/beforetestwithdevicecode`

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID |String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

请求方式

POST

**Body参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|planName|是|string|计划号|-|
|station|是|string|站位||
|scanCode|是|string|托盘或者产品条码||
|deviceCode|是|string|设备编码||
|isPallet|是|boolean|是否托盘||
|isZJCode|否|boolean|是否组件编码（不传默认为false）||



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|message|string|错误信息|-|
|data|object|结果|-|
|data.isPass |int|-1:异常，产品在工位停留; 0:产品直通，1:正常测试|- |
|data.productCode|string|托盘绑定的产品条码|-|

**请求失败示例**

|```JSON {   "planName": "ASM2502-022442",   "station": "3MP2",   "isPallet": false,   "scanCode": "LD248H110270",   "isZJCode": true,   "deviceCode": "11111111" } ``` |
|---|

**返回示例**

|```JSON {     "code": 1,     "message": "无效接口！",     "status": 2010 } ``` |
|---|

请求成功

```JSON
{
  "data": {
    "isPass": 1,
    "productCode": "LD248H110270"
  },
  "succ": true,
  "code": 0,
  "msg": "",
  "message": "",
  "exceptionMsg": "",
  "excuteMiniSeconds": 39431,
  "env": "Production"
}
```

请求失败返回示例

```JSON
{
  "data": {
    "isPass": -1,
    "productCode": ""
  },
  "succ": false,
  "code": 2,
  "msg": "ASM2502-022442计划中不存在条码LD248H110271",
  "message": "ASM2502-022442计划中不存在条码LD248H110271",
  "exceptionMsg": "",
  "excuteMiniSeconds": 942,
  "env": "Production"
}
```

