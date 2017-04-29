package com.nasa.hackson.nasachatbot.web.controller;
import com.nasa.hackson.nasachatbot.domain.PayLoad;
import com.nasa.hackson.nasachatbot.domain.PeopleDetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/payloads")
@Controller
@RooWebScaffold(path = "payloads", formBackingObject = PayLoad.class)
@RooWebJson(jsonObject = PayLoad.class)
public class PayLoadController {
}
