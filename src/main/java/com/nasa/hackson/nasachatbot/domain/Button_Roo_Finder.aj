// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nasa.hackson.nasachatbot.domain;

import com.nasa.hackson.nasachatbot.domain.Button;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Button_Roo_Finder {
    
    public static Long Button.countFindButtonsByTitleEquals(String title) {
        if (title == null || title.length() == 0) throw new IllegalArgumentException("The title argument is required");
        EntityManager em = Button.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Button AS o WHERE o.title = :title", Long.class);
        q.setParameter("title", title);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Button> Button.findButtonsByTitleEquals(String title) {
        if (title == null || title.length() == 0) throw new IllegalArgumentException("The title argument is required");
        EntityManager em = Button.entityManager();
        TypedQuery<Button> q = em.createQuery("SELECT o FROM Button AS o WHERE o.title = :title", Button.class);
        q.setParameter("title", title);
        return q;
    }
    
    public static TypedQuery<Button> Button.findButtonsByTitleEquals(String title, String sortFieldName, String sortOrder) {
        if (title == null || title.length() == 0) throw new IllegalArgumentException("The title argument is required");
        EntityManager em = Button.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Button AS o WHERE o.title = :title");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Button> q = em.createQuery(queryBuilder.toString(), Button.class);
        q.setParameter("title", title);
        return q;
    }
    
}
