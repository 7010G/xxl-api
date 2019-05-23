package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiProject;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/3/30.
 */
@Mapper
public interface IXxlApiProjectDao {

    public int add(XxlApiProject xxlApiProject);
    public int update(XxlApiProject xxlApiProject);
    public int delete(@Param("id") String id);

    public XxlApiProject load(@Param("id") String id);
    public List<XxlApiProject> pageList(@Param("offset") int offset,
                                        @Param("pagesize") int pagesize,
                                        @Param("name") String name,
                                        @Param("bizId") String bizId);
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize,
                             @Param("name") String name,
                             @Param("bizId") String bizId);

}
