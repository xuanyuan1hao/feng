package cc.zhuzhu8.blog;

import cc.zhuzhu8.blog.dao.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;

/**
 * Created by lhr on 17-7-30.
 */
@RunWith(SpringRunner.class)
@EnableCaching//缓存支持
@SpringBootTest
public class CommonApplicationTest {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private UserDao UserDao;

    @Autowired
    private PostsDao postsDao;

    @Autowired
    private LabelDao labelDao;

    @Autowired
    private NotificationDao notificationDao;

    @Autowired
    private UserMapper userMapper;

    @Test
    public void TestDataSource() {
        int count = userMapper.findCount();
        System.out.println(count);
//        long count = notificationDao.getNotificationCount(72);
//        System.out.println(count);
//        List<Notification> list = notificationDao.getByTouser(UserDao.findOne(2));
//        System.out.println(list);
//        list.forEach(t->{
//            System.out.println(t.getPosts().getTitle());
//        });
    }
}
