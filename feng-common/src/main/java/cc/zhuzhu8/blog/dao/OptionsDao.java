package cc.zhuzhu8.blog.dao;

import cc.zhuzhu8.blog.entity.Options;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2018-01-10.
 */
@Repository
@CacheConfig(cacheNames = "options")
public interface OptionsDao  extends JpaRepository<Options,Integer> {

    Options findOne(Integer id);

    List<Options> findAll();

    Options findByOptionKey(String optionKey);
}
