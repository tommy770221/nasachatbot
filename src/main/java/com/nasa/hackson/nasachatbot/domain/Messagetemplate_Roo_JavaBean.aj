// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.Message;
import com.nasa.hackson.nasachatbot.domain.Messagetemplate;
import java.util.List;

privileged aspect Messagetemplate_Roo_JavaBean {
    
    public List<Message> Messagetemplate.getMessages() {
        return this.messages;
    }
    
    public void Messagetemplate.setMessages(List<Message> messages) {
        this.messages = messages;
    }
    
}
