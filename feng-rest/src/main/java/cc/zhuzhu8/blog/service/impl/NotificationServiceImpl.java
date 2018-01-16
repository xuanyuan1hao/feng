package cc.zhuzhu8.blog.service.impl;

import cc.zhuzhu8.blog.base.BaseServiceImpl;
import cc.zhuzhu8.blog.dao.NotificationDao;
import cc.zhuzhu8.blog.entity.Notification;
import cc.zhuzhu8.blog.entity.User;
import cc.zhuzhu8.blog.service.NotificationService;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * @Author LHR
 * Create By 2017/9/6
 */
@Service
@Transactional
public class NotificationServiceImpl extends BaseServiceImpl<NotificationDao,Notification> implements NotificationService{

    @Override
    public long getNotificationCount(int uid) {
        return repository.getNotificationCount(uid);
    }

    @Override
    public List<Notification> findByUser(User user) {
        List<Notification> list = repository.getByTouserOrderByInitTimeDesc(user);
        repository.updateByIsRead(user);
        return list;
    }

    @Override
    public void deleteByUser(User user) {
        List<Notification> list = repository.getByTouserOrderByInitTimeDesc(user);
        repository.deleteInBatch(list);
    }
}
