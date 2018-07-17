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
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
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
                                <div class="media-body">
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
                                <div class="media-body ">
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
                                <div class="media-body ">
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
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Maps</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index-2.html">Home</a>
                        </li>
                        <li>
                            <a>Forms</a>
                        </li>
                        <li class="active">
                            <strong>Maps</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Datamaps</h5>

                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <strong>Datamaps</strong>
                            <p>
                                Interactive maps for data visualizations. Bundled into a single Javascript file.
                            </p>
                            <p>
                                Datamaps is intended to provide some data visualizations based on geographical data. It's SVG-based, can scale to any screen size, and includes everything inside of 1 script file. It heavily relies on the amazing D3.js library.
                             Full documentation can be found: <a href="https://github.com/markmarkoh/datamaps" target="_blank">https://github.com/markmarkoh/datamaps</a>
                            </p>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">

                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Basic example</h5>
                        </div>
                        <div class="ibox-content">

                            <div id="basic_map"></div>

                            <pre>
var basic = new Datamap({
    element: document.getElementById("basic_map"),
    responsive: true,
    fills: {
        defaultFill: "#DBDAD6"
    },
    geographyConfig: {
        highlightFillColor: '#1C977A',
        highlightBorderWidth: 0,
    },
}); </pre>

                        </div>
                    </div>
                </div>
                <div class="col-lg-6">

                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>With selected regions</h5>
                        </div>
                        <div class="ibox-content">

                            <div id="selected_map"></div>

                            <pre>
var basic = new Datamap({
    element: document.getElementById("basic_map"),
    ...
    data: {
        USA: { fillKey: "active" },
        RUS: { fillKey: "active" },
        DEU: { fillKey: "active" },
        BRA: { fillKey: "active" }
    }
}); </pre>

                        </div>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-lg-6">

                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>USA scope</h5>
                        </div>
                        <div class="ibox-content">

                            <div id="usa_map"></div>

                            <pre>
var usa_map = new Datamap({
    element: document.getElementById("usa_map"),
    responsive: true,
    scope: 'usa',
    fills: {
        defaultFill: "#DBDAD6"
    },
    geographyConfig: {
        highlightFillColor: '#1C977A',
        highlightBorderWidth: 0,
    },
    ...
}); </pre>

                        </div>
                    </div>
                </div>
                <div class="col-lg-6">

                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Map with arc</h5>
                        </div>
                        <div class="ibox-content">

                            <div id="arc_map"></div>

                            <pre>
var arc_map = new Datamap({
    element: document.getElementById("arc_map"),
    ...
});

arc_map.arc(
[
    { origin: 'USA', destination: 'RUS'},
    { origin: 'USA', destination: 'DEU'},
    { origin: 'USA', destination: 'POL'},
    { origin: 'USA', destination: 'JAP'},
    { origin: 'USA', destination: 'AUS'},
    { origin: 'USA', destination: 'BRA'}
],
{ strokeColor: '#2BA587', strokeWidth: 1}
);</pre>

                        </div>
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
        </div>
        </div>


        <!-- Mainly scripts -->
        <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/metisMenu/jquery.metisMenu.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"/>"></script>

        <!-- Custom and plugin javascript -->
        <script src="<c:url value="/resources/js/inspinia.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/pace/pace.min.js"/>"></script>

        <!-- DataMaps -->
        <script src="<c:url value="/resources/js/plugins/typehead/bootstrap3-typeahead.min.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/d3/d3.min.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/topojson/topojson.js"/>"></script>
        <script src="<c:url value="/resources/js/plugins/datamaps/datamaps.all.min.js"/>"></script>


        <script>
        $(document).ready(function(){

            var basic = new Datamap({
                element: document.getElementById("basic_map"),
                responsive: true,
                fills: {
                    defaultFill: "#DBDAD6"
                },
                geographyConfig: {
                    highlightFillColor: '#1C977A',
                    highlightBorderWidth: 0,
                },
            });

            var selected_map = new Datamap({
                element: document.getElementById("selected_map"),
                responsive: true,
                fills: {
                    defaultFill: "#DBDAD6",
                    active: "#2BA587"
                },
                geographyConfig: {
                    highlightFillColor: '#1C977A',
                    highlightBorderWidth: 0,
                },
                data: {
                    USA: { fillKey: "active" },
                    RUS: { fillKey: "active" },
                    DEU: { fillKey: "active" },
                    BRA: { fillKey: "active" }
                }
            });

            var usa_map = new Datamap({
                element: document.getElementById("usa_map"),
                responsive: true,
                scope: 'usa',
                fills: {
                    defaultFill: "#DBDAD6",
                    active: "#2BA587"
                },
                geographyConfig: {
                    highlightFillColor: '#1C977A',
                    highlightBorderWidth: 0
                },
                data: {
                    NE: { fillKey: "active" },
                    CA: { fillKey: "active" },
                    NY: { fillKey: "active" },
                }
            });

            var arc_map = new Datamap({
                element: document.getElementById("arc_map"),
                responsive: true,
                fills: {
                    defaultFill: "#F2F2F0",
                    active: "#DBDAD6",
                    usa: "#269479"
                },
                geographyConfig: {
                    highlightFillColor: '#1C977A',
                    highlightBorderWidth: 0
                },
                data: {
                    USA: {fillKey: "usa"},
                    RUS: {fillKey: "active"},
                    DEU: {fillKey: "active"},
                    POL: {fillKey: "active"},
                    JAP: {fillKey: "active"},
                    AUS: {fillKey: "active"},
                    BRA: {fillKey: "active"}
                }
            });

            arc_map.arc(
                    [
                        { origin: 'USA', destination: 'RUS'},
                        { origin: 'USA', destination: 'DEU'},
                        { origin: 'USA', destination: 'POL'},
                        { origin: 'USA', destination: 'JAP'},
                        { origin: 'USA', destination: 'AUS'},
                        { origin: 'USA', destination: 'BRA'}
                    ],
                    { strokeColor: '#2BA587', strokeWidth: 1}
            );

            orthographic_map.graticule();

            // Resize map on window resize
            $(window).on('resize', function() {
                setTimeout(function(){
                    basic.resize();
                    selected_map.resize();
                },100)
            });


        });
    </script>

</body>


<!-- Mirrored from webapplayers.com/inspinia_admin-v2.7.1/datamaps.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 04 Oct 2017 15:30:53 GMT -->
</html>
