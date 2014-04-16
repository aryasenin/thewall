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
    <title><g:message code="user.create" default="Création Users"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>

<h1><g:message code="user.show" default="Création User"/></h1>

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

        <g:hasErrors bean="${userInstance}">
            <g:eachError bean="${userInstance}" var="error">
                <!-- Alert -->
                <div class="alert alert-danger"
                     <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong><g:message code="default.error.message" default="Erreur : "/></strong> <g:message
                        error="${error}"/>
                </div>
                <!-- // Alert END -->
            </g:eachError>
        </g:hasErrors>

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
                <strong><g:message code="default.information.message"
                                   default="Informations : "/></strong> ${flash.info}
            </div>
            <!-- // Alert END -->
        </g:if>
        <div class="widget">
            <div class="widget-head">
                <h4 class="heading">Informations de User</h4>
            </div>

            <div class="widget-body">

                <div class="row">

                    <g:form action="save">
                        <g:render template="form"/>
                        <div class="separator"></div>
                        <!-- Form actions -->
                        <div class="form-actions">
                            <g:submitButton name="create" class="btn btn-primary"
                                            value="${message(code: 'default.button.create.label', default: 'Créer')}"/>
                            <g:submitButton name="create" class="btn btn-default"
                                            value="${message(code: 'default.button.cancel.label', default: 'Annuler')}"/>
                        </div>
                        <!-- // Form actions END -->
                    </g:form>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>
