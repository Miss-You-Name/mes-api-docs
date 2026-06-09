---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
test_url: "http://10\.200\.6\.54:10002/MatService\.asmx?op=ICT\_MAT\_MatDeductNumber"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/``ict/mat/matdeductnumber"
---

# ICT产品物料批量扣数

> **模块**: [[00-总览|MES接口]] > MES交互接口
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/MatService\.asmx?op=ICT\_MAT\_MatDeductNumber`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/``ict/mat/matdeductnumber`

---

###### ICT产品物料批量扣数

**简要描述**

ICT产品物料批量扣数(多个codeSns采用 ,号分隔

**请求URL**

`http://10.200.6.27:10002/fundation/online-mes/``ict/mat/matdeductnumber`

对应的Webservice地址

http://10.200.6.54:10002/MatService.asmx?op=ICT_MAT_MatDeductNumber

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
|planName |是 |string|计划||
|station|是|string|站位||
|line|是|string|线体||
|userName|是|string|用户工号||
|banZu|是|string|班组||
|codeSns|是|string|产品条码|多个codeSns采用 ,号分隔|
|workStage|是|string|工段|0：贴片；1：插件；2：总装|



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|succ|bool|成功标识|true：成功； false：失败|
|code|int|错误码|0:成功 其他：失败|
|msg|string|错误信息||

**请求成功示例**

|```JSON {   "planName": "PCB2505-031673",   "station": "C001",   "line": "XT000017",   "userName": "41487",   "banzu": "amdin",   "codeSns": "LD256H023017",   "workStage": "1" } ``` |
|---|

**返回示例**

|```JSON {     "succ": **true**,     "code": 0,     "msg": "",     "exceptionMsg": "",     "excuteMiniSeconds": 70,     "env": "Development" } ``` |
|---|

