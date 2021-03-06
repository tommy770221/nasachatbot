// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.Attachment;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Attachment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Attachment.entityManager;
    
    public static final List<String> Attachment.fieldNames4OrderClauseFilter = java.util.Arrays.asList("type", "payload", "name");
    
    public static final EntityManager Attachment.entityManager() {
        EntityManager em = new Attachment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Attachment.countAttachments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Attachment o", Long.class).getSingleResult();
    }
    
    public static List<Attachment> Attachment.findAllAttachments() {
        return entityManager().createQuery("SELECT o FROM Attachment o", Attachment.class).getResultList();
    }
    
    public static List<Attachment> Attachment.findAllAttachments(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Attachment o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Attachment.class).getResultList();
    }
    
    public static Attachment Attachment.findAttachment(Long id) {
        if (id == null) return null;
        return entityManager().find(Attachment.class, id);
    }
    
    public static List<Attachment> Attachment.findAttachmentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Attachment o", Attachment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Attachment> Attachment.findAttachmentEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Attachment o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Attachment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Attachment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Attachment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Attachment attached = Attachment.findAttachment(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Attachment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Attachment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Attachment Attachment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Attachment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
