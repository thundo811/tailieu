/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Quan
 */
@Entity
@NamedQuery(name = "User.findByUser",
        query = "select u from User u where u.idFace = ?1")

public class User implements Serializable {

    private Long id;
    private String name;
    private String password;
    private String email;
    private String phone;
    private String idFace;

    public String getIdFace() {
        return idFace;
    }

    public void setIdFace(String idFace) {
        this.idFace = idFace;
    }
    private List<ShortUrl> shortUrl;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @OneToMany(mappedBy = "user")
    public List<ShortUrl> getShortUrl() {
        return shortUrl;
    }

    public void setShortUrl(List<ShortUrl> shortUrl) {
        this.shortUrl = shortUrl;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public boolean checkLogin(String nameCheck,String passCheck ){      
       
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpaexample");
    EntityManager em = emf.createEntityManager();
    TypedQuery<Long> query = em.createQuery("SELECT COUNT(*) FROM Clients c WHERE c.name = :id AND c.password = :pass", Long.class);
    query.setParameter("id", nameCheck);
    query.setParameter("pass", passCheck); 
  if(query.getSingleResult() > 0){
    return true;
    }
  return false;
    }
    
}
