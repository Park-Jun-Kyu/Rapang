package com.rapang.demo;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RapangController {


    @RequestMapping(value = "/hihi")
    public String home(){

        return "home";
    }


}
