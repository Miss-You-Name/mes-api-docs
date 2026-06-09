---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
test_url: "http://10\.200\.6\.54:10002/MatService\.asmx?op=ICT\_MAT\_BandMat"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/``ict/mat/bandmat"
---

# ICT产品物料与产品条码绑定（精准）

> **模块**: [[00-总览|MES接口]] > MES交互接口
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/MatService\.asmx?op=ICT\_MAT\_BandMat`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/``ict/mat/bandmat`

---

###### ICT产品物料与产品条码绑定（精准）

**简要描述**

ICT产品物料与产品条码绑定(精准)

**请求URL**

`http://10.200.6.27:10002/fundation/online-mes/``ict/mat/bandmat`

对应的Webservice地址

http://10.200.6.54:10002/MatService.asmx?op=ICT_MAT_BandMat

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
|codeSns|是|string|产品条码||
|serialNo|是|string|上料序列号||
|materialCode|是|string|精准物料代码||
|userName|是|string|操作人||
|banZu|是|string|班组||
|workStage|是|string|0：贴片；1：插件；2：总装||

**返回参数说明**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|succ|bool|成功标识|true：成功； false：失败|
|code|int|错误码|0:成功 其他：失败|
|msg|string|错误信息||

**请求成功示例**

|```JSON ``` |
|---|

**返回示例**

|\{"succ": true,"code": 0,"msg": "","exceptionMsg": "","excuteMiniSeconds": 2902,"env": "Development" \}|
|---|

