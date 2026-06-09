---
tags: [mes-api, ONT-MES相关接口]
module: ONT-MES相关接口
method: POST
test_url: "http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_CheckONT3MP9"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/ml/ss/checkont3mp9"
---

# ONT产品维修与降级3MP9工位查询

> **模块**: [[00-总览|MES接口]] > [[ONT-MES相关接口/ONT-MES相关接口-概览|ONT-MES相关接口]]
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_CheckONT3MP9`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/ml/ss/checkont3mp9`

---

##### ONT产品维修与降级3MP9工位查询

简要描述

ONT产品维修与降级3MP9工位查询

请求URL

- `http://10.200.6.27:10002/fundation/online-mes/ml/ss/checkont3mp9`



封装接口：

http://10.200.6.54:10002/StationService.asmx?op=ML_SS_CheckONT3MP9

请求方式

- POST

**请求参数说明**

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID|String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

**Body参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|planName|是|string|计划||
|codeSn|是|string|条码||

**返回参数说明**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|message|string|错误信息|-|

**请求示例**

`JSON
{
  "planName": "ASM2508-029803",
  "codeSn": "2150088427LDR8803080"
}
`

**返回成功示例**

`JSON
{
  "succ": false,
  "code": 2,
  "msg": "非ONT光猫产品！",
  "exceptionMsg": "",
  "excuteMiniSeconds": 2361,
  "env": "Development"
}
`



