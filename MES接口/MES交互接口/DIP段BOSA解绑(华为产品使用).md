---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
prod_url: "http://10.200.6.27:10002/fundation/online-mes/`ml/dip/unbindbosa"
---

# DIP段BOSA解绑(华为产品使用)

> **模块**: [[00-总览|MES接口]] > MES交互接口
> **方式**: POST
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/`ml/dip/unbindbosa`

---

###### DIP段BOSA解绑(华为产品使用)

简要描述

DIP段BOSA解绑(华为产品使用)

请求URL

- `http://10.200.6.27:10002/fundation/online-mes/`ml/dip/unbindbosa

请求方式

- POST

**请求参数说明**

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID|String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

**路由参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|planName|是|string|计划||
|pcbaSn|是|string|条码||

**返回参数说明**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|||||

**请求示例**

```JSON
{
    "planName":"",
    "pcbaSn":""
}
```

**返回成功示例**

```JSON
{
  "succ": true,
  "code": 0,
  "msg": "",
  "exceptionMsg": "",
  "excuteMiniSeconds": 650,
  "env": "production"
}
```

