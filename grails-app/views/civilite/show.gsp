<%@ page import="com.westeros.thewall.Civilite" %>
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
    <title><g:message code="civilite.show" default="Consultation Civilites"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'civilite.label', default: 'Civilite')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>

<h1><g:message code="civilite.show" default="Consultation Civilite"/></h1>

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
                <strong><g:message code="default.information.message"
                                   default="Informations : "/></strong> ${flash.info}
            </div>
            <!-- // Alert END -->
        </g:if>
        <div class="widget">
            <div class="widget-head">
                <h4 class="heading">Informations de Civilite</h4>
            </div>

            <div class="widget-body">

                <div class="row">

                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.etablissement.label" default="Etablissement"/></h5>


                        <g:link controller="etablissement" action="show"
                                id="${civiliteInstance?.etablissement?.id}">${civiliteInstance?.etablissement?.encodeAsHTML()}</g:link>

                    </div>

                    <div class="separator bottom"></div>


                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.code.label" default="Code"/></h5>


                        <g:textField name="code" class="form-control" disabled="disabled"
                                     value="${civiliteInstance?.code}"/>

                    </div>

                    <div class="separator bottom"></div>


                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.libelle.label" default="Libelle"/></h5>


                        <g:textField name="libelle" class="form-control" disabled="disabled"
                                     value="${civiliteInstance?.libelle}"/>

                    </div>

                    <div class="separator bottom"></div>


                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.libelleReduit.label" default="Libelle Reduit"/></h5>


                        <g:textField name="libelleReduit" class="form-control" disabled="disabled"
                                     value="${civiliteInstance?.libelleReduit}"/>

                    </div>

                    <div class="separator bottom"></div>


                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.deleted.label" default="Deleted"/></h5>


                        <div class="form-control disabled">
                            <g:message
                                    code="civilite.deleted.${civiliteInstance?.deleted}"/>
                        </div>

                    </div>

                    <div class="separator bottom"></div>


                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.dateCreated.label" default="Date Created"/></h5>


                        <div class="form-control disabled">
                            <g:formatDate date="${civiliteInstance?.dateCreated}" format="dd/MM/yyyy HH:ss"/>
                        </div>

                    </div>

                    <div class="separator bottom"></div>


                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.lastUpdated.label" default="Last Updated"/></h5>


                        <div class="form-control disabled">
                            <g:formatDate date="${civiliteInstance?.lastUpdated}" format="dd/MM/yyyy HH:ss"/>
                        </div>

                    </div>

                    <div class="separator bottom"></div>


                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.userCreate.label" default="User Create"/></h5>


                        <g:textField name="userCreate" class="form-control" disabled="disabled"
                                     value="${civiliteInstance?.userCreate}"/>

                    </div>

                    <div class="separator bottom"></div>


                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="civilite.userUpdate.label" default="User Update"/></h5>


                        <g:textField name="userUpdate" class="form-control" disabled="disabled"
                                     value="${civiliteInstance?.userUpdate}"/>

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
