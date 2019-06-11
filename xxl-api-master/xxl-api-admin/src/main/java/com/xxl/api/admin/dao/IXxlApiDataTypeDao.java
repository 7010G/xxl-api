package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiDataType;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 数据类型
 * Created by xuxueli on 17/6/3.
 * @author xxl
 */
@Mapper
public interface IXxlApiDataTypeDao {
    /**
     * 添加数据类型
     * @param xxlApiDataType 数据类型对象
     * @return 影响行数
     */
    public int add(XxlApiDataType xxlApiDataType);

    /**
     * 更新数据类型
     * @param xxlApiDataType 数据类型对象
     * @return 影响行数
     */
    public int update(XxlApiDataType xxlApiDataType);

    /**
     * 删除数据类型
     * @param id 数据类型ID
     * @return 影响行数
     */
    public int delete(@Param("id") String id);

    /**
     * 根据数据类型ID查询
     * @param id 数据类型ID
     * @return 数据类型对象
     * */
    public XxlApiDataType load(@Param("id") String id);

    /**
     * 分页条件查询
     * @param offset 跳过多少行
     * @param pagesize 显示多少行
     * @param bizId 业务线ID
     * @param name 数据类型名称
     * @return 结果集
     */
    public List<XxlApiDataType> pageList(@Param("offset") int offset,
                                         @Param("pagesize") int pagesize,
                                         @Param("bizId") String bizId,
                                         @Param("name") String name);

    /**
     * 条件查询总行数
     * @param offset 跳过多少行
     * @param pagesize 显示多少行
     * @param bizId 业务线ID
     * @param name 数据类型名称
     * @return 总行数
     */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize,
                             @Param("bizId") String bizId,
                             @Param("name") String name);

    /**
     * 根据数据类型名称进行查询
     * @param name 数据类型名称
     * @return 数据类型对象
     */
    public XxlApiDataType loadByName(@Param("name") String name);

}
