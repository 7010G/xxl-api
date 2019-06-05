package com.xxl.api.admin.core.model;

/**
 * 业务线类
 * Created by xuxueli on 17/5/23.
 * @author xxl
 */
public class XxlApiBiz {
    /**
     * 业务线ID
     */
    private String id;
    /**
     * 业务线名称
     */
    private String bizName;
    /**
     * 业务线顺序
     */
    private int order;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBizName() {
        return bizName;
    }

    public void setBizName(String bizName) {
        this.bizName = bizName;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }
}
