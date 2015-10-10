<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Flying Parcels</title>

    <link href="{VALUE:PATH}bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="{VALUE:PATH}bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <link href="{VALUE:PATH}dist/css/timeline.css" rel="stylesheet">
    <link href="{VALUE:PATH}dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="{VALUE:PATH}bower_components/morrisjs/morris.css" rel="stylesheet">
    <link href="{VALUE:PATH}bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="{VALUE:PATH}bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="{VALUE:PATH}bower_components/metisMenu/dist/metisMenu.min.js"></script>
    <script src="{VALUE:PATH}bower_components/raphael/raphael-min.js"></script>
    <script src="{VALUE:PATH}dist/js/sb-admin-2.js"></script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Flying Parcels</a>
        </div>
        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-language fa-fw"></i>{VALUE:CURRENT_LANGUAGE} <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="index.php?action=change_language&language=ru">{LOCALE:RU_LANG}</a>
                    </li>
                    <li><a href="index.php?action=change_language&language=en">{LOCALE:EN_LANG}</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> {LOCALE:ALERTS} <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-phone fa-fw"></i> {LOCALE:CALL_ALERT}
                                <span class="pull-right text-muted small">{VALUE:TIME}</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> {LOCALE:NEW_MESSAGE}
                                <span class="pull-right text-muted small">{VALUE:TIME}</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>{LOCALE:ALL_ALERTS}</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>{VALUE:USER_NAME} <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> {LOCALE:USER_PROFILE}</a>
                    </li>
                    <li><a href="#"><i class="fa fa-dollar fa-fw"></i> {LOCALE:BALANCE}:${VALUE:USER_BALANCE}</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="index.php?action=logout"><i class="fa fa-sign-out fa-fw"></i> {LOCALE:USER_LOGOUT}</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="index.html"><i class="fa fa-home fa-fw"></i> {LOCALE:DASHBOARD}</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-plane fa-fw"></i> {LOCALE:PARCELS}<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="index.php?tab=new_label">{LOCALE:NEW_PARCEL}</a>
                            </li>
                            <li>
                                <a href="index.php?tab=my_labels">{LOCALE:MY_PARCELS}</a>
                            </li>
                            <li>
                                <a href="morris.html">{LOCALE:REFUNDS}</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-lightbulb-o fa-fw"></i> {LOCALE:ADMIN}<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="flot.html">{LOCALE:USERS}</a>
                            </li>
                            <li>
                                <a href="morris.html">{LOCALE:SETTINGS}</a>
                            </li>
                            <li>
                                <a href="morris.html">{LOCALE:STATISTICS}</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-shield fa-fw"></i> {LOCALE:SUPPORT}</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-code fa-fw"></i> {LOCALE:FOR_CODERS}</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="page-wrapper">
        {VALUE:CONTENT}
    </div>

</div>
</body>
</html>
