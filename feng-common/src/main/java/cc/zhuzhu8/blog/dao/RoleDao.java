package cc.zhuzhu8.blog.dao;

import cc.zhuzhu8.blog.entity.Role;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lhr on 17-7-31.
 */

@Repository
@CacheConfig(cacheNames = "roles")
public interface RoleDao extends JpaRepository<Role,Integer>{

    Role findOne(Integer integer);

    @Cacheable
    List<Role> findAll();

}
