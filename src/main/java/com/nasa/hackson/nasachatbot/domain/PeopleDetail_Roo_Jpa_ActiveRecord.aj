// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.PeopleDetail;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PeopleDetail_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PeopleDetail.entityManager;
    
    public static final List<String> PeopleDetail.fieldNames4OrderClauseFilter = java.util.Arrays.asList("msgId", "gender", "postionX", "postionY", "country", "age", "createDate");
    
    public static final EntityManager PeopleDetail.entityManager() {
        EntityManager em = new PeopleDetail().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PeopleDetail.countPeopleDetails() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PeopleDetail o", Long.class).getSingleResult();
    }
    
    public static List<PeopleDetail> PeopleDetail.findAllPeopleDetails() {
        return entityManager().createQuery("SELECT o FROM PeopleDetail o", PeopleDetail.class).getResultList();
    }
    
    public static List<PeopleDetail> PeopleDetail.findAllPeopleDetails(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PeopleDetail o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PeopleDetail.class).getResultList();
    }
    
    public static PeopleDetail PeopleDetail.findPeopleDetail(Long id) {
        if (id == null) return null;
        return entityManager().find(PeopleDetail.class, id);
    }
    
    public static List<PeopleDetail> PeopleDetail.findPeopleDetailEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PeopleDetail o", PeopleDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PeopleDetail> PeopleDetail.findPeopleDetailEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PeopleDetail o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PeopleDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PeopleDetail.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PeopleDetail.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PeopleDetail attached = PeopleDetail.findPeopleDetail(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PeopleDetail.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PeopleDetail.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PeopleDetail PeopleDetail.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PeopleDetail merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
