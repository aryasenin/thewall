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

<h1><g:message code="user.show" default="Consultation User"/></h1>

<div class="innerLR">
<!-- Widget -->
<div class="widget widget-body-white widget-heading-simple">
<g:if test="${flash.message}">
    <!-- Alert -->
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.sucessfully.message" default="Succès : "/></strong> ${flash.message}
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
        <strong><g:message code="default.warning.message" default="Attention : "/></strong> ${flash.warning}
    </div>
    <!-- // Alert END -->
</g:if>

<g:if test="${flash.info}">
    <!-- Alert -->
    <div class="alert alert-primary">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.information.message" default="Informations : "/></strong> ${flash.info}
    </div>
    <!-- // Alert END -->
        </g:if>
<div class="widget">
    <div class="widget-head">
        <h4 class="heading">Informations de User</h4>
    </div>

    <div class="widget-body">

        <div class="row">

            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.username.label" default="Username"/></h5>


                <g:textField name="username" class="form-control" disabled="disabled"
                             value="${userInstance?.username}"/>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.password.label" default="Password"/></h5>


                <g:textField name="password" class="form-control" disabled="disabled"
                             value="${userInstance?.password}"/>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.dateCreated.label" default="Date Created"/></h5>


                <div class="form-control disabled">
                    <g:formatDate date="${userInstance?.dateCreated}" format="dd/MM/yyyy HH:ss"/>
                </div>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.lastUpdated.label" default="Last Updated"/></h5>


                <div class="form-control disabled">
                    <g:formatDate date="${userInstance?.lastUpdated}" format="dd/MM/yyyy HH:ss"/>
                </div>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.userCreated.label" default="User Created"/></h5>


                <g:textField name="userCreated" class="form-control" disabled="disabled"
                             value="${userInstance?.userCreated}"/>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.userUpdated.label" default="User Updated"/></h5>


                <g:textField name="userUpdated" class="form-control" disabled="disabled"
                             value="${userInstance?.userUpdated}"/>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.deleted.label" default="Deleted"/></h5>


                <div class="form-control disabled">
                    <g:message
                            code="user.deleted.${userInstance?.deleted}"/>
                </div>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.accountExpired.label" default="Account Expired"/></h5>


                <div class="form-control disabled">
                    <g:message
                            code="user.accountExpired.${userInstance?.accountExpired}"/>
                </div>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.accountLocked.label" default="Account Locked"/></h5>


                <div class="form-control disabled">
                    <g:message
                            code="user.accountLocked.${userInstance?.accountLocked}"/>
                </div>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.enabled.label" default="Enabled"/></h5>


                <div class="form-control disabled">
                    <g:message
                            code="user.enabled.${userInstance?.enabled}"/>
                </div>

            </div>

            <div class="separator bottom"></div>


            <div class="col-md-6">
                <h5 class="padTop"><g:message
                        code="user.passwordExpired.label" default="Password Expired"/></h5>


                <div class="form-control disabled">
                    <g:message
                            code="user.passwordExpired.${userInstance?.passwordExpired}"/>
                </div>

            </div>

            <div class="separator bottom"></div>

        </div>
    </div>
</div>

</div>
</div>
</div>

</body>
</html>
