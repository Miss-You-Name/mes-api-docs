---
tags: [mes-api, ONT MES相关接口]
module: ONT MES相关接口
method: POST
test_url: "http://10\.200\.6\.27:10002/mes/api/plantakeandproduct/by/code/v1\.0\.0"
---

# 通过条码获取计划号、任务令、产品编码和图号(ONTmes使用)

> **模块**: [[00-总览|MES接口]] > ONT MES相关接口
> **方式**: POST
> **测试**: `http://10\.200\.6\.27:10002/mes/api/plantakeandproduct/by/code/v1\.0\.0`

---

##### 通过条码获取计划号、任务令、产品编码和图号(ONTmes使用)

简要描述

通过条码获取计划号、任务令、产品编码和图号

请求URL

- http://10.200.6.27:10002/mes/api/plantakeandproduct/by/code/v1.0.0

请求方式

- POST

请求参数说明

返回参数说明

请求成功示例

```Plain Text
{
  "barcode": "LD246H059160"
}
```

返回示例成功

```JSON
{
  "code": 0,
  "message": "success",
  "status": 200,
  "data": [
    {
      "planNo": "ASM2407-014375",
      "taskOrder": "MPLMYS72461",
      "productCode": "02700055C",
      "chartNo": null
    }
  ]
}
```



#### 柔性2.0线体相关接口

