---
tags: [mes-api, 柔性v2线体相关接口]
module: 柔性v2线体相关接口
method: POST
test_url: "http://10\.200\.6\.54:10002/FixtureService\.asmx?op=ML\_Fixture\_CheckLastFixtureBind"
prod_url: "http://10.200.6.27:10002/fundation``/online-mes/ml/fixture/checklastfixturebind"
---

# 校验CH-DY站位电源适配器是否绑定

> **模块**: [[00-总览|MES接口]] > 柔性v2线体相关接口
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/FixtureService\.asmx?op=ML\_Fixture\_CheckLastFixtureBind`
> **正式**: `http://10.200.6.27:10002/fundation``/online-mes/ml/fixture/checklastfixturebind`

---

##### 校验CH-DY站位电源适配器是否绑定

**简要描述**

向MES软件， 服务端传递数据

**请求URL**

`http://10.200.6.27:10002/fundation``/online-mes/ml/fixture/checklastfixturebind`

对应的websevice接口

http://10.200.6.54:10002/FixtureService.asmx?op=ML_Fixture_CheckLastFixtureBind

POST

**请求参数说明**

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID|String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

**Body参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|palletNo|是|string|托盘号||
|planName|是|string|计划号||
|lastStation|是|string|需要检测的站位|固定为CH-DY|

**返回参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|code|是|int|0 为成功|-|
|message|是|string|信息提示||
|data|是|泛型|||

**请求示例**

|```JSON {   "palletNo": "GZ-QC-20255-JZJT-006VB",   "planName": "PCB2505-031673",   "lastStation": "CH-DY" } ``` |
|---|

**请求示例**

```JSON

```



##### 

**简要描述**

向MES软件， 服务端传递数据

**请求URL**



POST

**请求参数说明**

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID|String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

**Body参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|chproductcode|是|string|彩盒标签上的产品条码|-|
|productcode|是|string|产品上的实物产品条码||
|pallet_no|是|string|托盘号|CH01取值固定|
|planname|是|string|计划号||

**返回参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|code|是|int|0 为成功|-|
|message|是|string|信息提示||
|data|是|泛型|||

**请求示例**

|```JSON ``` |
|---|

**请求示例**

```JSON

```



