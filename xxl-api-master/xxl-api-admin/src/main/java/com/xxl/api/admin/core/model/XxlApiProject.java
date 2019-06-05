package com.xxl.api.admin.core.model;

/**
 * 项目类
 * Created by xuxueli on 17/3/30.
 * @author xxl
 */
public class XxlApiProject {
    /**
     *  项目ID
     */
    private String id;
    /**
     * 项目名称
     */
    private String name;
    /**
     *  项目描述
     */
    private String desc;
    /**
     * 根地址(线上)
     */
    private String baseUrlProduct;
    /**
     * 根地址(预发布)
     */
    private String baseUrlPpe;
    /**
     * 根地址(测试)
     */
    private String baseUrlQa;
    /**
     * 业务线ID
     */
    private String bizId;

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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getBaseUrlProduct() {
        return baseUrlProduct;
    }

    public void setBaseUrlProduct(String baseUrlProduct) {
        this.baseUrlProduct = baseUrlProduct;
    }

    public String getBaseUrlPpe() {
        return baseUrlPpe;
    }

    public void setBaseUrlPpe(String baseUrlPpe) {
        this.baseUrlPpe = baseUrlPpe;
    }

    public String getBaseUrlQa() {
        return baseUrlQa;
    }

    public void setBaseUrlQa(String baseUrlQa) {
        this.baseUrlQa = baseUrlQa;
    }

    public String getBizId() {
        return bizId;
    }

    public void setBizId(String bizId) {
        this.bizId = bizId;
    }
}
