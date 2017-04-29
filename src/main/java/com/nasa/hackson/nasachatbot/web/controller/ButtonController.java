package com.nasa.hackson.nasachatbot.web.controller;
import com.nasa.hackson.nasachatbot.domain.Button;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

@RequestMapping("/buttons")
@Controller
@RooWebScaffold(path = "buttons", formBackingObject = Button.class)
@RooWebJson(jsonObject = Button.class)
public class ButtonController {


}
