package com.xxl.api.admin.core.model;

/**
 * Created by xuxueli on 17/4/1.
 */
public class XxlApiMock {

    private String id;
    private String documentId;         // 接口ID
    private String uuid;
    private String respType;        // Response Content-type：如JSON、XML、HTML、TEXT、JSONP
    private String respExample;     // Response Content

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
