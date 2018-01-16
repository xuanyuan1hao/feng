package cc.zhuzhu8.blog.service.impl;

import cc.zhuzhu8.blog.base.BaseServiceImpl;
import cc.zhuzhu8.blog.dao.OptionsDao;
import cc.zhuzhu8.blog.entity.Options;
import cc.zhuzhu8.blog.service.OptionsService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018-01-10.
 */
@Service
public class OptionsServiceImpl extends BaseServiceImpl<OptionsDao, Options> implements OptionsService {
    @Override
    public Options findOne(Integer id) {
        return repository.findOne(id);
    }

    @Override
    public List<Options> findAll() {
        return repository.findAll();
    }

    public boolean checkKey(String key) {
        Options user = repository.findByOptionKey(key);
        if (user == null) return true;
        return false;
    }
    @Override
    public void updateOrCreate(Options options) {
       if(checkKey(options.getOptionKey())) {
           repository.save(options);
       }else{
           Options optionsOld=repository.findByOptionKey(options.getOptionKey());
           options.setId(optionsOld.getId());
           repository.saveAndFlush(options);
       }
    }
}
