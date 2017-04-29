// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.PeopleDecision;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect PeopleDecision_Roo_Json {
    
    public String PeopleDecision.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String PeopleDecision.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static PeopleDecision PeopleDecision.fromJsonToPeopleDecision(String json) {
        return new JSONDeserializer<PeopleDecision>()
        .use(null, PeopleDecision.class).deserialize(json);
    }
    
    public static String PeopleDecision.toJsonArray(Collection<PeopleDecision> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String PeopleDecision.toJsonArray(Collection<PeopleDecision> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<PeopleDecision> PeopleDecision.fromJsonArrayToPeopleDecisions(String json) {
        return new JSONDeserializer<List<PeopleDecision>>()
        .use("values", PeopleDecision.class).deserialize(json);
    }
    
}
