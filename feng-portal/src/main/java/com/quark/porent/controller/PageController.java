package com.quark.porent.controller;

import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author LHR
 * Create By 2017/8/23
 */
@Controller
public class PageController extends BaseController{

    @RequestMapping({"/index", "", "/"})
    public ModelAndView indexPage() {
        ModelAndView modelAndView =new ModelAndView("index");
        JSONObject quarkResult=getJsonRet("posts");
        modelAndView.addObject("quarkResult",quarkResult);
        return modelAndView;
    }

    @RequestMapping("/label")
    public String labelhome() {
        return "label/home";
    }

    @RequestMapping("/chat")
    public String chathome() {
        return "chat/home";
    }
}
