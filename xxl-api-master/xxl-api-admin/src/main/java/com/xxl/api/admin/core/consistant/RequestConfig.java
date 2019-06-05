package com.xxl.api.admin.core.consistant;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by xuxueli on 17/4/1.
 * @author xxl
 */
public class RequestConfig {

    /**
     *  Request Method
     */
    public enum  RequestMethodEnum {
        /**
         *  Request Method POST,GET,PUT,DELETE,HEAD,OPTIONS,PATCH
         */
        POST,GET,PUT,DELETE,HEAD,OPTIONS,PATCH;
    }

    /**
     * Request Headers
     */
    public static List<String> requestHeadersEnum = new LinkedList<String>();
    static {
        requestHeadersEnum.add("Accept");
        requestHeadersEnum.add("Accept-Charset");
        requestHeadersEnum.add("Accept-Encoding");
        requestHeadersEnum.add("Accept-Language");
        requestHeadersEnum.add("Accept-Ranges");
        requestHeadersEnum.add("Authorization");
        requestHeadersEnum.add("Cache-Control");
        requestHeadersEnum.add("Connection");
        requestHeadersEnum.add("Cookie");
        requestHeadersEnum.add("Content-Length");
        requestHeadersEnum.add("Content-Type");
        requestHeadersEnum.add("Date");
        requestHeadersEnum.add("Expect");
        requestHeadersEnum.add("From");
        requestHeadersEnum.add("Host");
        requestHeadersEnum.add("If-Match");
        requestHeadersEnum.add("If-Modified-Since");
        requestHeadersEnum.add("If-None-Match");
        requestHeadersEnum.add("If-Range");
        requestHeadersEnum.add("If-Unmodified-Since");
        requestHeadersEnum.add("Max-Forwards");
        requestHeadersEnum.add("Pragma");
        requestHeadersEnum.add("Proxy-Authorization");
        requestHeadersEnum.add("Range");
        requestHeadersEnum.add("Referer");
        requestHeadersEnum.add("TE");
        requestHeadersEnum.add("Upgrade");
        requestHeadersEnum.add("User-Agent");
        requestHeadersEnum.add("Via");
        requestHeadersEnum.add("Warning");
    }

    /**
     * Query Param, Type
     */
    public enum  QueryParamTypeEnum {
        //Query Param, Type  string
        STRING("string"),
        // Query Param, Type  boolean
        BOOLEAN("boolean"),
        //Query Param, Type  short
        SHORT("short"),
        //Query Param, Type  int
        INT("int"),
        //Query Param, Type  long
        LONG("long"),
        // Query Param, Type  float
        FLOAT("float"),
        //Query Param, Type  double
        DOUBLE("double"),
        //Query Param, Type  date
        DATE("date"),
        //Query Param, Type  datetime
        DATETIME("datetime"),
        //Query Param, Type  json
        JSON("json"),
        //Query Param, Type  byte
        BYTE("byte");

        public String title;
        QueryParamTypeEnum(String title) {
            this.title = title;
        }
    }

    /**
     * Query Param
     */
    public static class QueryParam {
        /**
         * 分组ID
         */
        private boolean notNull;
        /**
         * 参数名称
         */
        private String name;
        /**
         * 参数类型
         */
        private String type;
        /**
         * 参数说明
         */
        private String desc;

        public boolean isNotNull() {
            return notNull;
        }

        public void setNotNull(boolean notNull) {
            this.notNull = notNull;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }

        public String getDesc() {
            return desc;
        }

        public void setDesc(String desc) {
            this.desc = desc;
        }
    }

    /**
     * Reponse Headers, Content-Type
     */
    public enum ResponseContentType{
        //JSON响应头
        JSON("application/json;charset=UTF-8"),
        //XML响应头
        XML("text/xml"),
        //HTML响应头
        HTML("text/html;"),
        //TEXT响应头
        TEXT("text/plain"),
        //JSONP响应头
        JSONP("application/javascript");

        public final String type;
        ResponseContentType(String type) {
            this.type = type;
        }
        public static ResponseContentType match(String name){
            if (name != null) {
                for (ResponseContentType item: ResponseContentType.values()) {
                    if (item.name().equals(name)) {
                        return item;
                    }
                }
            }
            return null;
        }
    }

}
