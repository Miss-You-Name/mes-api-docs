---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
test_url: "http://10\.200\.6\.200:10002`/fundation``/api/online-mes/v2/transfer/ml/fixture/ictunbindingv1"
prod_url: "http://10\.200\.6\.27:10002`/fundation``/api/online-mes/v2/transfer/ml/fixture/ictunbindingv1"
---

# ICT:ONT产品1800工位工装解绑接口V1

> **模块**: [[00-总览|MES接口]] > [[MES交互接口/概览|MES交互接口]]
> **方式**: POST
> **测试**: `http://10\.200\.6\.200:10002`/fundation``/api/online-mes/v2/transfer/ml/fixture/ictunbindingv1`
> **正式**: `http://10\.200\.6\.27:10002`/fundation``/api/online-mes/v2/transfer/ml/fixture/ictunbindingv1`

---

###### ICT:ONT产品1800工位工装解绑接口V1

**简要描述**

ICT:ONT产品1800工位工装解绑接口(codeType: 1:托盘;2:21Code;3:单板;finalStage:是否最后工序)

**请求URL**

测试：http://10.200.6.200:10002`/fundation``/api/online-mes/v2/transfer/ml/fixture/ictunbindingv1`

正式：http://10.200.6.27:10002`/fundation``/api/online-mes/v2/transfer/ml/fixture/ictunbindingv1`



对应的Webservice地址



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
|codeType |是 |int|类型|codeType: 1:托盘;2:21Code;3:单板|
|code|是|string|编码||
|finalState|是|Boolean|是否最后工序||
|result|是|boolean|||

**返回参数说明**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|succ|bool|成功标识|true：成功； false：失败|
|code|int|错误码|0:成功 其他：失败|
|msg|string|错误信息||

**请求成功示例**

|```JSON { "codeType":1, "code":"GZ-QG-20258-DMS-143VB", "finalState":false, "result":false } ``` |
|---|

**返回示例**

|\{"succ": true,"code": 0,"msg": "","exceptionMsg": "","excuteMiniSeconds": 2902,"env": "Development" \}|
|---|

