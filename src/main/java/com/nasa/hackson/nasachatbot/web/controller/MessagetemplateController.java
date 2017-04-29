package com.nasa.hackson.nasachatbot.web.controller;
import com.nasa.hackson.nasachatbot.domain.Messagetemplate;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/messagetemplates")
@Controller
@RooWebScaffold(path = "messagetemplates", formBackingObject = Messagetemplate.class)
@RooWebJson(jsonObject = Messagetemplate.class)
public class MessagetemplateController {
}
