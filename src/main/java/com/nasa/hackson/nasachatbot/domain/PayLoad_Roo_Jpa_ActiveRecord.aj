// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.PayLoad;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PayLoad_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PayLoad.entityManager;
    
    public static final List<String> PayLoad.fieldNames4OrderClauseFilter = java.util.Arrays.asList("templateType", "name");
    
    public static final EntityManager PayLoad.entityManager() {
        EntityManager em = new PayLoad().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PayLoad.countPayLoads() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PayLoad o", Long.class).getSingleResult();
    }
    
    public static List<PayLoad> PayLoad.findAllPayLoads() {
        return entityManager().createQuery("SELECT o FROM PayLoad o", PayLoad.class).getResultList();
    }
    
    public static List<PayLoad> PayLoad.findAllPayLoads(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PayLoad o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PayLoad.class).getResultList();
    }
    
    public static PayLoad PayLoad.findPayLoad(Long id) {
        if (id == null) return null;
        return entityManager().find(PayLoad.class, id);
    }
    
    public static List<PayLoad> PayLoad.findPayLoadEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PayLoad o", PayLoad.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PayLoad> PayLoad.findPayLoadEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PayLoad o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PayLoad.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PayLoad.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PayLoad.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PayLoad attached = PayLoad.findPayLoad(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PayLoad.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PayLoad.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PayLoad PayLoad.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PayLoad merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
