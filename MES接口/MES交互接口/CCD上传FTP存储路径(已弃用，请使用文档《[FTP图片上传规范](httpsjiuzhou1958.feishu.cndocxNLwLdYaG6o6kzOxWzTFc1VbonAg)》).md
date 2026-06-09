---
tags: [mes-api, MES交互接口]
module: MES交互接口
method: POST
test_url: "http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_UploadCCD~~"
prod_url: "http://10.200.6.27:10002/fundation/online-mes/ml/ss/uploadccd`~~"
---

# CCD上传FTP存储路径(已弃用，请使用文档《[FTP 图片上传规范](https://jiuzhou1958.feishu.cn/docx/NLwLdYaG6o6kzOxWzTFc1VbonAg)》)

> **模块**: [[00-总览|MES接口]] > MES交互接口
> **方式**: POST
> **测试**: `http://10\.200\.6\.54:10002/StationService\.asmx?op=ML\_SS\_UploadCCD~~`
> **正式**: `http://10.200.6.27:10002/fundation/online-mes/ml/ss/uploadccd`~~`

---

###### **~~CCD上传FTP存储路径~~****~~(已弃用，请使用文档《~~**[**~~FTP 图片上传规范~~**](https://jiuzhou1958.feishu.cn/docx/NLwLdYaG6o6kzOxWzTFc1VbonAg)**~~》)~~**

**~~简要描述~~**

~~CCD上传FTP存储路径~~~~，ftp地址为：CCD上传FTP存储路径接口~~

~~车载相关CCD~~



~~柔性2.0~~

**~~请求URL~~****~~：~~**[**~~10.200.6.87~~**](http://10.200.6.87)**~~   username: dipftp1  password: DIP1@2025    port：21（默认端口）~~**

~~`http://10.200.6.27:10002/fundation/online-mes/ml/ss/uploadccd`~~

~~对应websevice地址~~

~~http://10.200.6.54:10002/StationService.asmx?op=ML_SS_UploadCCD~~

**~~请求方式~~**

~~POST~~

**~~请求参数说明~~**

**~~Header参数~~**

|**~~参数名~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|
|~~X-JZ-APPID~~|~~String~~|~~网关分配的应用Id~~|~~设备统一用【c7a8830e352047fdba14ff2f4030b09e】~~|

~~Body~~**~~参数~~**

|**~~参数名~~**|**~~必选~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|---|
|~~planName~~|~~是~~|~~string~~|~~计划号~~|~~-~~|
|~~station~~|~~否~~|~~string~~|~~站位~~|~~-~~|
|~~line~~|~~是~~|~~string~~|~~线体~~|~~-~~|
|~~codeSn~~|~~是~~|~~string~~|~~产品条码~~|~~-~~|
|~~ccdJson~~|~~是~~|~~string~~|~~CCD信息~~|~~JSON字符串，格式参照如下~~  ~~result：1表示OK,0表示NG~~|

~~ccdJson~~**~~参数~~**

|**~~参数名~~**|**~~必选~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|---|
|~~path ~~|~~是~~|~~string~~|~~路径~~|~~-~~|
|~~position~~|~~是~~|~~string~~|~~位置~~|~~-~~|
|~~result~~|~~是~~|~~int~~|~~结果~~|~~-~~|

**~~返回参数说明~~**



|**~~参数名~~**|**~~类型~~**|**~~说明~~**|**~~备注~~**|
|---|---|---|---|
|~~code~~|~~int~~|~~错误码~~|~~0：成功，其他失败~~|
|~~msg~~|~~string~~|~~错误信息~~|~~-~~|

**~~请求成功示例~~**

|```JSON ~~{~~ ~~    "planName": "ASM2501-021137",~~ ~~    "station": "CZGX020",~~ ~~    "line": "CZ_ZZ_006",~~ ~~    "codeSn": "LD251H046294",~~ ~~    "ccdJson": "[{\"path\":\"/Images/HUD/CCDWG/ASM2501-021137/LD251H046294_OK_20250220155428110.jpg\",\"position\":\"jiechakou\",\"result\":0}]"~~ ~~}~~ ``` |
|---|

~~path字段解析：~~

~~/~~[~~Images/HUD~~](ftp://10.200.6.108/Images/HUD)~~ 这部分根据不同事业部，都有不同固定的前缀~~
~~CCDWG 这个是站位~~
~~ASM2501-021137  这个是计划号~~
~~LD251H046294_OK_20250220155428110.jpg  这个是最终图片文件: 条码_图片结果_日期精确到毫秒~~



**~~返回示例~~**

|```JSON ~~{"succ": true,"code": 0,"msg": "","exceptionMsg": "","excuteMiniSeconds": 2902,"env": "Development"~~ ~~}~~ ``` |
|---|

