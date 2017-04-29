package com.nasa.hackson.nasachatbot.web.controller;

import com.nasa.hackson.nasachatbot.domain.Button;
import com.nasa.hackson.nasachatbot.domain.Messagetemplate;
import com.nasa.hackson.nasachatbot.domain.PeopleDecision;
import com.nasa.hackson.nasachatbot.domain.PeopleDetail;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * Created by tommy on 2017/4/29.
 */
@RequestMapping("/chatfuel")
@Controller
public class ChatFuelController {

    @RequestMapping(value = "block",method = {RequestMethod.GET,RequestMethod.POST}, produces = "application/json")
    @ResponseBody
    public String blockTemplate(@RequestParam(value = "msgId" ,required = false) String msgId,
                                @RequestParam(value = "gender",required = false) String gender,
                                @RequestParam(value = "positionX",required = false) String positionX,
                                @RequestParam(value = "positionY",required = false) String positionY,
                                @RequestParam(value = "country",required = false) String country,
                                @RequestParam(value = "age",required = false) String age,
                                HttpServletRequest httpServletRequest) {

        PeopleDetail peopleDetail=new PeopleDetail();
        peopleDetail.setAge(age);
        peopleDetail.setCountry(country);
        peopleDetail.setCreateDate(new Date());
        peopleDetail.setMsgId(msgId);
        peopleDetail.setGender(gender);
        peopleDetail.setPostionX(positionX);
        peopleDetail.setPostionY(positionY);
        peopleDetail.persist();


        return "{\n" +
                " \"messages\": [\n" +
                "    {\n" +
                "      \"attachment\":{\n" +
                "        \"type\":\"template\",\n" +
                "        \"payload\":{\n" +
                "          \"template_type\":\"generic\",\n" +
                "          \"elements\":[\n" +
                "            {\n" +
                "              \"title\":\"Classic White T-Shirt\",\n" +
                "              \"image_url\":\"https://www.shutterstock.com/zh/image-vector/wavy-hand-drew-vector-seamless-turquoise-585889475?src=MmgaQnFPhEpiyL-3GfdAUA-1-2\",\n" +
                "              \"subtitle\":\"Soft white cotton t-shirt is back in style\",\n" +
                "              \"buttons\":[\n" +
                "                {\n" +
                "                  \"type\":\"web_url\",\n" +
                "                  \"url\":\"https://www.shutterstock.com/zh/image-vector/wavy-hand-drew-vector-seamless-turquoise-585889475?src=MmgaQnFPhEpiyL-3GfdAUA-1-2\",\n" +
                "                  \"title\":\"View Item\"\n" +
                "                },\n" +
                "                {\n" +
                "                  \"type\":\"web_url\",\n" +
                "                  \"url\":\"https://www.shutterstock.com/zh/image-vector/wavy-hand-drew-vector-seamless-turquoise-585889475?src=MmgaQnFPhEpiyL-3GfdAUA-1-2\",\n" +
                "                  \"title\":\"Buy Item\"\n" +
                "                }\n" +
                "              ]\n" +
                "            },\n" +
                "            {\n" +
                "              \"title\":\"Classic Grey T-Shirt\",\n" +
                "              \"image_url\":\"https://www.shutterstock.com/zh/image-vector/wavy-hand-drew-vector-seamless-turquoise-585889475?src=MmgaQnFPhEpiyL-3GfdAUA-1-2\",\n" +
                "              \"subtitle\":\"Soft gray cotton t-shirt is back in style\",\n" +
                "              \"buttons\":[\n" +
                "                {\n" +
                "                  \"type\":\"web_url\",\n" +
                "                  \"url\":\"https://petersapparel.parseapp.com/view_item?item_id=101\",\n" +
                "                  \"title\":\"View Item\"\n" +
                "                },\n" +
                "                {\n" +
                "                  \"type\":\"web_url\",\n" +
                "                  \"url\":\"https://petersapparel.parseapp.com/buy_item?item_id=101\",\n" +
                "                  \"title\":\"Buy Item\"\n" +
                "                }\n" +
                "              ]\n" +
                "            }\n" +
                "          ]\n" +
                "        }\n" +
                "      }\n" +
                "    }\n" +
                "  ]\n" +
                "}";
    }

    @RequestMapping(value = "/template",method = {RequestMethod.GET,RequestMethod.POST}, produces = "application/json")
    @ResponseBody
    public ResponseEntity<String> selectTemplate(@RequestParam(value = "msgId" ,required = false) String msgId,
                                 @RequestParam(value = "gender",required = false) String gender,
                                 @RequestParam(value = "blockName",required = false) String blockName,
                                HttpServletRequest httpServletRequest) throws IOException {

             PeopleDecision peopleDecision=new PeopleDecision();
             peopleDecision.setMsgFBId(msgId);
             peopleDecision.setActionButton(blockName);
             peopleDecision.persist();

             Button button=Button.findButtonsByTitleEquals(blockName).getSingleResult();

             Messagetemplate messagetemplate=Messagetemplate.findMessagetemplate(button.getGoTotemplate());

        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (messagetemplate == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        String[] messages={"messages","buttons","elements"};
        String template="";
        System.out.println(messagetemplate.toJson(messages));
        ObjectMapper mapper = new ObjectMapper();
        String jsonInString = mapper.writeValueAsString(messagetemplate);


        return new ResponseEntity<String>(jsonInString, headers, HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> showJson(@PathVariable("id") Long id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        try {
            Button button = Button.findButton(id);
            if (button == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
            return new ResponseEntity<String>(button.toJson(), headers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        try {
            List<Button> result = Button.findAllButtons();
            return new ResponseEntity<String>(Button.toJsonArray(result), headers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> createFromJson(@RequestBody String json, UriComponentsBuilder uriBuilder) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        try {
            Button button = Button.fromJsonToButton(json);
            button.persist();
            RequestMapping a = (RequestMapping) getClass().getAnnotation(RequestMapping.class);
            headers.add("Location",uriBuilder.path(a.value()[0]+"/"+button.getId().toString()).build().toUriString());
            return new ResponseEntity<String>(headers, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> createFromJsonArray(@RequestBody String json) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        try {
            for (Button button: Button.fromJsonArrayToButtons(json)) {
                button.persist();
            }
            return new ResponseEntity<String>(headers, HttpStatus.CREATED);
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> updateFromJson(@RequestBody String json, @PathVariable("id") Long id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        try {
            Button button = Button.fromJsonToButton(json);
            button.setId(id);
            if (button.merge() == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
            return new ResponseEntity<String>(headers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> deleteFromJson(@PathVariable("id") Long id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        try {
            Button button = Button.findButton(id);
            if (button == null) {
                return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
            }
            button.remove();
            return new ResponseEntity<String>(headers, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<String>("{\"ERROR\":"+e.getMessage()+"\"}", headers, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
