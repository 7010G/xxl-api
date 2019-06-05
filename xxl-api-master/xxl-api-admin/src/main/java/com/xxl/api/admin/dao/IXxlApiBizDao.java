package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiBiz;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/5/23.
 * @author xxl
 */
@Mapper
public interface IXxlApiBizDao {
    /**
     * 添加业务对象信息
     * @param xxlApiBiz 业务线对象
     * @return 影响行数
     * @param
     */
    public int add(XxlApiBiz xxlApiBiz);

    /**
     * 更新业务对象信息
     * @param xxlApiBiz 业务线对象
     * @return 影响行数
     */
    public int update(XxlApiBiz xxlApiBiz);
    /**
     * 删除业务对象信息
     * @param id 业务线对象ID
     * @return 影响行数
     */
    public int delete(@Param("id") String id);

    /**
     * 查询所有数据并排序输出
     * @return 结果集
     */
    public List<XxlApiBiz> loadAll();

    /**
     * 分页条件查询
     * @param offset 跳过多少行
     * @param pagesize 显示多少行
     * @param bizName 业务线名称
     * @return 结果集
     */
    public List<XxlApiBiz> pageList(@Param("offset") int offset,
                                    @Param("pagesize") int pagesize,
                                    @Param("bizName") String bizName);

    /**
     * 查询此条件下有多少数据
     * @param offset 跳过多少行
     * @param pagesize 显示多少行
     * @param bizName 业务线名称
     * @return 总数
     */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize,
                             @Param("bizName") String bizName);

    /**
     * 精确查询业务线
     * @param id 业务线ID
     * @return 业务线对象
     */
    public XxlApiBiz load(@Param("id") String id);

}
