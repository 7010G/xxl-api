package com.xxl.api.admin.core.model;

import java.util.List;

/**
 * 数据类型类
 * Created by xuxueli on 17/6/1.
 * @author xxl
 */
public class XxlApiDataType {

    private String id;
    /**
     *数据类型名称
     */
    private String name;
    /**
     * 数据类型描述
     */
    private String about;
    /**
     * 业务线ID，业务线ID，为0表示公共
     */
    private String bizId;
    /**
     * 参数列表
     */
    private List<XxlApiDataTypeField> fieldList;

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
