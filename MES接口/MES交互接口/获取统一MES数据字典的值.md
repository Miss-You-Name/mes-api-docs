---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
test_url: "http://10\.200\.6\.54:10002/CommonService\.asmx?op=ML\_COM\_GetSysGlossary"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/``mes/common/getglossary"
---

# 获取统一MES数据字典的值

> **模块**: [[00-总览|MES接口]] > [[MES交互接口/MES交互接口-概览|MES交互接口]]
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/CommonService\.asmx?op=ML\_COM\_GetSysGlossary`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/``mes/common/getglossary`

---

##### 获取统一MES数据字典的值



**简要描述**

获取统一MES数据字典的值

**请求URL**

`http://10.200.6.27:10002/fundation/online-mes/``mes/common/getglossary`

对应的Webservice地址

http://10.200.6.54:10002/CommonService.asmx?op=ML_COM_GetSysGlossary

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
|parentcode|是|string|父项类别|-柔性2.0项目固定传值BarCode|



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|data|object\[\]|||
|data\[i\].dataCode|string|编码||
|data\[i\].dataName|string|名称||

**请求成功示例**

|```JSON {   "parentcode": "BarCode" } ``` |
|---|

**返回示例**

|```JSON {   "data": [     {       "dataCode": "BarCode26Code",       "dataName": "26SSN"     }   ],   "succ": true,   "code": 0,   "msg": "",   "exceptionMsg": "",   "excuteMiniSeconds": 17467,   "env": "Development" } ``` |
|---|



