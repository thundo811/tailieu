/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.service;


import com.sam.projecturl.model.User;
import com.sam.projecturl.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author TinNV0604
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void save(User user) {
        userRepository.save(user);
    }
    
    
     @Override
    public User findByUser(String idFace) {
        return userRepository.findByUser(idFace);
    }

}
