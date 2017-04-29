package com.nasa.hackson.nasachatbot.web.controller;
import com.nasa.hackson.nasachatbot.domain.MsgElement;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/msgelements")
@Controller
@RooWebScaffold(path = "msgelements", formBackingObject = MsgElement.class)
@RooWebJson(jsonObject = MsgElement.class)
public class MsgElementController {
}
