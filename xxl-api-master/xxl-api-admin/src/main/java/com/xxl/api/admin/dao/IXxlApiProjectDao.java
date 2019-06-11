package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiProject;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/3/30.
 * @author xxl
 */
@Mapper
public interface IXxlApiProjectDao {
    /**
     * 添加项目
     * @param xxlApiProject 项目对象
     * @return 影响行数
     */
    public int add(XxlApiProject xxlApiProject);

    /**
     * 更新项目
     * @param xxlApiProject 项目对象
     * @return 影响行数
     */
    public int update(XxlApiProject xxlApiProject);

    /**
     * 根据项目ID删除项目
     * @param id 项目ID
     * @return 影响行数
     */
    public int delete(@Param("id") String id);

    /**
     * 根据项目ID查询项目
     * @param id 项目ID
     * @return 项目对象
     */
    public XxlApiProject load(@Param("id") String id);

    /**
     * 根据项目名称和业务线ID查询项目集
     * @param offset 跳过多少行
     * @param pagesize 显示多少行
     * @param name 项目名称
     * @param bizId 业务线ID
     * @return 结果集
     */
    public List<XxlApiProject> pageList(@Param("offset") int offset,
                                        @Param("pagesize") int pagesize,
                                        @Param("name") String name,
                                        @Param("bizId") String bizId);

    /**
     *根据项目名称和业务线ID查询项目总数
     * @param offset 跳过多少行
     * @param pagesize 显示多少行
     * @param name 项目名称
     * @param bizId 业务线ID
     * @return COUNT
     */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize,
                             @Param("name") String name,
                             @Param("bizId") String bizId);

}
