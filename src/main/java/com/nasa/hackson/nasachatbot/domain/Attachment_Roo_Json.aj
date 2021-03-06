// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.Attachment;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Attachment_Roo_Json {
    
    public String Attachment.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String Attachment.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static Attachment Attachment.fromJsonToAttachment(String json) {
        return new JSONDeserializer<Attachment>()
        .use(null, Attachment.class).deserialize(json);
    }
    
    public static String Attachment.toJsonArray(Collection<Attachment> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String Attachment.toJsonArray(Collection<Attachment> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Attachment> Attachment.fromJsonArrayToAttachments(String json) {
        return new JSONDeserializer<List<Attachment>>()
        .use("values", Attachment.class).deserialize(json);
    }
    
}
