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
import com.sam.projecturl.checkUrl.checkUrlExist;
import com.sam.projecturl.checkUrl.getTitleURLs;
import com.sam.projecturl.model.ShortUrl;
import com.sam.projecturl.model.UserCookieShortUrl;
import com.sam.projecturl.service.ShortUrlService;
import com.sam.projecturl.service.UserCookieShortUrlService;
import com.sam.projecturl.service.UserService;
import com.sam.projecturl.util.Utils;
import com.sam.projecturl.util.VirusUtil;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Vector;
import java.util.regex.Pattern;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
    private UserCookieShortUrlService userCookieShortUrlService;

    @Autowired
    private UserService userService;

    //index 
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws IOException {
        ModelAndView m = new ModelAndView("home/index");
        ModelAndView error = new ModelAndView("redirect:");
        UserCookieShortUrl su = new UserCookieShortUrl();

        boolean ktCookie = true;
        Cookie newCookie = new Cookie("userCookie-Test", "UserShortLink");
        newCookie.setMaxAge(60 * 60);
        response.addCookie(newCookie);
        Cookie[] cookies = null;
        try {
            cookies = request.getCookies();
            //iterate each cookie
            if (cookies.equals(null)) {
                String cookieId = Utils.getSaltString();
                Cookie newCookie123 = new Cookie("userCookie-ShortLink", cookieId);
                newCookie123.setMaxAge(24 * 60 * 60);
                response.addCookie(newCookie123);
                m.addObject("su", su);
                m.addObject("buttonCheck", "Summit");
                return m;
            }

            for (Cookie cookie : cookies) {
                //display only the cookie with the name 'website'
                if (cookie.getName().equals("userCookie-ShortLink")) {

                    if (!cookie.getValue().equals("null")) {
                        List<UserCookieShortUrl> showShortLink = userCookieShortUrlService.findByIdCookie(cookie.getValue());
                        Vector sullList = new Vector();
                        for (UserCookieShortUrl sull : showShortLink) {
                            String title = getTitleURLs.gettitleurls(sull.getLongUrl());

                            sullList.add(title);
                        }
                        Collections.reverse(showShortLink);
                        Collections.reverse(sullList);
                        m.addObject("showSU", showShortLink);
                        m.addObject("showSULL", sullList);
                    }
                    ktCookie = false;
                }
            }

            if (ktCookie) {
                String cookieId = Utils.getSaltString();
                Cookie newCookieKT = new Cookie("userCookie-ShortLink", cookieId);
                newCookieKT.setMaxAge(24 * 60 * 60);
                response.addCookie(newCookieKT);
            }
            m.addObject("su", su);
            m.addObject("buttonCheck", "Summit");
            return m;
        } catch (Exception e) {
            String cookieId = Utils.getSaltString();
            Cookie newCookie123 = new Cookie("userCookie-ShortLink", cookieId);
            newCookie.setMaxAge(24 * 60 * 60);
            response.addCookie(newCookie);
            return error;
        }

    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String index(@ModelAttribute(name = "su") UserCookieShortUrl su, ModelMap modelMal, HttpServletRequest request) {
        String getCookieCurrent = null;
        Cookie[] cookies = request.getCookies();
        //iterate each cookie
        for (Cookie cookie : cookies) {
            //display only the cookie with the name 'website'
            if (cookie.getName().equals("userCookie-ShortLink")) {
                getCookieCurrent = cookie.getValue();

            }
        }
        checkUrlExist checkUrl = new checkUrlExist();
        modelMal.addAttribute("buttonCheck", "Summit");
        modelMal.addAttribute("Error", "");
        if (!checkUrl.isURL(su.getLongUrl()) && su.getLongUrl().equals("Paste a link to shorten it")) {
            modelMal.addAttribute("Error", "Link không tồn tại");
        }

        if (checkUrl.isURLExit(su.getLongUrl())) {
            modelMal.addAttribute("buttonCheck", "COPPY");
        }

        if (!su.getLongUrl().equals("Paste a link to shorten it") && checkUrl.isURL(su.getLongUrl())) {
            String shortURL = Utils.getSaltString();
            List<UserCookieShortUrl> showShortLink = userCookieShortUrlService.findByIdCookie(getCookieCurrent);
            su.setIdCookie(getCookieCurrent);
            su.setShortUrl(shortURL);
            userCookieShortUrlService.save(su);
            VirusUtil virusdetect = new VirusUtil();
            virusdetect.setSu(su);
            virusdetect.start();
            if (showShortLink.size() > 1) {
                userCookieShortUrlService.delete(showShortLink.get(0).getId());
            }

//            if(showShortLink.size()>2){
//               userCookieShortUrlService.findByDeleteUserCookieShortUrl(getCookieCurrent);
//               
//            }
            modelMal.addAttribute("shortLink", "http://localhost:18141/ProjectURL/" + su.getShortUrl());
            modelMal.addAttribute("buttonCheck", "COPPY");
        }

        List<UserCookieShortUrl> showShortLink = userCookieShortUrlService.findByIdCookie(getCookieCurrent);
//        Vector sullList = new Vector();
//        for (UserCookieShortUrl sull : showShortLink) {
//            String title = getTitleURLs.gettitleurls(sull.getLongUrl());
//
//            sullList.add(title);
//        }
        Collections.reverse(showShortLink);

        modelMal.addAttribute("showSU", showShortLink);
//        Collections.reverse(sullList);
//        modelMal.addAttribute("showSULL", sullList);
        return "home/index";
    }

    @RequestMapping(value = "/{source}")
    public String shortURL(@PathVariable(value = "source") final String source) {
        UserCookieShortUrl su = userCookieShortUrlService.findByUserCookieShortUrl(source);
        String longUrl = su.getLongUrl();
        return "redirect:" + longUrl;
    }

    @RequestMapping("fb")
    public String Login(HttpServletRequest request) {
        String access_token = (String) request.getParameter("access_token");
        FacebookClient facebookClient = new DefaultFacebookClient(access_token, Version.VERSION_2_12);
        User user = facebookClient.fetchObject("me", User.class);

        com.sam.projecturl.model.User us = userService.findByUser(user.getId());
        if (us == null) {
            com.sam.projecturl.model.User user1 = new com.sam.projecturl.model.User();
            user1.setIdFace(user.getId());
            user1.setName(user.getName());
            user1.setEmail(user.getEmail());

            userService.save(user1);
            return "redirect:User";
        }
        HttpSession session = request.getSession();
        session.setAttribute("UserSU", user.getId());
        return "redirect:User";

    }

    //User
    @RequestMapping(value = "/User", method = RequestMethod.GET)
    public ModelAndView User(HttpServletRequest request) {
        ModelAndView m = new ModelAndView("User/dashboard_5");
        ShortUrl su = new ShortUrl();
        //Show Du Lieu User co

//        session.getAttribute("UserSU").toString()
        List<ShortUrl> userShowShortLink = shortUrlService.findByidtest("1");
        Vector userSullList = new Vector();
        if (userShowShortLink != null) {
            for (ShortUrl userSull : userShowShortLink) {
                String title = getTitleURLs.gettitleurls(userSull.getLongUrl());
                userSullList.add(title);
            }
            Collections.reverse(userShowShortLink);
            Collections.reverse(userSullList);
            m.addObject("showSU", userShowShortLink);
            m.addObject("showSULL", userSullList);
        }
        m.addObject("suUser", su);
        m.addObject("buttonCheck", "Summit");
        return m;
    }

    @RequestMapping(value = "/User", method = RequestMethod.POST)
    public String User(@ModelAttribute(name = "suUser") ShortUrl su) {
        String shortURL = Utils.getSaltString();
        su.setShortUrl(shortURL);
        shortUrlService.save(su);
        return "User/dashboard_5";
    }

    //Chuyển Trang
    @RequestMapping("/login")
    public String login() {
        return "Login/sign_in";
    }

    @RequestMapping("/dashboard_5")
    public String dashboard_5() {
        return "User/dashboard_5";
    }

    @RequestMapping("/profile")
    public String profile() {
        return "User/profile";
    }

    @RequestMapping("/contacts")
    public String contacts() {
        return "User/contacts";
    }

    @RequestMapping("/mailbox")
    public String mailbox() {
        return "User/mailbox";
    }

    @RequestMapping("/mail_detail")
    public String mail_detail() {
        return "User/mail_detail";
    }

    @RequestMapping("/google_maps")
    public String google_maps() {
        return "User/google_maps";
    }

    @RequestMapping("/datamaps")
    public String datamaps() {
        return "User/datamaps";
    }

    @RequestMapping("/chat_view")
    public String chat_view() {
        return "User/chat_view";
    }

    //Khu Vực Test
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView m = new ModelAndView("home/index");
        ShortUrl su = new ShortUrl();
        m.addObject("su", su);
        return m;
    }

    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public String home(@ModelAttribute(name = "su") ShortUrl su) {
        String shortURL = Utils.getSaltString();
        su.setShortUrl(shortURL);
        shortUrlService.save(su);
        return "home/home";
    }
}
