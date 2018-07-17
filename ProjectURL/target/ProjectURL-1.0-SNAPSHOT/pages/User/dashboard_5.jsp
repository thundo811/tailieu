<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>


    <!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_5.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Oct 2017 15:24:38 GMT -->
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>INSPINIA | Dashboard v.5</title>

        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/font-awesome/css/font-awesome.css"/>" rel="stylesheet">

        <link href="<c:url value="/resources/css/animate.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/d4152f9bdc4b2aa91489dd560a2cd031.css"/>" rel="stylesheet" type="text/css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
    </head>

    <body>
        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element"> <span>
                                    <img alt="image" class="img-circle" src="<c:url value="/resources/img/profile_small.jpg"/>" />
                                </span>
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                                        </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                                <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                    <li><a href="<c:url value="/profile"/>">Profile</a></li>
                                    <li><a href="<c:url value="/contacts"/>">Contacts</a></li>
                                    <li><a href="<c:url value="/mailbox"/>">Mailbox</a></li>
                                    <li class="divider"></li>
                                    <li><a href="login.jsp">Logout</a></li>
                                </ul>
                            </div>
                            <div class="logo-element">
                                IN+
                            </div>
                        </li>
                        <li>
                            <a href="<c:url value="/dashboard_5"/>"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span></a>

                        </li>
                        <li>
                            <a href="<c:url value="/contacts"/>"><i class="fa fa-diamond"></i> <span class="nav-label">Contacts</span></a>

                        </li>
                        <li>
                            <a href="<c:url value="/mailbox"/>"><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox </span><span class="label label-warning pull-right">16/24</span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="<c:url value="/mailbox"/>">Inbox</a></li>
                                <li><a href="<c:url value="/mail_detail"/>">Email view</a></li>

                            </ul>
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-globe"></i> <span class="nav-label">Miscellaneous</span><span class="label label-info pull-right">NEW</span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="<c:url value="/google_maps"/>">Google maps</a></li>
                                <li><a href="<c:url value="/datamaps"/>">Datamaps</a></li>
                                <li><a href="<c:url value="/chat_view"/>">Chat view</a></li>
                            </ul>
                        </li>


                    </ul>

                </div>
            </nav>

            <div id="page-wrapper" class="gray-bg">
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                            <form role="search" class="navbar-form-custom" action="http://webapplayers.com/inspinia_admin-v2.7.1/search_results.html">
                                <div class="form-group">
                                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                                </div>
                            </form>
                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <span class="m-r-sm text-muted welcome-message">Welcome to INSPINIA+ Admin Theme.</span>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                                </a>
                                <ul class="dropdown-menu dropdown-messages">
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/a7.jpg">
                                            </a>
                                            <div>
                                                <small class="pull-right">46h ago</small>
                                                <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                                <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/a4.jpg">
                                            </a>
                                            <div>
                                                <small class="pull-right text-navy">5h ago</small>
                                                <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                                <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="profile.html" class="pull-left">
                                                <img alt="image" class="img-circle" src="img/profile.jpg">
                                            </a>
                                            <div>
                                                <small class="pull-right">23h ago</small>
                                                <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                                <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="text-center link-block">
                                            <a href="mailbox.html">
                                                <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                                </a>
                                <ul class="dropdown-menu dropdown-alerts">
                                    <li>
                                        <a href="mailbox.html">
                                            <div>
                                                <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                                <span class="pull-right text-muted small">4 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="profile.html">
                                            <div>
                                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                                <span class="pull-right text-muted small">12 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="grid_options.html">
                                            <div>
                                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                                <span class="pull-right text-muted small">4 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="text-center link-block">
                                            <a href="notifications.html">
                                                <strong>See All Alerts</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>


                            <li>
                                <a href="login.html">
                                    <i class="fa fa-sign-out"></i> Log out
                                </a>
                            </li>
                            <li>
                                <a class="right-sidebar-toggle">
                                    <i class="fa fa-tasks"></i>
                                </a>
                            </li>
                        </ul>

                    </nav>
                </div>
                <div class="wrapper wrapper-content">





                    <div id="form_container" style="border-radius:10px;   border-style: solid;
                         border-color: coral;" class="t-center mid-container foot-room">
                        <form:form  modelAttribute="suUser" method="POST" name="shortenUrl" id="unAuthShortenForm" >
                            <fieldset  class="cf">
                                <form:input  id="shorten_url" taborder="1" name="url" type="text" cssClass="shorten-input" placeholder="Paste a link to shorten it" value="${shortLink}" autocomplete="off" autocorrect="off" autocapitalize="off" path="longUrl"/>
                                <input  id="shorten_btn" type="submit" class="button button-primary button-large shorten-button" value="${buttonCheck}" />
                            </fieldset>
                        </form:form>

                        <div id="shorten_actions">
                        </div>
                    </div>

                 <div class="link-container mid-container">
                        <div id="shortened_info">
                            <ul id="most_recent_link" class="anon_history footroom">
                            </ul>
                        </div>

                     <div >
                            <c:set var="kt" value="0" />
                            <c:if test="${not empty showSU}" >

                                <c:forEach items="${showSU}" var="allSu" >
                                    <ul  >
                                        <li id="1fz1hn4"  data-user_hash="${allSu.shortUrl}" data-short_link= "http://localhost:18141/ProjectURL/${allSu.shortUrl}">
                                            <div >
                                                <a style="height: 50px" class="article-title" href="${allSu.longUrl}">
                                                    <div id="title"> ${showSULL[kt]} </div>
                                                    
                                                </a>
                                           
                                          
                                             
                                           
                                          


 </div>
                                            
                                          
                                        </li>

                                       
                                        <c:if test="${not empty showSU}" ></c:if>
                                       
                                    </ul>
                                </c:forEach>
                            </c:if>           

                        </div>
                    </div>
                </div>
                <div class="footer">
                    <div class="pull-right">
                        10GB of <strong>250GB</strong> Free.
                    </div>
                    <div>
                        <strong>Copyright</strong> Example Company &copy; 2014-2017
                    </div>
                </div>
            </div>
            <div id="right-sidebar">
                <div class="sidebar-container">

                    <ul class="nav nav-tabs navs-3">

                        <li class="active"><a data-toggle="tab" href="#tab-1">
                                Notes
                            </a></li>
                        <li><a data-toggle="tab" href="#tab-2">
                                Projects
                            </a></li>
                        <li class=""><a data-toggle="tab" href="#tab-3">
                                <i class="fa fa-gear"></i>
                            </a></li>
                    </ul>

                    <div class="tab-content">


                        <div id="tab-1" class="tab-pane active">

                            <div class="sidebar-title">
                                <h3> <i class="fa fa-comments-o"></i> Latest Notes</h3>
                                <small><i class="fa fa-tim"></i> You have 10 new message.</small>
                            </div>

                            <div>

                                <div class="sidebar-message">
                                    <a href="#">
                                        <div class="pull-left text-center">
                                            <img alt="image" class="img-circle message-avatar" src="img/a1.jpg">

                                            <div class="m-t-xs">
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-warning"></i>
                                            </div>
                                        </div>
                                        <div class="media-body">

                                            There are many variations of passages of Lorem Ipsum available.
                                            <br>
                                            <small class="text-muted">Today 4:21 pm</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="sidebar-message">
                                    <a href="#">
                                        <div class="pull-left text-center">
                                            <img alt="image" class="img-circle message-avatar" src="img/a2.jpg">
                                        </div>
                                        <div class="media-body">
                                            The point of using Lorem Ipsum is that it has a more-or-less normal.
                                            <br>
                                            <small class="text-muted">Yesterday 2:45 pm</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="sidebar-message">
                                    <a href="#">
                                        <div class="pull-left text-center">
                                            <img alt="image" class="img-circle message-avatar" src="img/a3.jpg">

                                            <div class="m-t-xs">
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-warning"></i>
                                            </div>
                                        </div>
                                        <div class="media-body">
                                            Mevolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                            <br>
                                            <small class="text-muted">Yesterday 1:10 pm</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="sidebar-message">
                                    <a href="#">
                                        <div class="pull-left text-center">
                                            <img alt="image" class="img-circle message-avatar" src="img/a4.jpg">
                                        </div>

                                        <div class="media-body">
                                            Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the
                                            <br>
                                            <small class="text-muted">Monday 8:37 pm</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="sidebar-message">
                                    <a href="#">
                                        <div class="pull-left text-center">
                                            <img alt="image" class="img-circle message-avatar" src="img/a8.jpg">
                                        </div>
                                        <div class="media-body">

                                            All the Lorem Ipsum generators on the Internet tend to repeat.
                                            <br>
                                            <small class="text-muted">Today 4:21 pm</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="sidebar-message">
                                    <a href="#">
                                        <div class="pull-left text-center">
                                            <img alt="image" class="img-circle message-avatar" src="img/a7.jpg">
                                        </div>
                                        <div class="media-body">
                                            Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                            <br>
                                            <small class="text-muted">Yesterday 2:45 pm</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="sidebar-message">
                                    <a href="#">
                                        <div class="pull-left text-center">
                                            <img alt="image" class="img-circle message-avatar" src="img/a3.jpg">

                                            <div class="m-t-xs">
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-warning"></i>
                                                <i class="fa fa-star text-warning"></i>
                                            </div>
                                        </div>
                                        <div class="media-body">
                                            The standard chunk of Lorem Ipsum used since the 1500s is reproduced below.
                                            <br>
                                            <small class="text-muted">Yesterday 1:10 pm</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="sidebar-message">
                                    <a href="#">
                                        <div class="pull-left text-center">
                                            <img alt="image" class="img-circle message-avatar" src="img/a4.jpg">
                                        </div>
                                        <div class="media-body">
                                            Uncover many web sites still in their infancy. Various versions have.
                                            <br>
                                            <small class="text-muted">Monday 8:37 pm</small>
                                        </div>
                                    </a>
                                </div>
                            </div>

                        </div>

                        <div id="tab-2" class="tab-pane">

                            <div class="sidebar-title">
                                <h3> <i class="fa fa-cube"></i> Latest projects</h3>
                                <small><i class="fa fa-tim"></i> You have 14 projects. 10 not completed.</small>
                            </div>

                            <ul class="sidebar-list">
                                <li>
                                    <a href="#">
                                        <div class="small pull-right m-t-xs">9 hours ago</div>
                                        <h4>Business valuation</h4>
                                        It is a long established fact that a reader will be distracted.

                                        <div class="small">Completion with: 22%</div>
                                        <div class="progress progress-mini">
                                            <div style="width: 22%;" class="progress-bar progress-bar-warning"></div>
                                        </div>
                                        <div class="small text-muted m-t-xs">Project end: 4:00 pm - 12.06.2014</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="small pull-right m-t-xs">9 hours ago</div>
                                        <h4>Contract with Company </h4>
                                        Many desktop publishing packages and web page editors.

                                        <div class="small">Completion with: 48%</div>
                                        <div class="progress progress-mini">
                                            <div style="width: 48%;" class="progress-bar"></div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="small pull-right m-t-xs">9 hours ago</div>
                                        <h4>Meeting</h4>
                                        By the readable content of a page when looking at its layout.

                                        <div class="small">Completion with: 14%</div>
                                        <div class="progress progress-mini">
                                            <div style="width: 14%;" class="progress-bar progress-bar-info"></div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-primary pull-right">NEW</span>
                                        <h4>The generated</h4>
                                        <!--<div class="small pull-right m-t-xs">9 hours ago</div>-->
                                        There are many variations of passages of Lorem Ipsum available.
                                        <div class="small">Completion with: 22%</div>
                                        <div class="small text-muted m-t-xs">Project end: 4:00 pm - 12.06.2014</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="small pull-right m-t-xs">9 hours ago</div>
                                        <h4>Business valuation</h4>
                                        It is a long established fact that a reader will be distracted.

                                        <div class="small">Completion with: 22%</div>
                                        <div class="progress progress-mini">
                                            <div style="width: 22%;" class="progress-bar progress-bar-warning"></div>
                                        </div>
                                        <div class="small text-muted m-t-xs">Project end: 4:00 pm - 12.06.2014</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="small pull-right m-t-xs">9 hours ago</div>
                                        <h4>Contract with Company </h4>
                                        Many desktop publishing packages and web page editors.

                                        <div class="small">Completion with: 48%</div>
                                        <div class="progress progress-mini">
                                            <div style="width: 48%;" class="progress-bar"></div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="small pull-right m-t-xs">9 hours ago</div>
                                        <h4>Meeting</h4>
                                        By the readable content of a page when looking at its layout.

                                        <div class="small">Completion with: 14%</div>
                                        <div class="progress progress-mini">
                                            <div style="width: 14%;" class="progress-bar progress-bar-info"></div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="label label-primary pull-right">NEW</span>
                                        <h4>The generated</h4>
                                        <!--<div class="small pull-right m-t-xs">9 hours ago</div>-->
                                        There are many variations of passages of Lorem Ipsum available.
                                        <div class="small">Completion with: 22%</div>
                                        <div class="small text-muted m-t-xs">Project end: 4:00 pm - 12.06.2014</div>
                                    </a>
                                </li>

                            </ul>

                        </div>

                        <div id="tab-3" class="tab-pane">

                            <div class="sidebar-title">
                                <h3><i class="fa fa-gears"></i> Settings</h3>
                                <small><i class="fa fa-tim"></i> You have 14 projects. 10 not completed.</small>
                            </div>

                            <div class="setings-item">
                                <span>
                                    Show notifications
                                </span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example">
                                        <label class="onoffswitch-label" for="example">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                                    Disable Chat
                                </span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="collapsemenu" checked class="onoffswitch-checkbox" id="example2">
                                        <label class="onoffswitch-label" for="example2">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                                    Enable history
                                </span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example3">
                                        <label class="onoffswitch-label" for="example3">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                                    Show charts
                                </span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example4">
                                        <label class="onoffswitch-label" for="example4">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                                    Offline users
                                </span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" checked name="collapsemenu" class="onoffswitch-checkbox" id="example5">
                                        <label class="onoffswitch-label" for="example5">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                                    Global search
                                </span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" checked name="collapsemenu" class="onoffswitch-checkbox" id="example6">
                                        <label class="onoffswitch-label" for="example6">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                                    Update everyday
                                </span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example7">
                                        <label class="onoffswitch-label" for="example7">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="sidebar-content">
                                <h4>Settings</h4>
                                <div class="small">
                                    I belive that. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                    And typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                                    Over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                                </div>
                            </div>

                        </div>
                    </div>

                </div>



            </div>


        </div>
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


        <script>
            document.getElementById("shorten_url").addEventListener("paste", myFunction);
            function myFunction() {
                myVar = setTimeout(function () {
                    document.getElementById("unAuthShortenForm").submit();
                }, 2000);
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



        <!-- Mainly scripts -->
        <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>" ></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>

        <!-- Flot -->
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.tooltip.min.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.spline.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.resize.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.pie.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.symbol.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.time.js"/>"></script>

        <!-- Custom and plugin javascript -->
        <script src="<c:url value="/resources/js/inspinia.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>

        <!-- Sparkline -->
        <script src="<c:url value="/resources/js/plugins/sparkline/jquery.sparkline.min.js"/>"></script>


        <script>
            $(document).ready(function () {

                var sparklineCharts = function () {
                    $("#sparkline1").sparkline([34, 43, 43, 35, 44, 32, 44, 52], {
                        type: 'line',
                        width: '100%',
                        height: '50',
                        lineColor: '#1ab394',
                        fillColor: "transparent"
                    });

                    $("#sparkline2").sparkline([32, 11, 25, 37, 41, 32, 34, 42], {
                        type: 'line',
                        width: '100%',
                        height: '50',
                        lineColor: '#1ab394',
                        fillColor: "transparent"
                    });

                    $("#sparkline3").sparkline([34, 22, 24, 41, 10, 18, 16, 8], {
                        type: 'line',
                        width: '100%',
                        height: '50',
                        lineColor: '#1C84C6',
                        fillColor: "transparent"
                    });
                };

                var sparkResize;

                $(window).resize(function (e) {
                    clearTimeout(sparkResize);
                    sparkResize = setTimeout(sparklineCharts, 500);
                });

                sparklineCharts();




                var data1 = [
                    [0, 4], [1, 8], [2, 5], [3, 10], [4, 4], [5, 16], [6, 5], [7, 11], [8, 6], [9, 11], [10, 20], [11, 10], [12, 13], [13, 4], [14, 7], [15, 8], [16, 12]
                ];
                var data2 = [
                    [0, 0], [1, 2], [2, 7], [3, 4], [4, 11], [5, 4], [6, 2], [7, 5], [8, 11], [9, 5], [10, 4], [11, 1], [12, 5], [13, 2], [14, 5], [15, 2], [16, 0]
                ];
                $("#flot-dashboard5-chart").length && $.plot($("#flot-dashboard5-chart"), [
                    data1, data2
                ],
                        {
                            series: {
                                lines: {
                                    show: false,
                                    fill: true
                                },
                                splines: {
                                    show: true,
                                    tension: 0.4,
                                    lineWidth: 1,
                                    fill: 0.4
                                },
                                points: {
                                    radius: 0,
                                    show: true
                                },
                                shadowSize: 2
                            },
                            grid: {
                                hoverable: true,
                                clickable: true,

                                borderWidth: 2,
                                color: 'transparent'
                            },
                            colors: ["#1ab394", "#1C84C6"],
                            xaxis: {
                            },
                            yaxis: {
                            },
                            tooltip: false
                        }
                );

            });
        </script>
    </body>

    <!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/dashboard_5.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Oct 2017 15:24:38 GMT -->
</html>
