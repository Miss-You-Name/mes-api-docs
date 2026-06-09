---
tags: [mes-api, 烧录设备相关接口]
module: 烧录设备相关接口
method: POST
test_url: "http://10\.200\.6\.54:10002/SMTService\.asmx?op=ML\_SMT\_SL\_HS\_ScanMat"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/``ml/smt/slhsscanmat"
---

# 海思烧录物料上料接口（ONTMES,统一MES通用）

> **模块**: [[00-总览|MES接口]] > [[烧录设备相关接口/烧录设备相关接口-概览|烧录设备相关接口]]
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/SMTService\.asmx?op=ML\_SMT\_SL\_HS\_ScanMat`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/``ml/smt/slhsscanmat`

---

##### 海思烧录物料上料接口（ONTMES,统一MES通用）

简要描述

物料上料，比对物料是否在生产用料清单中，查询计划对应的软件版本，软件编码

请求URL

`WebApi:``http://10.200.6.27:10002/fundation/online-mes/``ml/smt/slhsscanmat`

webservice：http://10.200.6.54:10002/SMTService.asmx?op=ML_SMT_SL_HS_ScanMat

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
|matSn|是|string|物料sn||
|planName|是|string|计划号||
|line|是|string|线体||

**返回参数说明**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|message|string|错误信息|-|
|data|string|基础信息||
|-matCode|string|物料代码||
|-matSn|string|物料流水码||
|-matName|string|物料名称||
|-amout|int|物料初始数量||
|-remainAmout|int|wms物料余量||
|-position|string|物料代码对应的产品位号||
|-softInfo|string|该计划号的所有软件信息||

**请求示例**

```JSON
{
  "planName": "PCB2510-039642",
  "line": "test",
  "matSn": "2508184069500355"
}
```

**返回成功示例**

```JSON
{
        "data": {
                "matCode": "3.KG.0041.2041",
                "matSn": "2508184069500355",
                "matName": "集成电路",
                "amout": 0,
                "remainAmout": 0,
                "position": "U2401",
                "softInfo": "软件类型：ONT烧录软件,软件编码：05024PMA,软件版本：B110S115P120FW100106EFU10 \r\n软件类型：ONT烧录软件1,软件编码：05024REU,软件版本：FW100106EFU10 \r\n"
        },
        "succ": true,
        "code": 0,
        "msg": "",
        "message": "",
        "exceptionMsg": "",
        "excuteMiniSeconds": 20303,
        "env": "Production"
}
示例二：
{
  "data": null,
  "succ": false,
  "code": 2,
  "msg": "物料流水码：2508184069500355,查询出：58168条上料记录，上料记录异常，请联系IT人员！",
  "message": "物料流水码：2508184069500355,查询出：58168条上料记录，上料记录异常，请联系IT人员！",
  "exceptionMsg": "",
  "excuteMiniSeconds": 155011,
  "env": "Production"
}
```

