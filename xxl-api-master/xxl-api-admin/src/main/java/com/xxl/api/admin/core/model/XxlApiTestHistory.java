package com.xxl.api.admin.core.model;

import java.util.Date;

/**
 * 接口测试类
 * Created by xuxueli on 17/4/4.
 * @author xxl
 */
public class XxlApiTestHistory {
    /**
     *测试类ID
     */
    private String id;
    /**
     *  接口ID
     */
    private String documentId;
    /**
     * 创建时间
     */
    private Date addTime;
    /**
     * 更新时间
     */
    private Date updateTime;
    /**
     *  Request URL：相对地址
     */
    private String requestUrl;
    /**
     * Request Method：如POST、GET
     */
    private String requestMethod;
    /**
     * Request Headers：Map-JSON格式字符串
     */
    private String requestHeaders;
    /**
     * Query String Parameters：VO-JSON格式字符串
     */
    private String queryParams;
    /**
     *  Response Content-type
     */
    private String respType;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDocumentId() {
        return documentId;
    }

    public void setDocumentId(String documentId) {
        this.documentId = documentId;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getRequestUrl() {
        return requestUrl;
    }

    public void setRequestUrl(String requestUrl) {
        this.requestUrl = requestUrl;
    }

    public String getRequestMethod() {
        return requestMethod;
    }

    public void setRequestMethod(String requestMethod) {
        this.requestMethod = requestMethod;
    }

    public String getRequestHeaders() {
        return requestHeaders;
    }

    public void setRequestHeaders(String requestHeaders) {
        this.requestHeaders = requestHeaders;
    }

    public String getQueryParams() {
        return queryParams;
    }

    public void setQueryParams(String queryParams) {
        this.queryParams = queryParams;
    }

    public String getRespType() {
        return respType;
    }

    public void setRespType(String respType) {
        this.respType = respType;
    }
}
