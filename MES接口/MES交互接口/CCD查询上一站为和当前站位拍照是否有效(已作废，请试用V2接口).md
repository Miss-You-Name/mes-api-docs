---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
test_url: "http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_CheckCCDStation~~"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/`~~~~`ml/ss/checkccdstation`~~"
---

# CCD查询上一站为和当前站位拍照是否有效(已作废，请试用V2接口)

> **模块**: [[00-总览|MES接口]] > [[MES交互接口/MES交互接口-概览|MES交互接口]]
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_CheckCCDStation~~`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/`~~~~`ml/ss/checkccdstation`~~`

---

###### ~~CCD查询上一站为和当前站位拍照是否有效(已作废，请试用V2接口)~~



**~~简要描述~~**

~~柔性2.0线体使用,检查上一站位CCD检测记录与当前站位CCD检测记录,当前记录时间是否大于上一站位时间~~

**~~请求URL~~**

~~`http://10.200.6.27:10002/fundation/online-mes/`~~~~`ml/ss/checkccdstation`~~

~~对应的~~~~Webservice地址~~

~~http://10.200.6.54:10002/StationService.asmx?op=ML_SS_CheckCCDStation~~

**~~请求方式~~**

~~POST~~

**~~请求参数说明~~**

**~~Header参数~~**

|**~~参数名~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|
|~~X-JZ-APPID~~|~~String~~|~~网关分配的应用Id~~|~~设备统一用【c7a8830e352047fdba14ff2f4030b09e】~~|

**~~Body参数~~**

|**~~参数名~~**|**~~必选~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|---|
|~~productCode~~|~~是~~|~~string~~|~~产品条码~~|~~-~~|
|~~planName~~|~~是~~|~~string~~|~~计划号~~|~~-~~|
|~~backStation~~|~~是~~|~~string~~|~~上一站位~~|~~A,B,C,D,~~|
|~~nowStation~~|~~是~~|~~string~~|~~当前站位~~||
|~~pallet~~|~~否~~|~~string~~|~~托盘号~~|~~用于查询托盘的绑定时间，根据绑定时间查询CCD拍照是否有效~~|



**~~返回参数说明~~**



|**~~参数名~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|
|~~succ~~|~~bool~~|~~true:成功，false：失败~~||
|~~message~~|~~string~~|~~错误信息~~||
|~~code~~|~~int~~|~~错误码：0：成功，其他：失败~~||

**~~请求成功示例~~**

|```JSON ~~{~~ ~~  "productcode": "test",~~ ~~  "planname": "ASM2501-021137",~~ ~~  "backstation": "CZGX020",~~ ~~  "nowstation":"CZGX021"~~ ~~}~~ ``` |
|---|

**~~返回示例~~**

|~~\{~~ ~~  "succ": true,~~ ~~  "code": 0,~~ ~~  "msg": "",~~ ~~  "exceptionMsg": "",~~ ~~  "excuteMiniSeconds": 1586,~~ ~~  "env": "Development"~~ ~~\}~~|
|---|

