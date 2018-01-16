package cc.zhuzhu8.blog.controller;

import cc.zhuzhu8.blog.base.BaseController;
import cc.zhuzhu8.blog.dto.QuarkResult;
import cc.zhuzhu8.blog.entity.Label;
import cc.zhuzhu8.blog.service.LabelService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * @Author LHR
 * Create By 2017/8/27
 */
@Api(value = "标签接口",description = "获取标签")
@RestController
@RequestMapping("/label")
public class LabelController extends BaseController{

    @Autowired
    private LabelService labelService;


    @ApiOperation("获取标签")
    @GetMapping
    public QuarkResult getAllLabel(){

        QuarkResult result = restProcessor(() -> {
            List<Label> labels = labelService.findAll();
            return QuarkResult.ok(labels);
        });

        return result;
    }



}
