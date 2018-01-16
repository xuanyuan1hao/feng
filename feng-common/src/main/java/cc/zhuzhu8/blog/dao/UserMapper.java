package cc.zhuzhu8.blog.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * Created by Administrator on 2018-01-05.
 */
@Mapper
public interface UserMapper {
    @Select("select count(1) from quark_user")
    int findCount();
}
