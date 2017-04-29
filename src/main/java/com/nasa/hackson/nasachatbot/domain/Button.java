package com.nasa.hackson.nasachatbot.domain;
import org.codehaus.jackson.annotate.JsonProperty;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJson
@RooJpaActiveRecord(finders = { "findButtonsByTitleEquals" })
public class Button {

    /**
     */
    private String type;

    /**
     */
    @JsonProperty("block_name")
    private String url;

    /**
     */
    private String title;

    /***
     *
     */
    private Long goTotemplate;

    public Long getGoTotemplate() {
        return goTotemplate;
    }

    public void setGoTotemplate(Long goTotemplate) {
        this.goTotemplate = goTotemplate;
    }
}
