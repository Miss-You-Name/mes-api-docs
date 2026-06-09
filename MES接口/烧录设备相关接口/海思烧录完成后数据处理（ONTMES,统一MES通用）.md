---
tags: [mes-api, 烧录设备相关接口]
module: 烧录设备相关接口
method: POST
test_url: "http://10\.200\.6\.54:10002/SMTService\.asmx?op=ML\_SMT\_SL\_HS\_EndSL"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/``ml/smt/slhsendsl"
---

# 海思烧录完成后数据处理（ONTMES,统一MES通用）

> **模块**: [[00-总览|MES接口]] > 烧录设备相关接口
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/SMTService\.asmx?op=ML\_SMT\_SL\_HS\_EndSL`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/``ml/smt/slhsendsl`

---

##### 海思烧录完成后数据处理（ONTMES,统一MES通用）

简要描述

烧录完成后物料扣数，烧录信息写入

请求URL

`webapi``:``http://10.200.6.27:10002/fundation/online-mes/``ml/smt/slhsendsl`

webservice：http://10.200.6.54:10002/SMTService.asmx?op=ML_SMT_SL_HS_EndSL

请求方式

- POST

**请求参数说明**

**Header参数**

|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|X-JZ-APPID |String|网关分配的应用Id|设备统一用【c7a8830e352047fdba14ff2f4030b09e】|

**Body参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|jsonStr |是|string|传递给mes的数据|\{ "plan_name": "PLAN202310001", "mat_sn_parent": "MAT-P-00012345", "success_num": 95, "fail_num": 5, "chip_model": "STM32F407VGT6", "chip_supplier": "STMicroelectronics", "burn_program":"XXXXXXXXX", "soft_code": "FW-HEATER-V2", "soft_version": "V2.3.1", "checksum": "A7E9F4D2", "is_overlap": 0, "burn_device": "XGpro-Burner-07", "burn_user": "operator_zhang", "chart": "DWG-IC-2023-001", "erasing_num": 2, "plan_type": 0 \}|

json字段说明：


\{

"plan_name(计划号)": "PCB2510-039642",

"mat_sn_parent(父项物料流水码)": "2508184069500355",

"success_num(烧录成功数)": 95,

"fail_num(烧录失败数)": 5,

"chip_model(芯片型号)": "STM32F407VGT6",

"chip_supplier(芯片制造商)": "STMicroelectronics",

"burn_program(烧录程序)":"XXXXXXXXXXX",

"soft_code(软件编码)": "FW-HEATER-V2",

"soft_version(软件版本)": "V2.3.1",

"checksum(校验和)": "A7E9F4D2",

"is_overlap(是否开启叠料功能，0:否  1：是)": 0,

"burn_device(烧录设备)": "XGpro-Burner-07",

"burn_user(操作人)": "operator_zhang",

"chart(产品图号)": "GJZ6.672.5351",

"erasing_num(擦除次数)": 2,

"plan_type(计划来源 0：统一MES  1：ONT)": 0

\}



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
  "plan_name": "PCB2408-017224",
  "mat_sn_parent": "2408261130920200",
  "success_num": 95,
  "fail_num": 5,
  "chip_model": "STM32F407VGT6",
  "chip_supplier": "STMicroelectronics",
  "burn_program":"XXXXXXXXX",
  "soft_code": "FW-HEATER-V2",
  "soft_version": "V2.3.1",
  "checksum": "A7E9F4D2",
  "is_overlap": true,
  "burn_device": "XGpro-Burner-07",
  "burn_user": "operator_zhang",
  "chart": "DWG-IC-2023-001",
  "erasing_num": 2,
  "plan_type": 0
}
```

**返回成功示例**

```JSON
{
  "succ": true,
  "code": 0,
  "msg": "",
  "exceptionMsg": "",
  "excuteMiniSeconds": 3090,
  "env": "Development"
}
```



#### 车灯v3相关接口

##### 

