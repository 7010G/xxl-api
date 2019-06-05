package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiMock;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/4/1.
 * @author xxl
 */
@Mapper
public interface IXxlApiMockDao {
    /**
     * 添加Mock类型
     * @param xxlApiMock Mock对象
     * @return ID
     */
    public int add(XxlApiMock xxlApiMock);

    /**
     * 更新Mock类型
     * @param xxlApiMock Mock对象
     * @return 影响行数
     */
    public int update(XxlApiMock xxlApiMock);

    /**
     * 根据Mock ID 删除Mock类型
     * @param id Mock ID
     * @return 影响行数
     */
    public int delete(@Param("id") String id);

    /**
     * 根据接口ID 查询 Mock类型
     * @param documentId 接口ID
     * @return  结果集
     */
    public List<XxlApiMock> loadAll(@Param("documentId") String documentId);

    /**
     * 根据Mock ID 查询Mock类型
     * @param id
     * @return
     */
    public XxlApiMock load(@Param("id") String id);

    /**
     * 根据UUID 查询Mock类型
     * @param uuid UUID
     * @return Mock类型
     */
    public XxlApiMock loadByUuid(@Param("uuid") String uuid);

}
