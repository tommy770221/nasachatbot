// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.Messagetemplate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Messagetemplate_Roo_Jpa_Entity {
    
    declare @type: Messagetemplate: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Messagetemplate.id;
    
    @Version
    @Column(name = "version")
    private Integer Messagetemplate.version;
    
    public Long Messagetemplate.getId() {
        return this.id;
    }
    
    public void Messagetemplate.setId(Long id) {
        this.id = id;
    }
    
    public Integer Messagetemplate.getVersion() {
        return this.version;
    }
    
    public void Messagetemplate.setVersion(Integer version) {
        this.version = version;
    }
    
}
