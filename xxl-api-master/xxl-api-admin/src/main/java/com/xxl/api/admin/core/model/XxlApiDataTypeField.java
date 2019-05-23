package com.xxl.api.admin.core.model;

/**
 * Created by xuxueli on 17/6/1.
 */
public class XxlApiDataTypeField {

    private String id;
    private String parentDatatypeId;   // 所属，数据类型ID
    private String fieldName;       // 字段名称
    private String fieldAbout;      // 字段描述
    private String fieldDatatypeId;    // 字段数据类型ID
    private int fieldType;          // 字段形式：0=默认、1=数组   @see FieldTypeEnum

    // fieldDatatype dto
    private XxlApiDataType fieldDatatype;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentDatatypeId() {
        return parentDatatypeId;
    }

    public void setParentDatatypeId(String parentDatatypeId) {
        this.parentDatatypeId = parentDatatypeId;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getFieldAbout() {
        return fieldAbout;
    }

    public void setFieldAbout(String fieldAbout) {
        this.fieldAbout = fieldAbout;
    }

    public String getFieldDatatypeId() {
        return fieldDatatypeId;
    }

    public void setFieldDatatypeId(String fieldDatatypeId) {
        this.fieldDatatypeId = fieldDatatypeId;
    }

    public int getFieldType() {
        return fieldType;
    }

    public void setFieldType(int fieldType) {
        this.fieldType = fieldType;
    }

    public XxlApiDataType getFieldDatatype() {
        return fieldDatatype;
    }

    public void setFieldDatatype(XxlApiDataType fieldDatatype) {
        this.fieldDatatype = fieldDatatype;
    }
}
