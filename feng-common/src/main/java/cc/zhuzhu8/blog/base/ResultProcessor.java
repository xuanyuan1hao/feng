package cc.zhuzhu8.blog.base;


import cc.zhuzhu8.blog.dto.QuarkResult;

@FunctionalInterface
public interface ResultProcessor {
    QuarkResult process();
}
