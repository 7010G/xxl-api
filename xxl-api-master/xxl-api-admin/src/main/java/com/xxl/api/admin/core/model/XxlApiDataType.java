package com.xxl.api.admin.core.model;

import java.util.List;

/**
 * Created by xuxueli on 17/6/1.
 */
public class XxlApiDataType {

    private String id;
    private String name;        // 数据类型名称
    private String about;       // 数据类型描述
    private String bizId;          // 业务线ID，业务线ID，为0表示公共

    private List<XxlApiDataTypeField> fieldList; // 参数列表

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public List<XxlApiDataTypeField> getFieldList() {
        return fieldList;
    }

    public void setFieldList(List<XxlApiDataTypeField> fieldList) {
        this.fieldList = fieldList;
    }

    public String getBizId() {
        return bizId;
    }

    public void setBizId(String bizId) {
        this.bizId = bizId;
    }
}
