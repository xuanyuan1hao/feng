package cc.zhuzhu8.blog.dao;

import cc.zhuzhu8.blog.entity.Collect;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CollectDao extends JpaRepository<Collect,Integer> {
}
