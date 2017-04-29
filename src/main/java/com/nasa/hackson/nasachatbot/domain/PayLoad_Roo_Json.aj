// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.PayLoad;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect PayLoad_Roo_Json {
    
    public String PayLoad.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    

    public static PayLoad PayLoad.fromJsonToPayLoad(String json) {
        return new JSONDeserializer<PayLoad>()
        .use(null, PayLoad.class).deserialize(json);
    }
    
    public static String PayLoad.toJsonArray(Collection<PayLoad> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String PayLoad.toJsonArray(Collection<PayLoad> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<PayLoad> PayLoad.fromJsonArrayToPayLoads(String json) {
        return new JSONDeserializer<List<PayLoad>>()
        .use("values", PayLoad.class).deserialize(json);
    }
    
}