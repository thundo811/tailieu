/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.controller;

import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Version;
import com.restfb.types.User;
import com.sam.projecturl.model.ShortUrl;
import com.sam.projecturl.service.ShortUrlService;
import com.sam.projecturl.service.UserService;
import com.sam.projecturl.util.Utils;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Quan
 */
@Controller

public class HomeController {

    @Autowired
    private ShortUrlService shortUrlService;
    
@Autowired
    private UserService userService;
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView m = new ModelAndView("home/home");
        ShortUrl su = new ShortUrl();
        m.addObject("su", su);
        return m;
    }

    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public String home(@ModelAttribute(name = "su") ShortUrl su) {
        String shortURL = Utils.getSaltString();
        Pattern REGEX = Pattern.compile("(?i)^(?:(?:https?|ftp)://)(?:\\S+(?::\\S*)?@)?(?:(?!(?:10|127)(?:\\.\\d{1,3}){3})(?!(?:169\\.254|192\\.168)(?:\\.\\d{1,3}){2})(?!172\\.(?:1[6-9]|2\\d|3[0-1])(?:\\.\\d{1,3}){2})(?:[1-9]\\d?|1\\d\\d|2[01]\\d|22[0-3])(?:\\.(?:1?\\d{1,2}|2[0-4]\\d|25[0-5])){2}(?:\\.(?:[1-9]\\d?|1\\d\\d|2[0-4]\\d|25[0-4]))|(?:(?:[a-z\\u00a1-\\uffff0-9]-*)*[a-z\\u00a1-\\uffff0-9]+)(?:\\.(?:[a-z\\u00a1-\\uffff0-9]-*)*[a-z\\u00a1-\\uffff0-9]+)*(?:\\.(?:[a-z\\u00a1-\\uffff]{2,}))\\.?)(?::\\d{2,5})?(?:[/?#]\\S*)?$");
		
        su.setShortUrl(shortURL);
        shortUrlService.save(su);
        return "home/home";
    }
    
    //index 
     @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView m = new ModelAndView("home/index");
        ShortUrl su = new ShortUrl();
        m.addObject("su", su);
        return m;
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String index(@ModelAttribute(name = "su") ShortUrl su) {
        String shortURL = Utils.getSaltString();
        su.setShortUrl(shortURL);
        shortUrlService.save(su);
        return "home/index";
    }
    

    @RequestMapping(value = "/{source}")
    public String shortURL(@PathVariable(value = "source") final String source) {
        ShortUrl su = shortUrlService.findByShortURL(source);
        String longUrl = su.getLongUrl();
        return "redirect:" + longUrl;
    }
@RequestMapping("/login")
    public String login() {
        return "Login/sign_in";
    }
    
    @RequestMapping(value ="/login1", method = RequestMethod.POST)
    public String login1(HttpServletRequest request) {
        String nameCheck = request.getParameter("username");
        String passCheck = request.getParameter("password");
        com.sam.projecturl.model.User userCheck = new com.sam.projecturl.model.User();
        if (userCheck.checkLogin(nameCheck, passCheck)){
        return "home/success";
        }
        return "Login/fail";
    }

    @RequestMapping("fb")
    public String Login(HttpServletRequest request) {
        String access_token = (String) request.getParameter("access_token");
        FacebookClient facebookClient = new DefaultFacebookClient(access_token, Version.VERSION_2_12);
        User user = facebookClient.fetchObject("me", User.class);
        
        
       com.sam.projecturl.model.User us = userService.findByUser(user.getId());
       if (us==null){
       com.sam.projecturl.model.User user1= new com.sam.projecturl.model.User();
        user1.setIdFace(user.getId());
        user1.setName(user.getName());
        user1.setEmail(user.getEmail());

        userService.save(user1);
        return "User/userIndex";
       }
      
        return "home/success";
        
       
    }
}
