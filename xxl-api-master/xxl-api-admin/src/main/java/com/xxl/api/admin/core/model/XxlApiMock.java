package com.xxl.api.admin.core.model;

/**
 * 模拟响应类型Mock类
 * Created by xuxueli on 17/4/1.
 * @author xxl
 */
public class XxlApiMock {
    /**
     *Mock ID
     */
    private String id;
    /**
     * 接口ID
     */
    private String documentId;
    /**
     * UUID
     */
    private String uuid;
    /**
     * 相应类型
     */
    private String respType;
    /**
     *响应正文
     */
    private String respExample;

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

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getRespType() {
        return respType;
    }

    public void setRespType(String respType) {
        this.respType = respType;
    }

    public String getRespExample() {
        return respExample;
    }

    public void setRespExample(String respExample) {
        this.respExample = respExample;
    }
}
