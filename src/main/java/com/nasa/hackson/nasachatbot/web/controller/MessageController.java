package com.nasa.hackson.nasachatbot.web.controller;
import com.nasa.hackson.nasachatbot.domain.Message;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/messages")
@Controller
@RooWebScaffold(path = "messages", formBackingObject = Message.class)
@RooWebJson(jsonObject = Message.class)
public class MessageController {
}
