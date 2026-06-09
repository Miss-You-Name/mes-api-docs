---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
test_url: "http://10\.200\.6\.54:10002/MatService\.asmx?op=ML\_MAT\_CZAccessoriesTimeCheck"
prod_url: "http://10.200.6.27:10002/fundation``/online-mes/ml/mat/czaccessoriestimecheck"
---

# 车载辅料WMS时间管控接口

> **模块**: [[00-总览|MES接口]] > [[MES交互接口/MES交互接口-概览|MES交互接口]]
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/MatService\.asmx?op=ML\_MAT\_CZAccessoriesTimeCheck`
> **正式**: `http://10.200.6.27:10002/fundation``/online-mes/ml/mat/czaccessoriestimecheck`

---

###### 车载辅料WMS时间管控接口

简要描述

车载辅料WMS时间管控接口

请求URL

- `http://10.200.6.27:10002/fundation``/online-mes/ml/mat/czaccessoriestimecheck`

封装接口：

http://10.200.6.54:10002/MatService.asmx?op=ML_MAT_CZAccessoriesTimeCheck

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
|station|是|string|站位||

**返回参数说明**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|message|string|错误信息|-|

**请求示例**

```JSON
{
  "planName": "ASM2508-029803",
  "station": "CZ-DJ"
}
```

**返回成功示例**

```JSON
{
  "succ": true,
  "code": 0,
  "msg": "",
  "exceptionMsg": "",
  "excuteMiniSeconds": 2361,
  "env": "Development"
}
```



