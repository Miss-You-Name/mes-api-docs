---
tags: [mes-api, 车灯3.0相关接口]
module: 车灯3.0相关接口
method: POST
test_url: "http://10\.200\.6\.200:10002~~~~`/fundation`~~~~`/api/device/upload/ccd`~~"
prod_url: "http://10\.200\.6\.27:10002~~~~`/fundation`~~~~`/api/device/upload/ccd`~~"
---

# CCD上传FTP存储路径接口（已弃用，请使用文档《[FTP 图片上传规范](https://jiuzhou1958.feishu.cn/docx/NLwLdYaG6o6kzOxWzTFc1VbonAg)》）

> **模块**: [[00-总览|MES接口]] > 车灯3.0相关接口
> **方式**: POST
> **测试**: `http://10\.200\.6\.200:10002~~~~`/fundation`~~~~`/api/device/upload/ccd`~~`
> **正式**: `http://10\.200\.6\.27:10002~~~~`/fundation`~~~~`/api/device/upload/ccd`~~`

---

##### ~~CCD上传FTP存储路径接口（已弃用，请使用文档《~~[~~FTP 图片上传规范~~](https://jiuzhou1958.feishu.cn/docx/NLwLdYaG6o6kzOxWzTFc1VbonAg)~~》）~~

~~简要描述~~

~~上传CCD图片存储FTP路径的绝对地址~~

~~请求URL：~~

~~测试：http://10.200.6.200:10002~~~~`/fundation`~~~~`/api/device/upload/ccd`~~

~~正式：~~~~http://10.200.6.27:10002~~~~`/fundation`~~~~`/api/device/upload/ccd`~~

~~webservice：~~

~~COM_Device_DeviceUploadCCD~~

~~请求方式~~

- ~~POST~~

**~~请求参数说明~~**

**~~Header参数~~**

|**~~参数名~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|
|~~X-JZ-APPID~~ |~~String~~|~~网关分配的应用Id~~|~~设备统一用【c7a8830e352047fdba14ff2f4030b09e】~~|

**~~Body参数~~**

|**~~参数名~~**|**~~必选~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|---|
|~~planName~~|~~是~~|~~String~~|~~计划号~~||
|~~station~~|~~是~~|~~String~~|~~站位~~||
|~~line~~|~~是~~|~~String~~|~~线体~~||
|~~scanCode~~|~~是~~|~~String~~|~~扫描条码~~|~~可能是移动工装条码，可能是产品条码~~|
|~~userCode~~|~~是~~|~~String~~|~~员工工号~~||
|~~pallet~~|~~否~~|~~String~~|~~托盘号~~|~~涉及固定工装站位使用该字段，其余不涉及固定工装不填该字段~~|
|~~pcbasn~~ |~~是~~|~~String~~|~~产品条码： 使用“站前检测“接口返回字段pcbasns的值~~|~~每次只能传一个条码~~|
|~~ccdjson~~|~~是~~|~~String~~|~~CCD存储地址~~||
|~~-path~~|~~是~~|~~String~~|~~图片存储ftp绝对路径~~||
|~~-position~~|~~是~~|~~String~~|~~点位~~|~~拍照点位，比如：1，2，3，4四个照片有4个点位~~|
|~~-result~~|~~是~~|~~Int~~|~~结果~~|~~1表示OK，0表示NG~~|

**~~返回参数说明~~**

|**~~参数名~~**|**~~必选~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|---|
|~~succ~~|~~否~~|~~Bool~~|~~接口状态~~||
|~~code~~|~~是~~|~~Int~~|~~错误码，0：成功；其他失败~~||
|~~msg~~|~~是~~|~~String~~|~~错误消息~~||
|~~exceptionMsg~~|~~否~~|~~String~~|~~异常信息~~||
|~~excuteMiniSeconds~~|~~否~~|~~Int~~|~~接口耗时~~||
|~~env~~|~~否~~|~~String~~|~~环境，development：开发环境，production：生产环境~~||

**~~请求示例~~**

```JSON
~~{~~
~~  "planName": "ASM2402-009527",~~
~~  "station": "HUD-F3-1",~~
~~  "line": "ONT_DIP_007",~~
~~  "scanCode": "210264002510Q4100031",~~
~~  "userCode": "41487",~~
~~  "pallet": "GZ-QC-20255-JZJT-009VB",~~
~~  "pcbasn": "210264002510Q4100031",~~
~~  "ccdjson": [~~
~~      {"path":"/Images/HUD/CCDWG/ASM2501-021137/LD251H046294_OK_20250220155428110.jpg",~~
~~      "position":"jiechakouA",~~
~~      "result":0},~~
~~      {"path":"/Images/HUD/CCDWG/ASM2501-021137/LD251H046294_OK_20250220155428110.jpg",~~
~~      "position":"jiechakouB",~~
~~      "result":0}~~
~~  ]~~
~~}~~
```

~~path字段解析：~~

~~/~~[~~Images/HUD~~](ftp://10.200.6.108/Images/HUD)~~ 这部分根据不同事业部，都有不同固定的前缀~~
~~CCDWG 这个是站位~~
~~ASM2501-021137  这个是计划号~~
~~LD251H046294_OK_20250220155428110.jpg  这个是最终图片文件: 条码_图片结果_日期精确到毫秒~~

**~~返回示例~~**

```JSON
~~{~~
~~  "succ": true,~~
~~  "code": 0,~~
~~  "msg": "",~~
~~  "exceptionMsg": "",~~
~~  "excuteMiniSeconds": 650,~~
~~  "env": "production"~~
~~}~~
```

~~ftp账号密码与项目对应关系~~

|~~项目名称~~|~~账号~~|~~密码~~|~~ftp地址前缀~~|
|---|---|---|---|
|~~车灯3.0~~|~~cdccd~~|~~CDccd@2025~~|~~ftp://10.200.6.87/CDV3/~~|
|~~柔性2.0~~|~~Flexible~~|~~Flexible@chengdu2025~~|~~ftp://10.200.6.79/Flexible/two/~~|
|||||
|||||



