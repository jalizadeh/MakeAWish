package com.makeawish.services;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.makeawish.models.Users;

/**
 * Session Bean implementation class UserService
 */
@Stateless
@LocalBean
public class UserService {

    /**
     * Default constructor. 
     */
    public UserService() {
        // TODO Auto-generated constructor stub
    }
    
    
    @PersistenceContext(name="mawdb")
    private EntityManager em;
    
        
    /**
     * Persist the user to DB
     * 
     * @param user
     */
    public void addUser(Users user) {
    	em.persist(user);
    }
    
    
    public List<Users> getAllUsers() {
    	TypedQuery<Users> query = em.createQuery("SELECT u FROM Users u", Users.class);
    	List<Users> allUsers = query.getResultList();
    	return allUsers;
    }
    
}
