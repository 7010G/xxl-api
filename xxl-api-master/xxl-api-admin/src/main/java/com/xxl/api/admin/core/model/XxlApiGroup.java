package com.xxl.api.admin.core.model;

/**
 * Created by xuxueli on 17/3/30.
 */
public class XxlApiGroup {

    private String id;
    private String projectId;  // 项目ID
    private String name;    // 分组名称
    private int order;      // 分组排序

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }
}
