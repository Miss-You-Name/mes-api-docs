---
tags: [mes-api, ONT-MES相关接口]
module: ONT-MES相关接口
method: POST
test_url: "http://10\.21\.59\.4:5690/PMC/api/PMC/GetTaskOrder?type=](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)[\{Name\}](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)"
prod_url: "http://10\.21\.59\.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310\-900003](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)"
---

# 获取ONT计划接口（ONT开发的）

> **模块**: [[00-总览|MES接口]] > [[ONT-MES相关接口/概览|ONT-MES相关接口]]
> **方式**: POST
> **测试**: `http://10\.21\.59\.4:5690/PMC/api/PMC/GetTaskOrder?type=](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)[\{Name\}](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)`
> **正式**: `http://10\.21\.59\.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310\-900003](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)`

---

##### 获取ONT计划接口（ONT开发的）

**简要描述**

用于获取ONT的单板计划或者整机计划

**请求URL**

[http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)[\{Name\}](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)

例如：

[http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003](http://10.21.59.4:5690/PMC/api/PMC/GetTaskOrder?type=ASM2310-900003)

**请求方式**

GET

**路由参数**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
|Name |是|string|Name=PCB,获取单板计划号 Name=ASM,获取整机计划号 Name=ALL,获取所有计划号 Name=PCB2307-002890,获取指定计划号信息||

**请求参数说明**

|**参数名**|**必选**|**类型**|**说明**|**备注**|
|---|---|---|---|---|
||||||



**返回参数说明**



|**参数名**|**类型**|**说明**|**备注**|
|---|---|---|---|
|code|int|错误码|0：成功，其他失败|
|msg|string|错误信息|-|
|total||||
|data|object|||
|-state||||
|-msg||||
|-total||||
|-data|object|||
|--id||||
|--taskscode|九洲计划|||
|--taskstate||||
|--taskdate|计划创建时间|||
|--customer||||
|--pid||||
|--producT_NAME|图号|||
|--tasksquantity|任务数|||
|--stardate||||
|--gyid||||
|--issd||||
|--pccount||||
|--fincount||||
|--bz||||
|--teamgroupid||||
|--boxcount||||
|--softwareversion||||
|--hardwareversion||||
|--zbfortbm||||
|--ypzbb||||
|--slsoftbm||||
|--ypzsoftbm||||
|--ecchange||||
|--wlstate||||
|--fullstate||||

**请求成功示例**

|```JSON {} ``` |
|---|

**返回示例**

|```JSON {     **"code"**: **200**,     **"msg"**: **"操作成功"**,     **"total"**: **0**,     **"data"**: {         **"state"**: **1**,         **"msg"**: **""**,         **"total"**: **0**,         **"data"**: [             {                 **"id"**: **99570844**,                 **"taskscode"**: **"PCB2412-023137"**,                 **"taskstate"**: **"2"**,                 **"taskdate"**: **"2024-12-03T16:31:28"**,                 **"customer"**: **"企业业务事业部-制造二部（N1业务）"**,                 **"pid"**: **6360**,                 **"producT_NAME"**: **"安装板GJZ6.672.6220"**,                 **"tasksquantity"**: **20**,                 **"stardate"**: **"2024-12-02T00:00:00"**,                 **"gyid"**: **1022**,                 **"issd"**: **"0"**,                 **"pccount"**: **null**,                 **"fincount"**: **"QPZQ3SC018L"**,                 **"bz"**: **"11.29*20台整机##QPZQ3SC018L##98012047-002"**,                 **"teamgroupid"**: **"012545"**,                 **"boxcount"**: **"1"**,                 **"softwareversion"**: **"015"**,                 **"hardwareversion"**: **"2.HW.03.0001631_V1.00"**,                 **"zbfortbm"**: **null**,                 **"ypzbb"**: **null**,                 **"slsoftbm"**: **"05023AAC"**,                 **"ypzsoftbm"**: **null**,                 **"ecchange"**: **null**,                 **"wlstate"**: **null**,                 **"fullstate"**: **null**             },             {                 **"id"**: **99571044**,                 **"taskscode"**: **"PCB2412-023391"**,                 **"taskstate"**: **"2"**,                 **"taskdate"**: **"2024-12-05T15:04:12"**,                 **"customer"**: **"企业业务事业部-制造二部（N1业务）"**,                 **"pid"**: **6300**,                 **"producT_NAME"**: **"安装板GJZ6.672.5851"**,                 **"tasksquantity"**: **20**,                 **"stardate"**: **"2024-12-12T00:00:00"**,                 **"gyid"**: **1108**,                 **"issd"**: **"0"**,                 **"pccount"**: **null**,                 **"fincount"**: **"QPZQ3SC018G"**,                 **"bz"**: **"11.29*20台整机##QPZQ3SC018G##98012332"**,                 **"teamgroupid"**: **"054735"**,                 **"boxcount"**: **"1"**,                 **"softwareversion"**: **"165"**,                 **"hardwareversion"**: **"2.HW.03.0001356_V1.02"**,                 **"zbfortbm"**: **null**,                 **"ypzbb"**: **null**,                 **"slsoftbm"**: **"05024GKN"**,                 **"ypzsoftbm"**: **null**,                 **"ecchange"**: **null**,                 **"wlstate"**: **null**,                 **"fullstate"**: **null**             },             {                 **"id"**: **99571068**,                 **"taskscode"**: **"PCB2412-023418"**,                 **"taskstate"**: **"2"**,                 **"taskdate"**: **"2024-12-06T09:34:16"**,                 **"customer"**: **"企业业务事业部-制造二部（N1业务）"**,                 **"pid"**: **5937**,                 **"producT_NAME"**: **"安装板GJZ6.672.6000"**,                 **"tasksquantity"**: **20**,                 **"stardate"**: **"2024-12-06T00:00:00"**,                 **"gyid"**: **1108**,                 **"issd"**: **"0"**,                 **"pccount"**: **null**,                 **"fincount"**: **"QPZQ3SB288T"**,                 **"bz"**: **"11.25*20台整机##QPZQ3SB288T##98012040-004"**,                 **"teamgroupid"**: **"021387"**,                 **"boxcount"**: **"1"**,                 **"softwareversion"**: **"045"**,                 **"hardwareversion"**: **"2.HW.03.0001474_V1.04"**,                 **"zbfortbm"**: **null**,                 **"ypzbb"**: **null**,                 **"slsoftbm"**: **"05024NYJ"**,                 **"ypzsoftbm"**: **null**,                 **"ecchange"**: **null**,                 **"wlstate"**: **null**,                 **"fullstate"**: **null**             }         ]     } } ``` |
|---|



##### 

##### 

