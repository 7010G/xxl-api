package com.xxl.api.admin.dao;

import com.xxl.api.admin.core.model.XxlApiUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xuxueli on 17/3/29.
 * @author xxl
 */
@Mapper
public interface IXxlApiUserDao {
    /**
     * 添加用户
     * @param xxlApiUser 用户对象
     * @return 影响行数
     */
    public int add(XxlApiUser xxlApiUser);

    /**
     * 更新用户
     * @param xxlApiUser 用户对象
     * @return 影响行数
     */
    public int update(XxlApiUser xxlApiUser);

    /**
     * 根据用户ID删除用户
     * @param id 用户ID
     * @return 影响行数
     */
    public int delete(@Param("id") String id);

    /**
     * 根据用户名查询用户
     * @param userName 用户名
     * @return 用户对象
     */
    public XxlApiUser findByUserName(@Param("userName") String userName);

    /**
     * 根据用户ID查询用户用户
     * @param id 用户ID
     * @return 用户对象
     */
    public XxlApiUser findById(@Param("id") String id);

    /**
     * 查询所有用户
     * @return 结果集
     */
    public List<XxlApiUser> loadAll();

    /**
     * 根据用户名称和用户类型查询用户
     * @param offset 跳过多少行
     * @param pagesize 显示多少行
     * @param userName 用户名称
     * @param type 用户类型
     * @return 结果集
     */
    public List<XxlApiUser> pageList(@Param("offset") int offset,
                                     @Param("pagesize") int pagesize,
                                     @Param("userName") String userName,
                                     @Param("type") int type);

    /**
     * 根据用户名称和用户类型查询用户数量
     * @param offset 跳过多少行
     * @param pagesize 显示多少行
     * @param userName 用户名称
     * @param type 用户类型
     * @return COUNT
     */
    public int pageListCount(@Param("offset") int offset,
                             @Param("pagesize") int pagesize,
                             @Param("userName") String userName,
                             @Param("type") int type);
}
