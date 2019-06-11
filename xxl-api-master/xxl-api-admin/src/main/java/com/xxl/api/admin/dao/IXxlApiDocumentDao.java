package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiDocument;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/3/31.
 * @author xxl
 */
@Mapper
public interface IXxlApiDocumentDao {
    /**
     * 添加接口
      * @param xxlApiDocument 接口对象
     * @return 影响行数
     */
    public int add(XxlApiDocument xxlApiDocument);

    /**
     * 更新接口
     * @param xxlApiDocument 接口对象
     * @return 影响行数
     */
    public int update(XxlApiDocument xxlApiDocument);

    /**
     * 删除接口
     * @param id 接口ID
     * @return  影响行数
     */
    public int delete(@Param("id") String id);

    /**
     * 根据接口ID查询接口对象
     * @param id 接口ID
     * @return 接口对象
     */
    public XxlApiDocument load(@Param("id") String id);

    /**
     * 根据项目ID和分组ID查询接口
     * @param projectId 项目ID
     * @param groupId 分组ID
     * @return 结果集
     */
    public List<XxlApiDocument> loadAll(@Param("projectId") String projectId,
                                        @Param("groupId") String groupId);

    /**
     * 根据分组ID查询分组下的接口
     * @param groupId 分组ID
     * @return 结果集
     */
    public List<XxlApiDocument> loadByGroupId(@Param("groupId") String groupId);

    /**
     * 根据响应数据类型ID 查询接口
     * @param responseDatatypeId 数据类型ID
     * @return 结果集
     */
    List<XxlApiDocument> findByResponseDataTypeId(@Param("responseDatatypeId") String responseDatatypeId);

}
