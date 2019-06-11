package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiTestHistory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 2017-04-04 18:40:11
 * @author xxl
 */
@Mapper
public interface IXxlApiTestHistoryDao {
    /**
     * 添加接口测试数据
     * @param xxlApiTestHistory 接口测试对象
     * @return 影响行数
     */
    public int add(XxlApiTestHistory xxlApiTestHistory);

    /**
     * 更新接口测试数据
     * @param xxlApiTestHistory 接口测试对象
     * @return 影响行数
     */
    public int update(XxlApiTestHistory xxlApiTestHistory);

    /**
     * 根据接口测试类ID删除接口测试数据
     * @param id 接口测试类ID
     * @return 影响行数
     */
    public int delete(@Param("id") String id);

    /**
     * 根据接口测试类ID查询接口测试数据
     * @param id 接口测试类ID
     * @return 结果集
     */
    public XxlApiTestHistory load(@Param("id") String id);

    /**
     * 根据接口ID查询接口测试类
     * @param documentId 接口ID
     * @return 结果集
     */
    public List<XxlApiTestHistory> loadByDocumentId(@Param("documentId") String documentId);
}
