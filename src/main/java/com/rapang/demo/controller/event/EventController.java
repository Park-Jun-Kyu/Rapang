package com.rapang.demo.controller.event;

import com.rapang.demo.service.event.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {

    @Autowired
    EventService eventService;

    @RequestMapping("event")
    public String event(Model model){


        model.addAttribute("event",eventService.event());
        return "event/event";
    }

}
