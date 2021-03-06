// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.Messagetemplate;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Messagetemplate_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Messagetemplate.entityManager;
    
    public static final List<String> Messagetemplate.fieldNames4OrderClauseFilter = java.util.Arrays.asList("messages");
    
    public static final EntityManager Messagetemplate.entityManager() {
        EntityManager em = new Messagetemplate().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Messagetemplate.countMessagetemplates() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Messagetemplate o", Long.class).getSingleResult();
    }
    
    public static List<Messagetemplate> Messagetemplate.findAllMessagetemplates() {
        return entityManager().createQuery("SELECT o FROM Messagetemplate o", Messagetemplate.class).getResultList();
    }
    
    public static List<Messagetemplate> Messagetemplate.findAllMessagetemplates(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Messagetemplate o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Messagetemplate.class).getResultList();
    }
    
    public static Messagetemplate Messagetemplate.findMessagetemplate(Long id) {
        if (id == null) return null;
        return entityManager().find(Messagetemplate.class, id);
    }
    
    public static List<Messagetemplate> Messagetemplate.findMessagetemplateEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Messagetemplate o", Messagetemplate.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Messagetemplate> Messagetemplate.findMessagetemplateEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Messagetemplate o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Messagetemplate.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Messagetemplate.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Messagetemplate.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Messagetemplate attached = Messagetemplate.findMessagetemplate(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Messagetemplate.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Messagetemplate.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Messagetemplate Messagetemplate.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Messagetemplate merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
