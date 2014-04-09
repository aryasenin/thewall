<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="ie lt-ie9 lt-ie8 lt-ie7 sidebar sidebar-discover"> <![endif]-->
<!--[if IE 7]>
<html class="ie lt-ie9 lt-ie8 sidebar sidebar-discover"> <![endif]-->
<!--[if IE 8]>
<html class="ie lt-ie9 sidebar sidebar-discover"> <![endif]-->
<!--[if gt IE 8]>
<html class="ie sidebar sidebar-discover"> <![endif]-->
<!--[if !IE]><!-->
<html class="sidebar sidebar-discover"><!-- <![endif]-->
<head>
    <title><g:layoutTitle default="Grails"/></title>

    <!-- Meta -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">

    <g:javascript library="jquery"/>
    <g:layoutHead/>
    <r:layoutResources/>

    <!--
    **********************************************************
    In development, use the LESS files and the less.js compiler
    instead of the minified CSS loaded by default.
    **********************************************************
    <link rel="stylesheet/less" href="../assets/less/admin/module.admin.stylesheet-complete.less" />
    -->

    <!--[if lt IE 9]>
    <link rel="stylesheet"  href="${resource(dir: 'assets/components/library/bootstrap/css/', file: 'bootstrap.min.css')}" /><![endif]-->
    <link rel="stylesheet" href="${resource(dir: 'assets/css/admin/', file: 'module.admin.stylesheet-complete.min.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'thewall.css')}"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <g:javascript>
        jQuery.noConflict();
        // Code that uses other library's $ can follow here.
    </g:javascript>


    <script src="${resource(dir: 'assets/components/plugins/ajaxify/', file: 'script.min.js?v=v1.0.2&sv=v0.0.1')}"></script>


    <script>var App = {};</script>

    <script data-id="App.Scripts">
        App.Scripts = {

            /* CORE scripts always load first; */
            core: [
                '${resource(dir: 'assets/components/library/jquery/', file: 'jquery.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/library/modernizr/', file: 'modernizr.js?v=v1.0.2&sv=v0.0.1')}'
            ],

            /* PLUGINS_DEPENDENCY always load after CORE but before PLUGINS; */
            plugins_dependency: [
                '${resource(dir: 'assets/components/library/bootstrap/js/', file: 'bootstrap.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/library/jquery-ui/js/', file: 'jquery-ui.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/library/jquery/', file: 'jquery-migrate.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/tables/datatables/assets/lib/js/', file: 'jquery.dataTables.min.js?v=v1.0.2&sv=v0.0.1')}'
            ],

            /* PLUGINS always load after CORE and PLUGINS_DEPENDENCY, but before the BUNDLE / initialization scripts; */
            plugins: [
                '${resource(dir: 'assets/components/plugins/nicescroll/', file: 'jquery.nicescroll.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/plugins/breakpoints/', file: 'breakpoints.js?v=v1.0.2&sv=v0.0.1')}',
                %{--'${resource(dir: 'assets/components/plugins/ajaxify/', file: 'davis.min.js?v=v1.0.2&sv=v0.0.1')}',--}%
                %{--'${resource(dir: 'assets/components/plugins/ajaxify/', file: 'jquery.lazyjaxdavis.min.js?v=v1.0.2&sv=v0.0.1')}',--}%
                '${resource(dir: 'assets/components/plugins/preload/pace/', file: 'pace.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/tables/datatables/assets/lib/extras/TableTools/media/js/', file: 'TableTools.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/tables/datatables/assets/lib/extras/ColVis/media/js/', file: 'ColVis.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/tables/datatables/assets/custom/js/', file: 'DT_bootstrap.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/forms/elements/fuelux-checkbox/', file: 'fuelux-checkbox.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/forms/elements/bootstrap-select/assets/lib/js/', file: 'bootstrap-select.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/tables/datatables/assets/lib/extras/FixedHeader/', file: 'FixedHeader.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/tables/datatables/assets/lib/extras/ColReorder/media/js/', file: 'ColReorder.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/plugins/less-js/', file: 'less.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/modules/admin/charts/flot/assets/lib/', file: 'excanvas.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/plugins/browser/ie/', file: 'ie.prototype.polyfill.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/plugins/jquery-ui-touch-punch/', file: 'jquery.ui.touch-punch.min.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/forms/elements/bootstrap-datepicker/assets/lib/js/', file: 'bootstrap-datepicker.js?v=v1.0.2&sv=v0.0.1')}'
            ],

            /* The initialization scripts always load last and are automatically and dynamically loaded when AJAX navigation is enabled; */
            bundle: [
                %{--'${resource(dir: 'assets/components/plugins/ajaxify/', file: 'ajaxify.init.js?v=v1.0.2&sv=v0.0.1')}',--}%
                '${resource(dir: 'assets/components/plugins/preload/pace/', file: 'preload.pace.init.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/core/js/', file: 'animations.init.js?v=v1.0.2')}',
                '${resource(dir: 'assets/components/common/tables/datatables/assets/custom/js/', file: 'datatables.init.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/forms/elements/bootstrap-select/assets/custom/js/', file: 'bootstrap-select.init.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/common/tables/classic/assets/js/', file: 'tables-classic.init.js?v=v1.0.2&sv=v0.0.1')}',
                '${resource(dir: 'assets/components/core/js/', file: 'sidebar.main.init.js?v=v1.0.2')}',
                '${resource(dir: 'assets/components/core/js/', file: 'sidebar.discover.init.js?v=v1.0.2')}',
                '${resource(dir: 'assets/components/core/js/', file: 'core.init.js?v=v1.0.2')}',
                '${resource(dir: 'assets/components/common/forms/elements/bootstrap-datepicker/assets/custom/js/', file: 'bootstrap-datepicker.init.js?v=v1.0.2&sv=v0.0.1')}'
            ]

        };
    </script>

    <script>
        $script(App.Scripts.core, 'core');

        $script.ready(['core'], function () {
            $script(App.Scripts.plugins_dependency, 'plugins_dependency');
        });
        $script.ready(['core', 'plugins_dependency'], function () {
            $script(App.Scripts.plugins, 'plugins');
        });
        $script.ready(['core', 'plugins_dependency', 'plugins'], function () {
            $script(App.Scripts.bundle, 'bundle');
        });
    </script>
    <script>if (/*@cc_on!@*/false && document.documentMode === 10) {
        document.documentElement.className += ' ie ie10';
    }</script>

