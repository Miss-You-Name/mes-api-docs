---
tags: [mes-api, 柔性v2线体相关接口]
module: 柔性v2线体相关接口
method: POST
test_url: "http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_UpdateCCDSn"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/``ml/ss/updateccdsn"
---

# CCD反写入上一站位图片信息

> **模块**: [[00-总览|MES接口]] > 柔性v2线体相关接口
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_UpdateCCDSn`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/``ml/ss/updateccdsn`

---

##### CCD反写入上一站位图片信息



**简要描述**

柔性2.0线体使用，反写前一位置上传的托盘存取的图片信息

**请求URL**

`http://10.200.6.27:10002/fundation/online-mes/``ml/ss/updateccdsn`

对应的Webservice地址

http://10.200.6.54:10002/StationService.asmx?op=ML_SS_UpdateCCDSn

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
|pallet|是|string|托盘号|-|
|productcode|是|string|产品条码|-|
|planName|是|string|计划号|-|
|station|是|string|需要反写的站位号||



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|succ|bool|true:成功，false：失败||
|message|string|错误信息||
|code|int|错误码：0：成功，其他：失败||

**请求成功示例**

|```JSON {   "pallet": "test",   "productcode": "test",   "planName": "ASM2501-021137",   "station":"CZGX021" } ``` |
|---|

**返回示例**

|\{   "succ": true,   "code": 0,   "msg": "",   "exceptionMsg": "",   "excuteMiniSeconds": 1586,   "env": "Development" \}|
|---|

