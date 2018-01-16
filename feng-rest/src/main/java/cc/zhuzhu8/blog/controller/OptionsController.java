package cc.zhuzhu8.blog.controller;

import cc.zhuzhu8.blog.base.BaseController;
import cc.zhuzhu8.blog.dto.QuarkResult;
import cc.zhuzhu8.blog.entity.Options;
import cc.zhuzhu8.blog.service.OptionsService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Administrator on 2018-01-10.
 */
@Api("系统参数接口")
@RequestMapping("/options")
@RestController
public class OptionsController extends BaseController {

    @Autowired
    private OptionsService optionsService;

    @ApiOperation("获取所有系统参数接口")
    @GetMapping()
    public QuarkResult getAllOptions(){
        QuarkResult result = restProcessor(() -> {
            List<Options> list= optionsService.findAll();
            return QuarkResult.ok(list);
        });
        return result;
    }

    @ApiOperation("添加更新配置接口")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query",name = "key", value = "配置名称",dataType = "String"),
            @ApiImplicitParam(paramType = "query",name = "value", value = "配置值",dataType = "String"),
            @ApiImplicitParam(paramType = "query",name = "desc", value = "配置描述",dataType = "String")
    })
    @PostMapping
    public QuarkResult updateOrCreateOption(String key,String value,String desc) {
        QuarkResult result = restProcessor(() -> {
            Options options=new Options();
            options.setOptionKey(key);
            options.setOptionDesc(desc);
            options.setOptionValue(value);
            optionsService.updateOrCreate(options);
            return QuarkResult.ok();
        });
        return result;
    }
}
