<%@ page import="com.westeros.thewall.User" %>
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
    <title><g:message code="user.show" default="Consultation Users"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>
<div class="innerLR">
<h3><g:message code="user.show" default="Consultation User"/></h3>

<g:if test="${flash.message}">
    <!-- Alert -->
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.sucessfully.message"
                           default="Succès : "/></strong> ${flash.message}
    </div>
    <!-- // Alert END -->
</g:if>

<g:if test="${flash.error}">
    <!-- Alert -->
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.error.message" default="Erreur : "/></strong> ${flash.error}
    </div>
    <!-- // Alert END -->
</g:if>

<g:if test="${flash.warning}">
    <!-- Alert -->
    <div class="alert alert-warning">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.warning.message"
                           default="Attention : "/></strong> ${flash.warning}
    </div>
    <!-- // Alert END -->
</g:if>

<g:if test="${flash.info}">
    <!-- Alert -->
    <div class="alert alert-primary">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.information.message"
                           default="Informations : "/></strong> ${flash.info}
    </div>
    <!-- // Alert END -->
</g:if>

<div class="separator-h"></div>

<div class="row">
<!-- Widget -->
<div class="col-md-8">
    <div class="widget">
        <div class="widget-head">
            <h4 class="heading">Informations de User</h4>
        </div>

        <div class="row innerAll">

            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.username.label" default="Username"/>:


                        <span class="text-weight-normal">${userInstance?.username}</span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.password.label" default="Password"/>:


                        <span class="text-weight-normal">${userInstance?.password}</span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.dateCreated.label" default="Date Created"/>:


                        <span class="text-weight-normal"><g:formatDate date="${userInstance?.dateCreated}"
                                                                       format="dd/MM/yyyy HH:ss"/></span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.lastUpdated.label" default="Last Updated"/>:


                        <span class="text-weight-normal"><g:formatDate date="${userInstance?.lastUpdated}"
                                                                       format="dd/MM/yyyy HH:ss"/></span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.userCreated.label" default="User Created"/>:


                        <span class="text-weight-normal">${userInstance?.userCreated}</span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.userUpdated.label" default="User Updated"/>:


                        <span class="text-weight-normal">${userInstance?.userUpdated}</span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.deleted.label" default="Deleted"/>:


                        <span class="text-weight-normal"><g:message
                                code="user.deleted.${userInstance?.deleted}"/></span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.accountExpired.label" default="Account Expired"/>:


                        <span class="text-weight-normal"><g:message
                                code="user.accountExpired.${userInstance?.accountExpired}"/></span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.accountLocked.label" default="Account Locked"/>:


                        <span class="text-weight-normal"><g:message
                                code="user.accountLocked.${userInstance?.accountLocked}"/></span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.enabled.label" default="Enabled"/>:


                        <span class="text-weight-normal"><g:message
                                code="user.enabled.${userInstance?.enabled}"/></span>

                </div>
            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <div class="strong">
                    <p><g:message
                            code="user.passwordExpired.label" default="Password Expired"/>:


                        <span class="text-weight-normal"><g:message
                                code="user.passwordExpired.${userInstance?.passwordExpired}"/></span>

                </div>
            </div>

            <div class="separator bottom"></div>

        </div>
    </div>
</div>

<div class="col-md-4">
    <!-- Widget -->
    <a href="#" class="display-block innerAll  bg-primary text-decoration-none">
        <span class="display-block text-center innerAll half">
            <i class="fa fa-fw fa-4x icon-top-hat text-white"></i>

            <h2 class="strong text-condensed text-white margin-none">Informations importante</h2>

            <p class="lead margin-none strong text-white">Paiement loyer &euro;250 &nbsp; <span
                    class="btn btn-default btn-xs">Details <i class="fa fa-fw fa-caret-right"></i></span></p>
        </span>
    </a>

    <div class="separator bottom"></div>

    <div class="widget">
        <div class="widget-body padding-none">
            <h4 class="innerAll bg-primary text-white margin-bottom-none">Autres actions:</h4>
            <ul class="list-group list-group-1 margin-none borders-none">
                <li class="list-group-item border-top-none"><a href="courses_listing.html?lang=en"><span
                        class="badge pull-right bg-primary ">30</span><i
                        class="fa fa-exclamation-circle"></i>&nbsp; Action 1</a></li>
                <li class="list-group-item"><a href="courses_listing.html?lang=en"><span
                        class="badge pull-right bg-primary ">2</span><i class="fa fa-ticket"></i>&nbsp; Action 2</a>
                </li>
                <li class="list-group-item"><a href="courses_listing.html?lang=en"><i
                        class="fa fa-spinner"></i>&nbsp; Action 3</a></li>
                <li class="list-group-item"><a href="courses_listing.html?lang=en"><i
                        class="fa fa-pencil"></i>&nbsp; Action 4</a></li>
                <li class="list-group-item"><a href="courses_listing.html?lang=en"><i
                        class="icon-folder-fill"></i>&nbsp; Action 5</a></li>
            </ul>
        </div>
    </div>
    <!-- //Widget -->

</div>
<!-- //End Col -->

</div>
</div>

</body>
</html>
