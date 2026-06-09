---
tags: [mes-api, 烧录设备相关接口]
module: 烧录设备相关接口
method: POST
---

# 根据指定数据来源获取计划信息（ONTMES,统一MES通用）

> **模块**: [[00-总览|MES接口]] > [[烧录设备相关接口/概览|烧录设备相关接口]]
> **方式**: POST

---

##### 根据指定数据来源获取计划信息（ONTMES,统一MES通用）

简要描述

根据指定数据来源获取计划信息

- `http://10.200.6.27:10002/mes/api/plan/datasource/planlist/get/v1.0.0?dataSource={dataSource}&planNo={planNo}`

请求方式

- GET

**请求参数说明**

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID|String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

**路由参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|dataSource|是|int|数据源|0：统一MES；1：ONTMES|
|planNo|是|string|计划号|模糊匹配|

**返回参数说明**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误代码|0：成功；1：失败|
|message|string|处理结果消息|-|
|data|list|结果数据||
|-planNo|string|计划号||
|-itemCode|string|产品编码||
|-taskNo|string|任务令||
|-chartNo|string|图号|-|

**请求示例**

```JSON
{}
```

**返回成功示例（使用计划号454进行模糊查询）**

```JSON
{
    "data": [
        {
            "planNo": "JZ1705-034645",
            "itemCode": "50083218",
            "taskNo": "JPZH8H50382",
            "chartNo": "GJZ2.028.1316"
        },
        {
            "planNo": "JZ1911-046459",
            "itemCode": null,
            "taskNo": "JPZHTLB2189",
            "chartNo": "安装板GJZ6.672.2219"
        }
    ],
    "code": 0,
    "message": "success",
    "status": 200
}
```





