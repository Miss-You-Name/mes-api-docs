---
tags: [mes-api, HUD项目相关接口]
module: HUD项目相关接口
method: POST
test_url: "http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_HUD\_BeforeTest"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/ml/ss/hud/beforetest"
---

# HUD项目MES过站检测

> **模块**: [[00-总览|MES接口]] > [[HUD项目相关接口/HUD项目相关接口-概览|HUD项目相关接口]]
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_HUD\_BeforeTest`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/ml/ss/hud/beforetest`

---

##### **HUD项目MES过站检测**

**简要描述**

HUD项目MES过站检测:(-1:异常，产品在工位停留; 0:产品直通，1:正常测试 );product_code:托盘绑定的产品条码

**请求URL**

`http://10.200.6.27:10002/fundation/online-mes/ml/ss/hud/beforetest`

对应的websevice接口

http://10.200.6.54:10002/StationService.asmx?op=ML_SS_HUD_BeforeTest

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
|station|是|string|站位||
|scanCode|是|string|托盘或者产品条码||
|isPallet|是|boolean|是否托盘||
|isZJCode|否|boolean|是否组件编码（不传默认为false）||



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|data|object|结果|-|
|data.isPass |int|-1:异常，产品在工位停留; 0:产品直通，1:正常测试|- |
|data.productCode|string|托盘绑定的产品条码|-|

**请求****失败****示例**

|`JSON {   "planName": "ASM2410-017318",   "station": "CZGX020",   "isPallet": true,   "scanCode": "NY-ZP-008-Test" } ` |
|---|

**返回示例**

|`JSON {   "data": null,   "succ": false,   "code": 2,   "msg": "ASM2410-017318计划中不存在条码NY-ZP-008-Test",   "exceptionMsg": "",   "excuteMiniSeconds": 2317,   "env": "Development" } ` |
|---|

请求成功

`JSON
{
  "planName": "ASM2501-021137",
  "station": "CZGX020",
  "isPallet": **true**,
  "scanCode": "NY-ZP-008-Test"
}
`

请求成功返回示例

`JSON
{
    "data": {
        "isPass": 1,
        "productCode": "LD251H046294"
    },
    "succ": **true**,
    "code": 0,
    "msg": "",
    "exceptionMsg": "",
    "excuteMiniSeconds": 458,
    "env": "Production"
}
`

