// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.Button;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Button_Roo_Json {
    
    public String Button.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String Button.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static Button Button.fromJsonToButton(String json) {
        return new JSONDeserializer<Button>()
        .use(null, Button.class).deserialize(json);
    }
    
    public static String Button.toJsonArray(Collection<Button> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String Button.toJsonArray(Collection<Button> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Button> Button.fromJsonArrayToButtons(String json) {
        return new JSONDeserializer<List<Button>>()
        .use("values", Button.class).deserialize(json);
    }
    
}
