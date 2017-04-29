package com.nasa.hackson.nasachatbot.domain;
import flexjson.JSONSerializer;
import org.codehaus.jackson.annotate.JsonProperty;
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
public class PayLoad {

    /**
     */
    @JsonProperty("template_type")
    private String templateType;

    /**
     */
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<MsgElement> elements = new ArrayList<MsgElement>();

    public String toJson(String[] fields) {
        ArrayList<String> fieldsTwo =new ArrayList<String>();
        for(String str:fields){
            fieldsTwo.add(str);
        }

        fieldsTwo.add("elements");
        return new JSONSerializer()
                .include((String[]) fieldsTwo.toArray()).exclude("*.class").serialize(this);
    }

}
