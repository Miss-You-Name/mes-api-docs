---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
test_url: "http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_CheckALLCCDStation"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/ml/ss/checkallccdstation"
---

# CCD查询传入的站位的CCD是否都有拍照数据

> **模块**: [[00-总览|MES接口]] > [[MES交互接口/MES交互接口-概览|MES交互接口]]
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_CheckALLCCDStation`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/ml/ss/checkallccdstation`

---

###### CCD查询传入的站位的CCD是否都有拍照数据



**简要描述**

柔性2.0线体检测所有CCD站位列表中的数据是否正确

**请求URL**

`http://10.200.6.27:10002/fundation/online-mes/ml/ss/checkallccdstation`

对应的Webservice地址

http://10.200.6.54:10002/StationService.asmx?op=ML_SS_CheckALLCCDStation

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
|productCode|是|string|产品条码|-|
|planName|是|string|计划号|-|
|stations|是|string|需要检验站位，使用逗号进行分割，例如：C001,C002,C003,C004|-|



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|succ|bool|true:成功，false：失败||
|message|string|错误信息||
|code|int|错误码：0：成功，其他：失败||

**请求成功示例**

|`JSON {   "productcode": "test",   "planname": "ASM2501-021137",   "stations": "CZGX021,CZGX020" } ` |
|---|

**返回示例**

|\{   "succ": true,   "code": 0,   "msg": "",   "exceptionMsg": "",   "excuteMiniSeconds": 1586,   "env": "Development" \}|
|---|



