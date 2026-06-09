---
tags:
  - mes-api
  - MES交互接口
module: 更新NG下线失败原因
method: POST
prod_url: http://10.200.6.27:10002/fundation/online-mes/ml/repair/updaterepair
---

# 更新NG下线失败原因

> **模块**: [[00-总览|MES接口]] > [[更新NG下线失败原因/更新NG下线失败原因-概览|更新NG下线失败原因]]
> **方式**: POST
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/ml/repair/updaterepair`

---

#### 更新NG下线失败原因

简要描述

更新NG下线失败原因

请求URL

- `http://10.200.6.27:10002/fundation/online-mes/ml/repair/updaterepair`

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
|pcabsn|是|string|条码||
|fault|是|string|失败原因||

**返回参数说明**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|message|string|错误信息|-|
|data|string|条码||

**请求示例**

`JSON
{
  "planName": "PCB2507-035212",
  "station": "S003",
  "pcbaSn": "109192508020383B03F20.007.005",
  "fault": "D3_Coplanarity_1;Q1_Solderfillet_1;Q1_Solderfillet_2;U3_OCROCV_2;U3_OCROCV_2;U3_OCROCV_3;U3_OCROCV_3;U1_OCROCV_3;U1_OCROCV_3;U4_OCROCV_3;U4_OCROCV_3;Q1_Solderfillet_6"
}
`

**返回成功示例**

`JSON
{
  "succ": true,
  "code": 0,
  "msg": "",
  "exceptionMsg": "",
  "excuteMiniSeconds": 797,
  "env": "Development"
}
`
