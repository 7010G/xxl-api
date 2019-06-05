package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiDataTypeField;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/6/3.
 * @author xxl
 */
@Mapper
public interface IXxlApiDataTypeFieldDao {
    /**
     * 添加字段
     * @param xxlApiDataTypeFieldList 字段集合
     * @return ID
     */
    public int add(List<XxlApiDataTypeField> xxlApiDataTypeFieldList);

    /**
     * 根据所属数据类型ID删除字段
     * @param parentDatatypeId 根据所属数据类型ID
     * @return 影响行数
     */
    public int deleteByParentDatatypeId(@Param("parentDatatypeId") String parentDatatypeId);

    /**
     * 根据所属数据类型ID查询字段对象集
     * @param parentDatatypeId 所属数据类型ID
     * @return 结果集
     */
    public List<XxlApiDataTypeField> findByParentDatatypeId(@Param("parentDatatypeId") String parentDatatypeId);

    /**
     * 根据字段数据类型ID查询字段对象集
     * @param fieldDatatypeId  字段数据类型ID
     * @return 结果集
     */
    public List<XxlApiDataTypeField> findByFieldDatatypeId(@Param("fieldDatatypeId") String fieldDatatypeId);

}
