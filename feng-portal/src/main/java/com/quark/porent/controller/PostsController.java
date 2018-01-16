package com.quark.porent.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author LHR
 * Create By 2017/8/27
 */
@Controller
@RequestMapping("/posts")
public class PostsController extends BaseController{

    @RequestMapping("/add")
    public String add(){
        return "posts/add";
    }

    @RequestMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable("id") String id) {
        ModelAndView modelAndView =new ModelAndView("posts/detail");
        JSONObject quarkResult=getJsonRet("posts/detail/"+id+"?pageNo=1");
        modelAndView.addObject("quarkResult",quarkResult);
        return modelAndView;
    }

    @RequestMapping("/list")
    public ModelAndView list() {
        ModelAndView modelAndView =new ModelAndView("posts/list");
        JSONObject quarkResult=getJsonRet("posts");
        modelAndView.addObject("page",quarkResult);
        return modelAndView;
    }
}
