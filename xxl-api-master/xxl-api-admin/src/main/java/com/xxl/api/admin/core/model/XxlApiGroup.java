package com.xxl.api.admin.core.model;

/**
 * 接口分组类
 * Created by xuxueli on 17/3/30.
 * @author xxl
 */
public class XxlApiGroup {
    /**
     * 分组ID
     */
    private String id;
    /**
     *  项目ID
     */
    private String projectId;
    /**
     *  分组名称
     */
    private String name;
    /**
     *  分组排序
     */
    private int order;

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
