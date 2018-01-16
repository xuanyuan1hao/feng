package cc.zhuzhu8.blog.service;

import cc.zhuzhu8.blog.entity.Options;

import java.util.List;

/**
 * Created by Administrator on 2018-01-10.
 */
public interface OptionsService {

    Options findOne(Integer integer);

    List<Options> findAll();

    void updateOrCreate(Options options);
}
