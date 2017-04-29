package com.nasa.hackson.nasachatbot.web.controller;
import com.nasa.hackson.nasachatbot.domain.Attachment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;

@RequestMapping("/attachments")
@Controller
@RooWebScaffold(path = "attachments", formBackingObject = Attachment.class)
@RooWebJson(jsonObject = Attachment.class)
public class AttachmentController {
}
