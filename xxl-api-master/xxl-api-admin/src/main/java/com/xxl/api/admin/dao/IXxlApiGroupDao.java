package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiGroup;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/3/30.
 * @author xxl
 */
@Mapper
public interface IXxlApiGroupDao {
    /**
     * 添加分组
     * @param xxlApiGroup 分组对象
     * @return ID
     */
    public int add(XxlApiGroup xxlApiGroup);

    /**
     * 更新分组
     * @param xxlApiGroup 分组对象
     * @return 影响行数
     */
    public int update(XxlApiGroup xxlApiGroup);

    /**
     * 根据分组ID删除分组
     * @param id 分组ID
     * @return 影响行数
     */
    public int delete(@Param("id") String id);

    /**
     * 根据分组ID查询分组
     * @param id 分组ID
     * @return 分组对象
     */
    public XxlApiGroup load(@Param("id") String id);

    /**
     * 根据项目ID查询分组集
     * @param projectId 项目ID
     * @return 结果集
     */
    public List<XxlApiGroup> loadAll(@Param("projectId") String projectId);

}
