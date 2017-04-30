package com.nasa.hackson.nasachatbot.domain;
import flexjson.JSONSerializer;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Messagetemplate {

    /**
     */
    @ManyToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    private List<Message> messages = new ArrayList<Message>();


}
