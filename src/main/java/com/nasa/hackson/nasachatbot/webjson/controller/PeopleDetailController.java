package com.nasa.hackson.nasachatbot.webjson.controller;
import com.nasa.hackson.nasachatbot.domain.PeopleDetail;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = PeopleDetail.class)
@Controller
@RequestMapping("/peopledetails")
public class PeopleDetailController {
}
