package com.iot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 贺文杰
 * 2019/3/9 1:07
 */
@Controller
@RequestMapping("iot")
public class HelloController {

    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }
}
