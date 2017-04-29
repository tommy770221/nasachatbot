package com.nasa.hackson.nasachatbot.web.controller;
import com.nasa.hackson.nasachatbot.domain.PeopleDecision;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/peopledecisions")
@Controller
@RooWebScaffold(path = "peopledecisions", formBackingObject = PeopleDecision.class)
@RooWebJson(jsonObject = PeopleDecision.class)
public class PeopleDecisionController {
}