</head>

<body class="scripts-async">

<!-- Main Container Fluid -->
<div class="container-fluid menu-hidden">

    <!-- Sidebar Menu -->
    <div id="menu" class="hidden-print hidden-xs">
        <g:render template="/common/sidebar"/>
    </div>
    <!-- // Sidebar Menu END -->

    <!-- Content -->
    <div id="content">

        <div class="navbar hidden-print main" role="navigation">
            <div class="user-action user-action-btn-navbar pull-left border-right">
                <button class="btn btn-sm btn-navbar btn-inverse btn-stroke"><i class="fa fa-bars fa-2x"></i></button>
            </div>
            <ul class="main pull-left hidden-xs">
                <li class="dropdown">

                </li>

                <li class="dropdown">

                </li>
                <li class="dropdown active">

                </li>
                <li class="dropdown">

                </li>

            </ul>


            <ul class="main pull-right">
                <li class="dropdown notif notifications hidden-xs">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-bell-fill"></i> <span
                            class="label label-danger">5</span></a>

                    <ul class="dropdown-menu chat media-list pull-right">
                        <li class="media">
                            <a class="pull-left" href="#"><img class="media-object thumb"
                                                               src="${resource(dir: 'assets/images/people/100/', file: '15.jpg')}" alt="50x50"
                                                               width="50"/></a>

                            <div class="media-body">
                                <span class="label label-default pull-right">5 min</span>
                                <h5 class="media-heading">Adrian D.</h5>

                                <p class="margin-none">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            </div>
                        </li>
                        <li class="media">
                            <a class="pull-left" href="#"><img class="media-object thumb"
                                                               src="${resource(dir: 'assets/images/people/100/', file: '16.jpg')}" alt="50x50"
                                                               width="50"/></a>

                            <div class="media-body">
                                <span class="label label-default pull-right">2 days</span>
                                <h5 class="media-heading">Jane B.</h5>

                                <p class="margin-none">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            </div>
                        </li>
                        <li class="media">
                            <a class="pull-left" href="#"><img class="media-object thumb"
                                                               src="${resource(dir: 'assets/images/people/100/', file: '17.jpg')}" alt="50x50"
                                                               width="50"/></a>

                            <div class="media-body">
                                <span class="label label-default pull-right">3 days</span>
                                <h5 class="media-heading">Andrew M.</h5>

                                <p class="margin-none">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            </div>
                        </li>
                        <li><a href="#" class="btn btn-primary"><i
                                class="fa fa-list"></i> <span>View all messages</span></a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown username">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown"><img
                            src="${resource(dir: 'assets/images/people/35/', file: '2.jpg')}"
                            class="img-circle" width="30"/> Bill Jonson
                        <span class="caret"></span></a>

                    <ul class="dropdown-menu pull-right">
                        <li><a href="my_account.html?lang=en" class="glyphicons user"><i></i> Profil</a></li>
                        <li><a href="messages.html?lang=en" class="glyphicons envelope"><i></i>Messages</a></li>
                        <li><a href="login.html?lang=en" class="glyphicons lock no-ajaxify"><i></i>Deconnexion</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- // END navbar -->

        <!-- // Contenu -->

        <g:layoutBody/>

        <!-- // END Contenu -->

    </div>
    <!-- // Content END -->

    <div class="clearfix"></div>
    <!-- // Sidebar menu & content wrapper END -->

    <div id="footer" class="hidden-print">

        <!--  Copyright Line -->
        <div class="copy">&copy; 2014 - <a
                href="#">Westeros</a> - Tout droit réservés. <a
                href="#"
                target="_blank">The Wall</a> - version: v1.0.1</div>
        <!--  End Copyright Line -->

    </div>

    <!-- // Footer END -->

</div>
<!-- // Main Container Fluid END -->


<!-- Global -->
<script data-id="App.Config">
    var basePath = '',
            commonPath = '../assets/',
            rootPath = '../',
            DEV = false,
            componentsPath = '../assets/components/';

    var primaryColor = '#3695d5',
            dangerColor = '#b55151',
            successColor = '#609450',
            infoColor = '#4a8bc2',
            warningColor = '#ab7a4b',
            inverseColor = '#45484d';

    var themerPrimaryColor = primaryColor;

    App.Config = {
        ajaxify_menu_selectors: ['#menu'],
        ajaxify_layout_app: false    };
</script>


<g:javascript library="application"/>
<r:layoutResources/>
</body>
</html>