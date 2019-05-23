package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiDocument;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/3/31.
 */
@Mapper
public interface IXxlApiDocumentDao {

    public int add(XxlApiDocument xxlApiDocument);
    public int update(XxlApiDocument xxlApiDocument);
    public int delete(@Param("id") String id);

    public XxlApiDocument load(@Param("id") String id);
    public List<XxlApiDocument> loadAll(@Param("projectId") String projectId,
                                        @Param("groupId") String groupId);

    public List<XxlApiDocument> loadByGroupId(@Param("groupId") String groupId);

    List<XxlApiDocument> findByResponseDataTypeId(@Param("responseDatatypeId") String responseDatatypeId);

}
