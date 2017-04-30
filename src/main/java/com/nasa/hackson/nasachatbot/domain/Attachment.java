package com.nasa.hackson.nasachatbot.domain;
import flexjson.JSONSerializer;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;
import java.util.ArrayList;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Attachment {

    /**
     */
    private String type;

    /**
     */
    @ManyToOne(fetch = FetchType.EAGER)
    private PayLoad payload;

    /**
     */
    @JsonIgnore
    private String name;
}
