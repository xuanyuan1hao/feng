package cc.zhuzhu8.blog.dao;

import cc.zhuzhu8.blog.entity.Label;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LabelDao extends JpaRepository<Label,Integer> {
}
