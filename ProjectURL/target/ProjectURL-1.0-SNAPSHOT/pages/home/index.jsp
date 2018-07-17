<%-- 
    Document   : index
    Created on : Mar 6, 2018, 2:41:12 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="<c:url value = "/resources/assets/css/bootstrap.min.css"/>" />
        <title>ShortURL</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta content="IE=edge" http-equiv="X-UA-Compatible">
        <meta name="referrer" content="always">
        <meta name="keywords" content="bitly, awesome, save, share, shorten" />
        <meta name="description" content="Get the most out of your social and online marketing efforts. Own, understand and activate your best audience through the power of the link with Bitly Enterprise." />
        <meta name="viewport" content="width=device-width,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


        <link rel="icon" type="image/png" href="<c:url value="/resources/dl6fh5ptkejqa.cloudfront.net/0482a3c938673192a591f2845b9eb275.png"/>" />


        <link href="<c:url value="/resources/d4152f9bdc4b2aa91489dd560a2cd031.css"/>" rel="stylesheet" type="text/css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <style>
            .toggle { width: 260px;float: left; }

        </style>
    
    </head>
    <body class="no-zc one-or-more-links">

        <div class="stage">

            <header id="header" data-template="stage-header">
                <div id="header-inner">

                    <div class="container container-pod container-pod-short">
                        <h1 class="header-logo"><a href="<c:url value="/"/>" rel="nofollow"></a></h1>
                        <nav class="navigation" role="navigation">
                            <ul>
                                <li><a href="pages/enterprise765a.html?utm_content=site-enterprise-topnav&amp;utm_source=organic&amp;utm_medium=website&amp;utm_campaign=null&amp;utm_cta=site-enterprise-topnav">Enterprise</a></li>
                                <li><a href="pages/resources.html">Resources</a></li>
                                <li><a href="blog/index.html">Blog</a></li>
                                <li><a href="pages/about.html">About</a></li>
                            </ul>
                        </nav>
                        <div class="header-button-wrapper">
                            <nav class="navigation" role="navigation">
                                <ul>
                                    <li><a href="<c:url value="/login"/>">Login</a></li>
                                    <li><a href="pages/Login/sign_up5b70.jsp?utm_content=site-free-button&amp;utm_source=organic&amp;utm_medium=website&amp;utm_campaign=null&amp;utm_cta=site-free-button">Sign Up</a></li>
                                </ul>
                            </nav>
                            <a class="enterprise" href="https://bitly.is/EnterpriseButton" target="_blank">Get Enterprise</a>
                        </div>
                        <div class="mobile-sign-in">
                            <a class="signup alt" href="https://bitly.is/EnterpriseButton" target="_blank">Get Enterprise</a>
                            <a id="header-mobile-menu-button" href="#">
                                <i class="icon-menu-open"></i>
                            </a>
                        </div>
                    </div>


                </div>
            </header>


            <div id="container" class="clearfix">


                <div class="container container-pod shorten-container">
                    <h1 class="page-title t-center">HARNESS EVERY CLICK, TAP AND SWIPE.</h1>
                    <div class="join-bitly t-center">Brand, track and optimize every touchpoint with Bitly, the world's leading link management platform. <a href="https://bitly.is/HPLearnMore" class="link-blue">Learn More <i class="blue-arrow-small"></i></a> </div>

                    <div id="form_container" class="t-center mid-container foot-room">
                        <form:form  modelAttribute="su" method="POST" name="shortenUrl" id="unAuthShortenForm" commandName="su">
                            <fieldset class="cf">
                                <form:input id="shorten_url" taborder="1" name="url" type="text" cssClass="shorten-input" placeholder="Paste a link to shorten it" value="" autocomplete="off" autocorrect="off" autocapitalize="off" path="longUrl"/>
                                <input  id="shorten_btn" type="submit" class="button button-primary button-large shorten-button" value="${buttonCheck}" />
                            </fieldset>
                        </form:form>
                        ${Error}
                        <div id="shorten_actions">
                        </div>
                    </div>

                    <!--                    <div class="signup-learn-more t-center">
                                            <a id="top-signup-cta" class="header-login" href="https://bitly.com/a/sign_up?utm_content=site-free-linkbar&amp;utm_source=organic&amp;utm_medium=website&amp;utm_campaign=null&amp;utm_cta=site-free-linkbar">Get Started for Free</a>
                                            <a id="top-learn-more-cta" href="https://bitly.is/HP-Enterprise1" class="learn-more">or Go Beyond the Basics <i class="white-arrow-small"></i></a>
                                        </div>-->
                    <div class="link-container mid-container">
                        <div id="shortened_info">
                            <ul id="most_recent_link" class="anon_history footroom">
                            </ul>
                        </div>

                        <div>
                            <c:set var="kt" value="0" />
                            <c:if test="${not empty showSU}" >

                                <c:forEach items="${showSU}" var="allSu" >
                                    <ul id="anon_history" class="anon_history" style="display: block;">
                                        <li id="1fz1hn4" class="shortened_link" data-user_hash="${allSu.shortUrl}" data-short_link= "http://localhost:18141/ProjectURL/${allSu.shortUrl}">
                                            <div class="unauth-title">
                                                <a class="article-title" href="${allSu.longUrl}">
                                                    <div id="title"> ${showSULL[kt]} </div>
                                                </a>
                                            </div>
                                            <div class="unauth-title-url">
                                                <a class="article-title smaller" href="${allSu.longUrl}">${allSu.longUrl}</a>
                                            </div>
                                            <div class="unauth_capsule clearfix">

                                                <!--                                                <div id="effect" class="ui-widget-content ui-corner-all"> 
                                                                                                    <a  class="short-url" href="http://localhost:18141/ProjectURL/${allSu.shortUrl}">http://localhost:18141/ProjectURL/${allSu.shortUrl}</a>
                                                                                                </div>-->
                                                <input  id="shorten_url1${allSu.shortUrl}"  class="copy-input" value="http://localhost:18141/ProjectURL/${allSu.shortUrl}" tabindex="-1" readonly="hidden">

                                                <div  id="shorten2${allSu.shortUrl}" class="toggle">
                                                    <a  class="short-url" href="http://localhost:18141/ProjectURL/${allSu.shortUrl}">http://localhost:18141/ProjectURL/${allSu.shortUrl}</a>
                                                </div>



                                                <input style="float: left" name="shorten_btn1${allSu.shortUrl}"  id="shorten_btn1${allSu.shortUrl}" type="submit" class="copy button primary" value="Copy" />

                                                <a style="float: right" class="info_page" href="http://localhost:18141/ProjectURL/${allSu.shortUrl}+">
                                                    <i class="default fa fa-bar-chart-o"></i> 5,668
                                                </a>

                                            </div>
                                        </li>

                                        <script id="jsbin-javascript">
                                            // Copy to clipboard example
                                            document.querySelector("#shorten_btn1${allSu.shortUrl}").onclick = function () {
                                                // Select the content
                                                document.querySelector("#shorten_url1${allSu.shortUrl}").select();
                                                // Copy to the clipboard
                                                document.execCommand('copy');
                                            };

                                        </script>
                                        <script>
                                            $(function () {
                                                // run the currently selected effect
                                                function runEffect() {
                                                    // get effect type from
                                                    var selectedEffect = "highlight";

                                                    // Most effect types need no options passed by default
                                                    var options = {};
                                                    // some effects have required parameters
                                                    if (selectedEffect === "scale") {
                                                        options = {percent: 50};
                                                    } else if (selectedEffect === "size") {
                                                        options = {to: {width: 200, height: 30}};
                                                    }

                                                    // Run the effect
                                                    $("#shorten2${allSu.shortUrl}").hide(selectedEffect, options, 1000, callback);
                                                }
                                                ;

                                                // Callback function to bring a hidden box back
                                                function callback() {
                                                    setTimeout(function () {
                                                        $("#shorten2${allSu.shortUrl}").removeAttr("style").hide().fadeIn();
                                                    }, 1000);
                                                }
                                                ;

                                                // Set effect from select menu value
                                                $("[name=shorten_btn1${allSu.shortUrl}]").on("click", function () {
                                                    runEffect();
                                                });
                                            });
                                        </script>
                                        <c:if test="${not empty showSU}" ></c:if>
                                        <c:if test="${kt==0}" >
                                            <div class="signup-promotion hide-on-new-shorten">
                                                <span class="signup-tagline">Want to customize, share, and track your links? </span>
                                                <a href="<c:url value="/login"/>" class="sign-up-link sign-up-post-shorten">Sign Up For Free <i class="orange-arrow-small"></i></a>
                                                <a class="header-login sign-up-post-shorten" href="<c:url value="/login"/>">Sign Up For Free</a>
                                            </div>
                                        </c:if>       
                                        <c:set var="kt" value="${kt+1}" />
                                    </ul>
                                </c:forEach>
                            </c:if>           

                        </div>
                    </div>
                </div>




                <div id="bottom">

                    <form action="#" method="get">
                        <input type="hidden" name="_xsrf" value="8abcf4b4a4b6462d9a36efaa2da157ad"/>
                    </form>

                </div>
            </div>


            <div class="container container-pod container-pod-tall overview">
                <div class="mid-container t-center">
                    <h2 class="flush-top main-header">Unleash The Power of The Link</h2>
                    <p class="main-subheader">
                        The link is the invisible thread that connects every customer interaction to tell a greater story. Drive seamless experiences across every channel and every device with Bitly Enterprise.
                    </p>
                </div>
                <div class="page-shorten-brand-tools-products">
                    <div class="page-shorten-brand-tools-product col-spill">
                        <i class="main-icon main-icon-shorten">
                        </i>
                        <h3 class="short">Brand</h3>
                        <p class="flush-bottom">
                            Consistency is what makes a good brand great. Create custom links that carry your branding across every device and channel.
                        <div>
                            <a href="pages/enterprise.html#brand" class="smooth-scroll">Learn More <i class="orange-arrow-small"></i></a>
                        </div>
                        </p>
                    </div>
                    <div class="page-shorten-brand-tools-product col-spill">
                        <i class="main-icon main-icon-measure"></i>
                        <h3 class="short">Track</h3>
                        <p class="flush-bottom">
                            Track individual link analytics and measure campaign performance across teams and channels, all in one location. All in real-time.
                        <div>
                            <a href="pages/enterprise.html#track" class="smooth-scroll">Learn More <i class="orange-arrow-small"></i></a>
                        </div>
                        </p>
                    </div>
                    <div class="page-shorten-brand-tools-product col-spill">
                        <i class="main-icon main-icon-share"></i>
                        <h3 class="short">Optimize</h3>
                        <p class="flush-bottom">
                            Whether you’re at customer number one or 1,000,001, the link gives each user the right experience at the right time.
                        <div>
                            <a href="pages/enterprise.html#optimize" class="smooth-scroll">Learn More <i class="orange-arrow-small"></i></a>
                        </div>
                        </p>
                    </div>
                </div>
            </div>
            <div class="container t-center video-player">
                <div class="frame">
                    <div class="play"></div>
                </div>
            </div>

            <div class="button-toolbar main-button-centered">
                <a href="https://bitly.is/HP-Enterprise2" class="button button-primary button-large tour-cta">Learn More</a>
            </div>
            <div id="page-home-link-shortener" class="stage-pod stage-pod-dark">
                <div class="container container-pod">
                    <div id="page-home-link-shortener-counter"></div>
                    <div class="row">
                        <h2 class="centered counter-header">LINKS POWERED BY BITLY</h2>
                        <div class="button-toolbar button-toolbar-counter">
                            <a href="https://bitly.is/HP-Free3" class="bitly-form button button-primary button-large counter-button">
                                Create your free account
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="hidden-on-desktop">
                <div class="brand-subhead">
                    <p>
                        Trusted by the smartest brands
                    </p>
                </div>
                <div class="mobile-brand-bar">
                    <div class="brand-bar-logo american-eagle"></div>
                    <div class="brand-bar-logo keurig"></div>
                    <div class="brand-bar-logo progressive"></div>
                    <div class="brand-bar-logo buzzFeed"></div>
                    <div class="brand-bar-logo ebay"></div>
                </div>
            </div>
            <div id="page-about-values" class="hidden-on-mobile">
                <div class="page-about-values-inner">
                    <div class="brand-subhead">
                        <p>
                            Trusted by the smartest brands
                        </p>
                    </div>
                    <div class="page-about-values-navigation">
                        <a href="#" id="page-about-values-navigation-previous" class="page-about-values-navigation page-about-values-navigation-previous">
                            <i class="icon-large icon-color icon-caret-left">
                            </i>
                        </a>
                        <a href="#" id="page-about-values-navigation-next" class="page-about-values-navigation page-about-values-navigation-next">
                            <i class="icon-large icon-color icon-caret-right">
                            </i>
                        </a>
                    </div>
                    <div class="value-container">
                        <div class="page-about-value">
                            <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                <div class="brand-bar-row">
                                    <div class="brand-bar-logo american-eagle"></div>
                                    <div class="brand-bar-logo keurig"></div>
                                    <div class="brand-bar-logo progressive"></div>
                                    <div class="brand-bar-logo buzzFeed"></div>
                                    <div class="brand-bar-logo ebay"></div>
                                </div>
                            </div>
                        </div>
                        <div class="page-about-value">
                            <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                <div class="brand-bar-row">
                                    <div class="brand-bar-logo ge"></div>
                                    <div class="brand-bar-logo ticketfly"></div>
                                    <div class="brand-bar-logo ben-jerrys"></div>
                                    <div class="brand-bar-logo chegg"></div>
                                    <div class="brand-bar-logo mashable"></div>
                                </div>
                            </div>
                        </div>
                        <div class="page-about-value">
                            <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                <div class="brand-bar-row">
                                    <div class="brand-bar-logo birchbox"></div>
                                    <div class="brand-bar-logo pbs"></div>
                                    <div class="brand-bar-logo kaiser-permanente"></div>
                                    <div class="brand-bar-logo montage-hotels-resorts"></div>
                                    <div class="brand-bar-logo entrepreneur-media"></div>
                                </div>
                            </div>
                        </div>
                        <div class="page-about-value">
                            <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                <div class="brand-bar-row">
                                    <div class="brand-bar-logo zulily"></div>
                                    <div class="brand-bar-logo kind-snacks"></div>
                                    <div class="brand-bar-logo pepsi"></div>
                                    <div class="brand-bar-logo dunkin-donuts"></div>
                                    <div class="brand-bar-logo mens-wearhouse"></div>
                                </div>
                            </div>
                        </div>
                        <div class="page-about-value">
                            <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                <div class="brand-bar-row">
                                    <div class="brand-bar-logo wsj"></div>
                                    <div class="brand-bar-logo samsung"></div>
                                    <div class="brand-bar-logo couchsurfing"></div>
                                    <div class="brand-bar-logo american-medical-association"></div>
                                    <div class="brand-bar-logo monster-com"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container clearfix">
                <div id="page-home-trust" class="">
                    <div class="container container-pod">
                        <div class="page-home-trust-quotes vertically-balanced" id="page-home-trust-quotes">
                            <div class="page-home-trust-quotes-spacer">
                                <div class="vertically-balanced-column">
                                </div>
                            </div>
                            <div class="page-home-trust-quote">
                                <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                    <div class="row">
                                        <div class="col-12 col-small-8 col-small-offset-2 col-medium-8 col-medium-offset-2 col-large-6 col-large-offset-3">
                                            <p class="page-home-trust-quote-body lead">
                                                "Bitly provides me with the insights I need for all my social channels to build robust monthly reports and optimize my social marketing."
                                            </p>
                                            <span class="page-home-trust-quote-image">
                                                <div class="trust-image trust-image-spotify"></div>
                                            </span>
                                            <h5 class="page-home-trust-quote-author">
                                                Joshua Karpf
                                            </h5>
                                            <span class="page-home-trust-quote-source">
                                                Global Director, Social Marketing, Spotify
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="page-home-trust-quote">
                                <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                    <div class="row">
                                        <div class="col-12 col-small-8 col-small-offset-2 col-medium-8 col-medium-offset-2 col-large-6 col-large-offset-3">
                                            <p class="page-home-trust-quote-body lead">
                                                "Bitly provides services we couldn't find anywhere else - from customized branded links to stats that let us know in real time what's working and what's not. Without question, it's one of our most valuable social media tools."
                                            </p>
                                            <span class="page-home-trust-quote-image">
                                                <div class="trust-image trust-image-urban"></div>
                                            </span>
                                            <h5 class="page-home-trust-quote-author">
                                                Nicole Levins
                                            </h5>
                                            <span class="page-home-trust-quote-source">
                                                Content and Social Media Strategist, Urban Institute
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="page-home-trust-quote">
                                <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                    <div class="row">
                                        <div class="col-12 col-small-8 col-small-offset-2 col-medium-8 col-medium-offset-2 col-large-6 col-large-offset-3">
                                            <p class="page-home-trust-quote-body lead">
                                                "Bitly helps us centralize article-level analytics for all the content on our site, which gives us a clearer picture of where it's performing well and why. The ability to integrate our Bitly API key with third-party platforms such as Buffer, TweetDeck, our CMS and more is a valuable tool."
                                            </p>
                                            <span class="page-home-trust-quote-image">
                                                <div class="trust-image trust-image-nydn"></div>
                                            </span>
                                            <h5 class="page-home-trust-quote-author">
                                                Brad Gerick
                                            </h5>
                                            <span class="page-home-trust-quote-source">
                                                Director of Social Media, New York Daily News
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="page-home-trust-quote">
                                <div class="vertically-balanced-column vertically-balanced-column-center-vertical">
                                    <div class="row">
                                        <div class="col-12 col-small-8 col-small-offset-2 col-medium-8 col-medium-offset-2 col-large-6 col-large-offset-3">
                                            <p class="page-home-trust-quote-body lead">
                                                "Branding is extremely important to us. Having our own Branded Short Domain through Bitly Enterprise helps us keep our brand at the forefront of all our social sharing efforts."
                                            </p>
                                            <span class="page-home-trust-quote-image">
                                                <div class="trust-image trust-image-mens"></div>
                                            </span>
                                            <h5 class="page-home-trust-quote-author">
                                                Bita Ehsanipour
                                            </h5>
                                            <span class="page-home-trust-quote-source">
                                                Social Media Manager, Men's Wearhouse
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="stage-pod stage-pod-light">
                <div class="container">
                    <div id="recommended-resources" class="clearfix">
                        <h3 class="resource-header">Recommended Resources</h3>
                        <div class="single-resource">
                            <div class="resource-image-box">
                                <a href="pages/resources/webinars/bitly-enterprise-demo.html"><img src="s/beta/graphics/marketing/resources/rethink-the-link.png" class="single-resource-image"></a>
                            </div>
                            <p class="single-resource-category"><a href="pages/resources/webinars.html">WEBINAR</a></p>
                            <p class="single-resource-title"><a href="pages/resources/webinars/bitly-enterprise-demo.html">[DEMO] RETHINKING THE LINK WITH BITLY ENTERPRISE</a></p>
                        </div>
                        <div class="single-resource">
                            <div class="resource-image-box">
                                <a href="pages/resources/ebooks/influencermarketing.html"><img src="s/beta/graphics/marketing/resources/influencer.png" class="single-resource-image"></a>
                            </div>
                            <p class="single-resource-category"><a href="pages/resources/ebooks.html">EBOOK</a></p>
                            <p class="single-resource-title"><a href="pages/resources/ebooks/influencermarketing.html">HOW TO BUILD AN INFLUENCER MARKETING PROGRAM</a></p>
                        </div>
                        <div class="single-resource">
                            <div class="resource-image-box">
                                <a href="pages/resources/ebooks/37-ways-brands-use-bitly.html"><img src="s/beta/graphics/marketing/resources/ways-brands-use-bitly.jpg" class="single-resource-image"></a>
                            </div>
                            <p class="single-resource-category"><a href="pages/resources/ebooks.html">EBOOK</a></p>
                            <p class="single-resource-title"><a href="pages/resources/ebooks/37-ways-brands-use-bitly.html">37 WAYS BRANDS USE BITLY</a></p>
                        </div>
                    </div>
                </div>
            </div>

            <footer id="footer" role="contentinfo" data-template="stage-footer">
                <section class="stage-pod">
                    <div class="container container-pod t-center">
                        <div class="footer-links">
                            <ul id="menu-footer-menu" class="nav footer-nav clearfix">
                                <li><a href="http://blog.bitly.com/">Blog</a></li>
                                <li><a href="http://support.bitly.com/">Support</a></li>
                                <li><a href="pages/contact.html">Contact</a></li>
                                <li><a href="http://dev.bitly.com/">Developers</a></li>
                                <li><a href="pages/privacy.html">Privacy Policy</a></li>
                                <li><a href="pages/terms-of-service.html">Terms Of Service</a></li>
                                <li><a href="pages/partners.html">Partners</a></li>
                                <li><a href="pages/careers.html">Careers</a></li>
                            </ul>
                        </div>
                        <div class="footer-attribution">
                            <a href="index.html" class="footer-logo"></a>
                        </div>
                        <ul class="footer-social-links">
                            <li class="footer-social-link footer-social-link-facebook">
                                <a href="http://www.facebook.com/bitly" target="_blank"></a>
                            </li>
                            <li class="footer-social-link footer-social-link-twitter">
                                <a href="http://twitter.com/bitly" target="_blank"></a>
                            </li>
                            <li class="footer-social-link footer-social-link-linkedin">
                                <a href="http://www.linkedin.com/company/552285" target="_blank"></a>
                            </li>
                            <li class="footer-social-link footer-social-link-instagram">
                                <a href="http://instagram.com/bitly" target="_blank"></a>
                            </li>
                        </ul>
                        <div class="footer-attribution">
                            <p class="small source-org copyright flush-bottom">
                                © 2018 Bitly™&nbsp;&nbsp;Handmade in NYC
                            </p>
                        </div>
                    </div>
                </section>
            </footer>

            <!-- Promo -->

            <div id="promo-container" class="hidden-on-mobile">
                <!-- href will be the article link -->
                <div id="promo-speech-bubble">
                    <div id="promo-close" class="hide-promo">
                        <div id="close-icon"></div>
                    </div>
                    <div id="padded-container">
                        <h1 id="promo-header">RETHINK THE LINK</h1>
                        <p id="promo-description">Learn how to use the link to build a robust and seamless cross-channel customer experience. <a href="https://bitly.is/RethinkPopUp" id="promo-bitlink">Download <i class="orange-arrow-small"></i></a></p>
                    </div>
                    <div id="bubble-point"></div>
                </div>
                <div id="promo-avatar">
                </div>
            </div>

        </div>

        <div id="stage-sidebar">

            <div id="stage-sidebar-scrollable" class="container-scrollable ps-container">
                <div class="container container-pod container-pod-short">
                    <ul id="menu-mobile-menu" class="nav top-nav clearfix">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="pages/enterprise765a.html?utm_content=site-enterprise-topnav&amp;utm_source=organic&amp;utm_medium=website&amp;utm_campaign=null&amp;utm_cta=site-enterprise-topnav">Enterprise</a></li>
                        <li><a href="pages/resources.html">Resources</a></li>
                        <li><a href="pages/about.html">Company</a></li>
                        <li><a href="pages/contact.html">Contact</a></li>
                        <li><a href="pages/careers.html">Careers</a></li>
                        <li><a href="pages/press.html">Press Room</a></li>
                        <li><a href="pages/partners.html">Partners</a></li>
                        <li><a href="a/sign_in.html">Login</a></li>
                        <li><a href="a/sign_up5b70.html?utm_content=site-free-button&amp;utm_source=organic&amp;utm_medium=website&amp;utm_campaign=null&amp;utm_cta=site-free-button">Sign Up</a></li>
                    </ul>
                </div>
            </div>


        </div>

<!--        <script type="text/javascript" src="<c:url value="/resources/ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"/>"></script>
        <script type="text/javascript">
            if (!window.console)
                window.console = {};
            if (!window.console.log)
                window.console.log = function () {};
            (function () {
                var _x = document.cookie.match("\\b\_xsrf=([^;]*)\\b"),
                        _x = (_x ? _x[1] : undefined);
                $.ajaxSetup({
                    cache: false,
                    traditional: true,
                    timeout: 12000,
                    beforeSend: function (XMLHttpRequest) {
                        XMLHttpRequest.setRequestHeader("X-XSRFToken", _x);
                    }
                });
            })();
            window.fastSearch = {};
        </script>-->
        <script src="<c:url value="/resources/4b3cc403e4e49993436bfa9734379ad8.js"/>" type="text/javascript"></script>
        <script>
                                            $('#header-mobile-menu-button').click(function () {
                                                $('#stage-sidebar').toggleClass('open');
                                                $('.stage').toggleClass('open');
                                            })
        </script>
        <script type="text/javascript">
                    (function () {
                        BITLY.tracking.statsd.setStatPrefix("page.signed_out_shorten", true);
                        new App.Lib.PlaceholderShim("#shorten_url");
                        BITLY.unauth_shorten.init("localhost:41746/ProjectURL/", {
                            'target_form': "#unAuthShortenForm",
                            'short_box': "#shorten_url",
                            'history_container': "#anon_history",
                            'history_delay': 3000
                        });
                        $("#shorten_url").focus();
                        PromoModule.init();
                        $('#page-home-link-shortener-counter').bitlyCount();
                        $("#page-home-trust-quotes").carousel({
                            speed: 8000,
                            class_active: 'active',
                            class_inactive: 'inactive',
                            slide_animate_callback: function () {},
                            navigation_option_previous: null,
                            navigation_option_next: null,
                            pagination: false,
                            pagination_navigation: false,
                            child_selector: '.page-home-trust-quote'
                        });
                        // brand-bar
                        $("#page-about-values").carousel({
                            speed: 10000,
                            class_active: 'active',
                            class_inactive: 'inactive',
                            slide_animate_callback: function () {},
                            navigation_option_previous: $('#page-about-values-navigation-previous'),
                            navigation_option_next: $('#page-about-values-navigation-next'),
                            pagination: false,
                            pagination_navigation: false,
                            child_selector: '.page-about-value'
                        });
                        var wrap = $("#header-inner");
                        var header = $("#header");
                        var $window = $(window);
                        $window.scroll(function (e) {
                            if ($window.scrollTop() > 400) {
                                wrap.addClass("fixed-header bounceInDown");
                                header.addClass("fixed-high-index");
                            } else {
                                wrap.removeClass("fixed-header bounceInDown");
                                header.removeClass("fixed-high-index");
                            }
                        });
                        //Add ga events tracking
                        $("#promo-bitlink").bind('click', function () {
                            window.ga('send', 'event', 'link-click', 'notification-link-click', 'Notification Click');
                        });
                        $("#top-signup-cta").bind('click', function () {
                            window.ga('send', 'event', 'button-click', 'hp-sign-up-free', 'HP Sign Up for Free');
                        });
                        $("#top-learn-more-cta").bind('click', function () {
                            window.ga('send', 'event', 'link-click', 'hp-learn-more-top', 'HP Top CTA Learn More');
                        });
                        $(".tour-cta").bind('click', function () {
                            window.ga('send', 'event', 'button-click', 'hp-learn-more-mid', 'HP Mid CTA Learn More');
                        });
                        $(".counter-button").bind('click', function () {
                            window.ga('send', 'event', 'button-click', 'hp-mid-cta-free', 'HP Mid CTA Free');
                        });
                    })();
        </script>

        <script type="text/javascript">
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '<c:url value="/resources/www.google-analytics.com/analytics.js"/>', 'ga');
            (function (w, d) {

                var gaId = 'UA-25224921-3';


                var accountType = 'user';


                w.ga('create', gaId, 'auto');


                w.ga('set', 'dimension2', accountType);

                w.ga('send', 'pageview');

            })(window, document);
        </script>



        <noscript><img height="1" width="1" style="display:none"
                       src="https://www.facebook.com/tr?id=863117047105619&amp;ev=PageView&amp;noscript=1"
                       /></noscript>

        <script>
            document.getElementById("shorten_url").addEventListener("paste", myFunction);
            function myFunction() {
                myVar = setTimeout(function () {
                    document.getElementById("unAuthShortenForm").submit();
                }, 0);
            }
        </script>


        <script id="jsbin-javascript">
            // Copy to clipboard example
            document.querySelector("#shorten_btn").onclick = function () {
                // Select the content
                document.querySelector("#shorten_url").select();
                // Copy to the clipboard
                document.execCommand('copy');
            };

        </script>


        <script src="<c:url value="/resources/oct.js"/>" type="text/javascript"></script>
      
      
        <noscript>
        <img height="1" width="1" style="display:none;" alt="" src="https://analytics.twitter.com/i/adsct?txn_id=l6rvc&amp;p_id=Twitter&amp;tw_sale_amount=0&amp;tw_order_quantity=0" />
        <img height="1" width="1" style="display:none;" alt="" src="http://t.co/i/adsct?txn_id=l6rvc&amp;p_id=Twitter&amp;tw_sale_amount=0&amp;tw_order_quantity=0" />
        </noscript>


    </body>
</html>
